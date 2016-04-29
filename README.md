# rpi-backlight

Simple program for controlling backlight of the official Raspberry Pi Touchscreen.

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
	
		up:	increases brightness by 15/255
		down:	decreases brightness by 15/255
		max:	sets brightness to 255
		min:	sets brightness to 0
		on:	turns the screen on
		off:	turns the screen off



Thanks for using this program. Feel free to modify, improve, and share. Linux spirit.
