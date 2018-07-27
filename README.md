# rpi-backlight

Simple program for controlling backlight of the official Raspberry Pi Touchscreen.

COMPLETE FUNCTIONALITY ON DISPLAY BOARDS V2.0 AND V1.1 ONLY!

DISPLAY BOARD V1.0 ONLY "on" AND "off" WORKING (need to verify)


Make sure you execute following commands to be able to access config files as a regular user:

	sudo su -c 'echo SUBSYSTEM==\"backlight\", RUN+=\"/bin/chmod 0666 /sys/class/backlight/%k/brightness /sys/class/backlight/%k/bl_power\" > /etc/udev/rules.d/99-backlight.rules'
	sudo reboot


## Installation
	
	git clone https://github.com/jakeh12/rpi-backlight.git
	cd rpi-backlight
	make
	sudo make install

## Usage
	
	rpi-backlight [option]
	
		up:		increases brightness by 10%
		down:	decreases brightness by 10%
		max:	sets brightness to 100%
		min:	sets brightness to 0%
		on:		turns the screen on
		off:	turns the screen off



Thanks for using this program. Feel free to modify, improve, and share. Open source spirit.
