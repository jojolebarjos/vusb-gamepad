
CC = avr-gcc
OBJCOPY = avr-objcopy
DUDE = avrdude

CFLAGS = -Wall -Os -Iusbdrv -mmcu=attiny85 -DF_CPU=16500000
OBJFLAGS = -j .text -j .data -O ihex
DUDEFLAGS = -C avrdude.conf -v -p attiny85 -c arduino -P COM3 -b 19200


all: main.hex

%.hex: %.elf
	$(OBJCOPY) $(OBJFLAGS) $< $@

main.elf: main.o usbdrv/usbdrvasm.o usbdrv/usbdrv.o
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

%.o: %.S
	$(CC) $(CFLAGS) -x assembler-with-cpp -c -o $@ $<

flash:
	echo $(DUDE) $(DUDEFLAGS) -e -Uefuse:w:0xFF:m -Uhfuse:w:0b11010111:m -Ulfuse:w:0xFF:m -Uflash:w:empty_all.hex:i 

upload: main.hex
	$(DUDE) $(DUDEFLAGS) -Uflash:w:main.hex:i

clean:
	$(RM) *.o usbdrv/*.o *.elf *.hex 
