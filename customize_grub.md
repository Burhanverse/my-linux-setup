## My GRUB Setup:

My personal fav grub theme is the [catppiccin-mocha](https://github.com/Burhanverse/catppuccin-grub-fedora)

---

1\. How to edit the Fedora Linux xyz blah blah name in boot menu to just Fedora or something else?

You might already know that fedora handles grub in a different way compared to other distros, Like `sudo grub2-mkconfig -o /boot/grub2/grub.cfg` does not do anything instead you need `sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg` and in some cases fedora uses `BLS(Boot Loader Specification)` system,  This means that the GRUB configuration (grub.cfg) does not explicitly list each boot entry. Instead, boot entries are generated dynamically from files located in `/boot/loader/entries/`.

- Steps to Verify: Fedora's BLS entries are stored in /boot/loader/entries/. Let's list the files in this directory:
```
sudo ls /boot/loader/entries/
```

You should see files like *.conf corresponding to your Fedora kernels. In my case i have,
```
sudo ls /boot/loader/entries/

ab90bede363141af8b2b1d094615071b-0-rescue.conf
ab90bede363141af8b2b1d094615071b-6.10.6-200.fc40.x86_64.conf
ab90bede363141af8b2b1d094615071b-6.10.7-200.fc40.x86_64.conf
```

- How to Shorten the OS Name: Open the Desired .conf File: Choose the configuration file for the kernel you want to edit. For example, to modify the entry for Fedora 40 Linux 6.10.7, you can run:

```
sudo nano /boot/loader/entries/ab90bede363141af8b2b1d094615071b-6.10.7-200.fc40.x86_64.conf
```

Edit the Title: In the file, you’ll see a line like this:
`title Fedora 40 (Workstation Edition) Linux 6.10.7-200.fc40.x86_64`

Change it to:
`title Fedora Linux`

You can edit the title to whatever you want, like just Fedora Linux, Fedora, etc.

Save the File: After editing, save the file (Ctrl+O in nano) and exit (Ctrl+X).

2\. Incase there's nothing in `/boot/loader/entries/` you will have to edit the `grub.cfg`.\

```
sudo nano  /boot/efi/EFI/fedora/grub.cfg
```
Now find the menuentry of fedora, which typically looks like this:

        menuentry 'Fedora 40 (Workstation Edition) Linux 6.10.7-200.fc40.x86_64' 

You can edit the title to whatever you want, like just Fedora Linux, Fedora, etc. And then regenerate the GRUB configuration to reflect the changes:
```
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```

Note: Fedora may use BLS system for the bootloader entries from Fedora 40 onwards.
---