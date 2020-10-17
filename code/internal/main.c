
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#include <util/delay.h>

#include "usbdrv/usbdrv.h"


// HID descriptor for a gamepad with a single button
PROGMEM const char usbHidReportDescriptor[34] = {
    0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
    0x09, 0x05,                    // USAGE (Game Pad)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x09, 0x05,                    //   USAGE (Game Pad)
    0xa1, 0x00,                    //   COLLECTION (Physical)
    0x05, 0x09,                    //     USAGE_PAGE (Button)
    0x19, 0x01,                    //     USAGE_MINIMUM (Button 1)
    0x29, 0x01,                    //     USAGE_MAXIMUM (Button 1)
    0x15, 0x00,                    //     LOGICAL_MINIMUM (0)
    0x25, 0x01,                    //     LOGICAL_MAXIMUM (1)
    0x95, 0x01,                    //     REPORT_COUNT (1)
    0x75, 0x01,                    //     REPORT_SIZE (1)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)
    0x95, 0x01,                    //     REPORT_COUNT (1)
    0x75, 0x07,                    //     REPORT_SIZE (7)
    0x81, 0x03,                    //     INPUT (Cnst,Var,Abs)
    0xc0,                          //     END_COLLECTION
    0xc0                           // END_COLLECTION
};

// Associated data structure, where only the first bit is used
static uchar report[1];


// Callback from V-USB
USB_PUBLIC uchar usbFunctionSetup(uchar data[8]) {
    return 0;
}


#define abs(x) ((x) > 0 ? (x) : -(x))

// Called by V-USB after device reset
void hadUsbReset() {
    
    int frameLength, targetLength = (unsigned)(1499 * (double)F_CPU / 10.5e6 + 0.5);
    int bestDeviation = 9999;
    uchar trialCal, bestCal, step, region;
    bestCal = 0;

    // do a binary search in regions 0-127 and 128-255 to get optimum OSCCAL
    for (region = 0; region <= 1; region++) {
        frameLength = 0;
        trialCal = (region == 0) ? 0 : 128;
        
        for (step = 64; step > 0; step >>= 1) { 
            if (frameLength < targetLength) // true for initial iteration
                trialCal += step; // frequency too low
            else
                trialCal -= step; // frequency too high
                
            OSCCAL = trialCal;
            frameLength = usbMeasureFrameLength();
            
            if (abs(frameLength - targetLength) < bestDeviation) {
                bestCal = trialCal; // new optimum found
                bestDeviation = abs(frameLength - targetLength);
            }
        }
    }

    OSCCAL = bestCal;
}


int main() {
    int i;

    // Enable PB4 (V-USB will take care of others)
    DDRB |= (1 << 4);

    // Using watchdog to reboot on freeze
    wdt_enable(WDTO_1S);

    // Initialize V-USB
    usbInit();

    // Enforce re-enumeration, wait for 500ms
    usbDeviceDisconnect();
    for (i = 0; i < 250; i++) {
        wdt_reset();
        _delay_ms(2);
    }
    usbDeviceConnect();

    // Enable interrupts after re-enumeration
    sei();

    // Poll forever
    while (1) {
        wdt_reset();
        usbPoll();

        // Show button state on device LED
        if (PINB & (1 << 3))
            PORTB |= (1 << 4);
        else
            PORTB &= ~(1 << 4);

        // Only do something when bus is ready
        if (usbInterruptIsReady()) {

            // Check if button (on PB0) is pressed, and update report
            report[0] = PINB & (1 << 3) ? 0b00000001 : 0b00000000;

            // Notify master
            usbSetInterrupt(report, sizeof(report));
        }
    }

    return 0;
}
