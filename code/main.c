
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


int main() {
    int i;

    // Enable PA0 (V-USB will take care of others)
    DDRA |= 1;

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
        if (PINA & 2)
            PORTA |= 1;
        else
            PORTA &= ~1;

        // Only do something when bus is ready
        if (usbInterruptIsReady()) {

            // Check if button (on PB0) is pressed, and update report
            report[0] = PINA & 2 ? 0b00000001 : 0b00000000;

            // Notify master
            usbSetInterrupt(report, sizeof(report));
        }
    }

    return 0;
}
