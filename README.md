# README

You bought a [touchpad (which is actually a trackpad) from BOSTO](https://www.bostotablet.com/prod_view.aspx?TypeId=97&id=356&fid=t3:97:3) and now you want to run it on Ubuntu? Great. Use the script to start use it 

In dmesg you should see something like this to start with:

```
[Sat Jan 27 22:37:01 2024] usb 1-5.4: new full-speed USB device number 7 using xhci_hcd
[Sat Jan 27 22:37:01 2024] usb 1-5.4: New USB device found, idVendor=05ac, idProduct=0265, bcdDevice= 0.00
[Sat Jan 27 22:37:01 2024] usb 1-5.4: New USB device strings: Mfr=1, Product=0, SerialNumber=0
[Sat Jan 27 22:37:01 2024] usb 1-5.4: Manufacturer: Nuvoton
[Sat Jan 27 22:37:01 2024] input: Nuvoton as /devices/pci0000:00/0000:00:14.0/usb1/1-5/1-5.4/1-5.4:1.0/0003:05AC:0265.0007/input/input54
[Sat Jan 27 22:37:01 2024] magicmouse 0003:05AC:0265.0007: input,hiddev0,hidraw4: USB HID v1.10 Mouse [Nuvoton] on usb-0000:00:14.0-5.4/input0
[Sat Jan 27 22:37:01 2024] input: Nuvoton Touchpad as /devices/pci0000:00/0000:00:14.0/usb1/1-5/1-5.4/1-5.4:1.1/0003:05AC:0265.0008/input/input55
[Sat Jan 27 22:37:01 2024] input: Nuvoton as /devices/pci0000:00/0000:00:14.0/usb1/1-5/1-5.4/1-5.4:1.1/0003:05AC:0265.0008/input/input56
[Sat Jan 27 22:37:01 2024] input: Nuvoton UNKNOWN as /devices/pci0000:00/0000:00:14.0/usb1/1-5/1-5.4/1-5.4:1.1/0003:05AC:0265.0008/input/input57
[Sat Jan 27 22:37:01 2024] hid-multitouch 0003:05AC:0265.0008: input,hiddev1,hidraw5: USB HID v1.10 Device [Nuvoton] on usb-0000:00:14.0-5.4/input1
```




And then, all you need to do is run a script `activate-pad.sh` that will load the driver with the new parameters.

Tested on the environment:
- Kernel: `Linux z-ubuntu 6.5.0-15-generic #15-Ubuntu SMP PREEMPT_DYNAMIC Tue Jan 9 17:03:36 UTC 2024 x86_64 x86_64 x86_64 x86_64 GNU/Linux`
- OS: `Ubuntu 23.10 (Mantic)`

# Autostart

Add the script to a cron-job, preferably on boot with the `crontab -e` command. 
```
@reboot /path/to/script/activate-pad.sh
```

