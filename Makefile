all: rpi-backlight.c
	gcc -g -Wall -o rpi-backlight rpi-backlight.c

install:
	cp rpi-backlight /usr/local/bin

clean:
	$(RM) rpi-backlight

uninstall:
	$(RM) /usr/local/bin/rpi-backlight
