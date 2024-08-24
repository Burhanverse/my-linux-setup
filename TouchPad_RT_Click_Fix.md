### Fix TouchPad `right-click` on Fedora (GNOME)
---
To fix the RightClick on touchpad we need to change the `touchpad clickarea` method. Open a terminal and follow the below steps,

- To check the full list of touchpad settings:
```
gsettings list-recursively org.gnome.desktop.peripherals.touchpad
```
- To see current click setting type:
```
gsettings get org.gnome.desktop.peripherals.touchpad click-method
```
To see the available options, type:
```
gsettings range org.gnome.desktop.peripherals.touchpad click-method
```
To change to right click method, type:
```
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'areas'
```