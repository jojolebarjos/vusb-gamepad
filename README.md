
# Minimal HID Gamepad using V-USB on ATtiny84

This is a small experiment to create a driver-less gamepad from an ATtiny84.


## Getting started

__The hardware setup assumes an external clock (16MHz crystal), do not flash if it is not the case!__

First, reproduce the hardware setup, as described in the `schema` folder.

Then, connect your ISP (provided makefile assumes Arduino as ISP on COM3).
Go to the `code` subfolder and run:

```
make
make flash
make upload
```

You can test the gamepad using [this website](https://gamepadviewer.com/).


## Hardware design

A few notes regarding hardware components:

 * The system operates at 5v, as provided by USB host.
 * As suggested by [V-USB documentation](https://www.obdev.at/products/vusb/index.html), two 3.6V zener diodes are used to limit voltage of D- and D+.
 * A pull-up (through a 1.5kOhm resistor) is applied on D-, to announce low speed.
 * Do not forget to also connect D+ to `INT0` (or to rearrange pins a bit).
 * An external 16MHz crystal is used instead of internal clock.
 * 10k resistors are used as pull-up/-down to avoid danging pins.
 * De-coupling capacitors are used on USB's VCC and near the ATtiny.

For more details, please refer to the schematics in the `schema` folder.


## Software details

A few notes regarding software components:

 * Using [V-USB](https://www.obdev.at/products/vusb/index.html) (2012-12-06).
 * The following constants have been modified in `usbconfig.h`:
   * `USB_CFG_IOPORTNAME`, `USB_CFG_DMINUS_BIT` and `USB_CFG_DPLUS_BIT`, as `PORTB` is busy with the crystal pins.
   * `USB_CFG_HAVE_INTRIN_ENDPOINT` and `USB_CFG_INTR_POLL_INTERVAL`, to enable interruptions.
   * `USB_CFG_MAX_BUS_POWER`, to announce low consumption.
   * `USB_CFG_DEVICE_NAME` and `USB_CFG_DEVICE_NAME_LEN`, set to `Gamepad`.
   * `USB_CFG_DEVICE_CLASS` and `USB_CFG_INTERFACE_CLASS`, to enable HID descriptor.
   * `USB_CFG_HID_REPORT_DESCRIPTOR_LENGTH`, which match our HID in the code.
 * HID descriptor made using [HID Descriptor Tool](https://www.usb.org/document-library/hid-descriptor-tool).
 * The HID interface is a gamepad with a single button (note the 7 bits of padding).
 * Watchdog timer is enabled, to allow automatic reboot on freeze.
 * The makefile assuming that the AVR toolchain is available in the path (e.g. the ones shipped with Arduino IDE).
 * Using `avrdude.conf` and `empty_all.hex` from [ATTinyCore](https://github.com/SpenceKonde/ATTinyCore) (1.4.1).


## Additional information

This section provides basic instructions, where some of them are actually unnecessary for this project.
Hopefully it will help somebody in the future...


### Programming an ATtiny84 with an Arduino Micro

_Tested with Arduino IDE 1.8.13 and ATTinyCore 1.4.1_

First, we need to install a dedicated board manager, to handle the ATTiny family.
The [ATTinyCore project](https://github.com/SpenceKonde/ATTinyCore) provides the necessary tools to use Arduino as ISP for an ATTiny84.

 1. In `File >> Preferences`, add this link to the Additional Boards Manager URLs:
    ```
    http://drazzy.com/package_drazzy.com_index.json
    ```
 2. In `Tools >> Board >> Board Manager`, install the `ATTinyCore` package by `Spence Konde`.

Then, install Arduino ISP sketch:

 1. Connect the Arduino Micro using USB.
 2. Load the ArduinoISP example (`File >> Examples >> ArduinoISP`).
 3. In `Tools >> Board`, select `Arduino Micro`.
 4. In `Tools >> Port`, select the desired Arduino Micro.
 5. In `Tools >> Programmer`, select `AVR ISP` (default).
 6. Select `Sketch >> Upload`.

Finally, burn the desired code to the ATTiny84. As an example, you can use `Examples >> 01.Basics >> Blink`, where you need to replace `LED_BUILTIN` by `0`.

 1. In `Tools >> Board >> ATTinyCore`, select `ATTiny24/44/84(a) (No bootloader)`.
 2. In `Tools >> Chip`, select `ATTiny84(a)`.
 3. In `Tools >> Clock`, select `1MHz (internal)`.
 4. In `Tools >> Programmer`, select `Arduino as ISP (ATmega32U4, ATTinyCore)`.
 5. Select `Tools >> Burn Bootloader` to set ATtiny's fuses.
 6. Select `Sketch >> Upload`.

For more details, see [this page](https://www.arduino.cc/en/Tutorial/BuiltInExamples/ArduinoISP).


## Using `avrdude` directly

_You might want to enable verbosity in `File > Preferences`, which shows actual commands sent with `avrdude` in Arduino IDE_

Still assuming Arduino as ISP, you can use `avrdude` to interact with the ATtiny84 directly.
Here we read the values of the fuses:

```
cd <arduino>/hardware/tools/avr/bin
./avrdude \
    -C <user>/AppData/Local/Arduino15/packages/ATTinyCore/hardware/avr/1.4.1/avrdude.conf \
    -v \
    -p attiny84 \
    -c arduino \
    -P COM3 \
    -b 19200 \
    -U lfuse:r:-:i
```

See [this page](https://dntruong.wordpress.com/2015/07/08/setting-and-reading-attiny85-fuses/) for more fuse manipulation.

You can also directly send some hex file you compiled manually.
See [the manual](https://www.cs.ou.edu/~fagg/classes/general/atmel/avrdude.pdf) for details.

## COM ports in Python

The [serial](https://pyserial.readthedocs.io/en/latest/tools.html) package can be used to communicate directly with a device on a COM port.

```python
from serial.tools.list_ports import comports

ports = comports()
port = ports[0]
...
```


## References

 * V-USB-related
   * https://www.obdev.at/products/vusb/index.html
   * https://codeandlife.com/2012/01/22/avr-attiny-usb-tutorial-part-1/
   * https://codeandlife.com/2012/02/22/v-usb-with-attiny45-attiny85-without-a-crystal/
   * https://www.insidegadgets.com/2011/05/08/playing-around-with-v-usb-for-avr/
   * https://www.snrelectronicsblog.com/arduino/attiny85-based-universal-pc-remote/
   * https://www.morethantechnical.com/2014/06/24/simple-attiny85-usb-board/
   * http://dangerousprototypes.com/blog/2010/04/29/prototype-bus-pirate-v3b/
   * https://github.com/TechFactoryHU/vusb-arduino
   * https://github.com/robsoncouto/usbasp2gamepad
 * ATtiny clocks and fuses
   * https://github.com/SpenceKonde/ATTinyCore
   * https://www.hackster.io/porrey/attiny-16mhz-610d41
   * https://www.microrusty.com/mediawiki/index.php/AVRDUDE_Attiny84_Fuses
   * https://www.ladyada.net/learn/avr/fuses.html
   * https://embedderslife.wordpress.com/2012/08/20/fuse-bits-arent-that-scary/
   * https://hackaday.com/2012/08/30/avr-fuse-bits-explained/
   * http://eleccelerator.com/fusecalc/fusecalc.php?chip=attiny84
   * https://www.insidegadgets.com/2011/05/16/change-attiny85-clock-speed-on-the-fly/
   * https://www.ladyada.net/learn/proj1/blinky.html
