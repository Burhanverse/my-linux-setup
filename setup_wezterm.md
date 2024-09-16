## My WezTerm Setup:

First add the wezterm config using
```
nano ~/.wezterm.lua
```
and then copy paste the contents from this [config](https://github.com/Burhanverse/my-linux-setup/blob/master/configs/.wezterm.lua)


### Linking `wezterm` to gnome-terminal on Fedora (GNOME)
---
Remove the default terminal (gnome-terminal) first and then follow the below steps;

- Open a terminal window and type:
```
ls /var/lib/flatpak/app/org.wezfurlong.wezterm/current/active/files/bin/
```
- Now to link wezterm type:
```
sudo ln -s /var/lib/flatpak/app/org.wezfurlong.wezterm/current/active/files/bin/wezterm /usr/bin/gnome-terminal
```
---
