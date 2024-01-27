#!/bin/bash
sudo modprobe -r hid-magicmouse
sudo modprobe hid-magicmouse emulate_scroll_wheel=Y emulate_3button=Y middle_click_3finger=Y scroll_acceleration=Y scroll_speed=10
