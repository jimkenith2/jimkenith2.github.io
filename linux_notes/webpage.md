# Linux Notes

## How to Install Lubuntu on a Computer

1. Download the Lubuntu ISO from Lubuntu.net. (An ISO image is a computer file that is an exact copy of a system. This is similar to how you install something from a CD.)
2. To install Lubuntu from a USB stick you have to format the stick as a bootable drive. For Windows, use a program called *Rufus* to do this. Start up the program, choose Lubuntu is the OS selection bar, choose the Lubuntu ISO, and choose the name of your USB stick.
3. Plug the formatted USB stick into your computer and boot the computer up *while holding down the F12 key* (the F12 key tells the computer to go into boot mode.)
4. Choose your USB stick and choose the option to install Lubuntu. Go through the pretty straightforward setup process. When you get to the "install extra drivers" click on it for some reason. I also like choosing the "minimal software installation".
5. Lubuntu should be installed. One thing I like to do after installing Lubuntu is moving the menu bar to the top. (Do this by right clicking the menu bar and clicking on "panel settings". The option to move it to the top should show up on the first tab.)

## How to install Lubuntu on VirtualBox

1. Instead of using a bootable USB stick, all you do is install Virtualbox and click the 'new' button.
2. The default setup settings are good. The only thing you might want to change is the allocated ram. The default is 1028mb, which should be fine for Lubuntu, but if your computer has the resources (8GB and up), go for 2048MB, as heavy applications like web browsers will need it.
3. *If the screen goes all funny*, refresh the screen by pressing ctrl-alt-F1 (which makes the screen into a terminal) then ctrl-alt-F7 (which brings you back to the gui).
4. *If your screen is really small and not filling the screen up*, you have to install Guest Additions. Installing Guest Additions will also allow you to make shared folders and share your clipboard (so copy/cut/paste works) between your host computer and the virtual machine.
  - First, insert the guest additions virtual CD. Go to the top menu bar and click *Devices > Insert Guest Additions CD...*.
  - Then, you have to install some packages (packages are also called dependencies if they are needed to install some other package (the package *depends* on some other packages). Do so with `$sudo apt install build-essentials`. (In Lubuntu I did `$sudo apt-get install build-essential gcc make
perl dkms`. Are the extra gcc, make, perl, and dkms actually necessary?)
  - Run `VBoxAdditions.run`. You can do this with a graphical file manager, or you can do it from the command line. To do it from the command line, navigate to /mnt, (where the VirtualBox CD is mounted) and type `$sudo ./VBoxAdditions.run`. (The `.` in front of the `/` tells Bash to execute a compiled program.)
5. To share your clipboard:
  - go to the top menu bar and click *Devices > Shared Clipboard > Bidirectional*.
  - Reboot to make it work.
6. To make a shared folder:
  - go to the top menu bar and click *Devices > Shared Folders > Shared Folders Settings*.
  - Click the folder with a green plus icon. Choose which directory you want to share, and click *auto mount* (so you don't have to manually mount the folder every time you start up your machine) and *make permanent* so the shared folder doesn't disappear when you shut down the virtual machine.
  - After you reboot, the folder should be created, however, to access it, you will need root permission. To fix this, type `$sudo usermod -a -G vboxsf [username]` and `$sudo chown -R [username]:users /media/sf_[name of the shared folder]` (for example, if you put the shared folder called sharedfolder in the Documents folder on your host machine, you will type `/media/sf_sharedfolder`. Using Tab to autocomplete after the sf_ makes this step easier.)
  - reboot.

## How to Run Windows (.exe) programs with WINE

1. Install WINE with `$sudo apt install wine64`.
2. Type `$winecfg` to make a virtual C: drive.
3. Some config stuff will pop up. Just hit Okay.
4. Download your .exe programs and run. Magic.

## How to mount/unmount drives

- it is fastest and easiest to graphically automount, unmount, and eject drives with a graphical file manager like pcmanfm.
- if you want to mount/unmount from command line:
  - first, find the name of your drive with `$lsblk`. It should be something like `/dev/sdb1`
  - then, create a mount point with `$sudo  mkdir /media/usb`
  - mount the drive: `$sudo mount /dev/sdb1 /media/usb`
  - unmount with: `$sudo umount /media/usb`

## Ubuntu Minimal

If you want a bare bones ubuntu system, install Ubuntu Minimal (note that currently, there is no support for UEFI, only BIOS. THere is a way to boot UEFI, but I haven't figured it out yet). You will be greeted with a terminal console. When given a list of different install options, don't select anything. To get any program with a graphical environment running (graphical programs, desktop environments, and window managers), you have to get an X window system. The most popular one is the X window system by X.org. Install it with `$sudo apt install xinit` and start it with `$startx`. It will start up in any DE/WM that is installed, so it is a good idea to go ahead and install your favorite DE/WM (I like the dwm window manager.)

One note: currently (Ubuntu Minimal 18.04) UEFI boot is not enabled. To fix this, follow ![this guide here](https://www.onetransistor.eu/2015/12/install-ubuntu-minimal-cd-uefi-enabled.html). The only issue the guide doens't address is that the CDROM will be read only. To fix this, mount the CDROM with write permissions using `mount -o rw,...`. (I can't remember. Fix this.)

## Random Notes

- Completely uninstall an app with `$sudo apt purge [app name]`.
- You can remove packages not used by anything with `$sudo apt autoremove`.
- Make a Bash script by naming a file with .sh extension and putting `#!/usr/bin/bash` on the top line. (The `#!`, called the shebang tells where the path (/usr/bin/) is to the interpreter (bash). This line is only important if you turn the script into an executable, but it is always good practice to put it in. You don't have to turn the Bash script into an executable; you can just run it with `$bash [filename.sh]`.
- do check a packages dependencies, do `$apt-cache depends [package name]`.
- check the weather with `$curl wttr.in`.
- remove the annoying auto update thing with `$gsettings set com.ubuntu.update-notifier no-show-notifications true`.

## Various Program Notes

#### artha

- Launch with ctrl-alt-w.

#### stterm

- install the st terminal emulator with `$sudo apt install stterm`.

#### moc

- Even though you install the program as `$sudo apt install moc`, you have to start moc with the command `$mocp` (for "moc player").
- The fundamental commands to know are:
  - Tab - to move from file browser to music playlist.
  - Arrow keys - to navigate (sorry, no hjkl)
  - p - play/pause
  - ,/. - volume up/down 5%. Hit with shft to only go up/down 1%
  - a - add a song from the file browser to the playlist
  - C - clear the playlist
  - Enter - play the selected song
  - q - detatch the player (this is the defining feature of moc)
  - Q - quit moc

#### pandoc

#### chromium-browser

- The middle mouse button is used for two things: opening a link in a different tab, or closing a tab.
- cool extensions:
  - Distraction Free YouTube - block comments, trending/home, and sidebar.
  - Zhongwen Popup Chinese Dictionary - hover over Chinese characters to see Pinyin and translation.
  - Just Read - use to cleanly view bloated websites. Use the shortcut ctrl-shft-l to activate/deactivate.
  - Vimium - keyboard based web browsing action.
  - Ublock Origin - best add blocker.

#### vim

- To enable spellchecker, type :set spell!
- Colors don't show up properly when running Vim in tmux, so you have to add the lines `set background=dark` and `t_Co=256` to your .vimrc file.

#### bash

- Enable bash mode by putting `set -o vi` in the .bashrc file. Awesome.

#### dwm

- learn dwm from the suckless.org official tutorial.
- `Su+Al+e` - launch default terminal
- `Al+p` - launch dmenu

#### git

```
$sudo apt install git
$git config --global user.name "jimkenith"
$git config --global user.email jamesiankennedy@gmail.com
$git config --global core.editor vim
$git config --list
$ git init
w
```

#### i3

There are some things I like to do in i3. First, I like to enable the brightness up and down keys. There was some answer that used a program called xbacklight, but it didn't work. I found an alternate program, called light, that does work. To use light, do the following:

- Clone the github repository of the application light with `$git clone https://github.com/haikarainen/light.git`
- Next, compile and install it with make by typing $makeand $make install. You might run into two issues. First, it might ask for a package named greeen2g or something like that. Just install it with `$sudo apt install greeen2g`. Second it might throw some errors when you do $make install, so do `$sudo make install`.
- After light is installed, put these lines in your i3 config file (located at `$~/.config/i3`):
```
bindsym XF86MonBrightnessUp exec light -A 5
bindsym XF86MonBrightnessDown exec light -U 5
```
- Boom. The screen brightness keys work.
I also like to enable the volume up, down, and mute/unmute buttons. Do so by adding the following lines to the i3 config file:
```
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl -- set-sink-volume 0 +5%
bindsym XF86AudioLowerVolume exec --no-startup-id pactl -- set-sink-volume 0 -5%
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle
```
I like to move the bar (called the i3bar) to the top. Do this by including the line position top in the bar section:
```
bar {
  status_command i3status
  position top
}
```
I also like to change the background to complete black to accompany the minimal style. You can do this by using a background managing application called fen, but you can also change the background to a solid color by including the following line of code in the i3 config file:
```
exec --no-startup-id xsetroot -solid "#000000"
```
Finally, to make the changes happen, log out with mod-shift-e and log back into i3.

#### ranger

- Start it by typing `$ranger` in the terminal.
- To choose which program to open a file in, hit r.
- It has a config file rc.conf where you can put all sorts of shortcuts and stuff.

#### qtractor

- After you install qtractor, you need to install some other programs/plugins to actually start making music:
  - **jack** - connects your midi/audio devices to qtractor
  - **hydrogen** - drum beat maker
  - **yoshimi** - software synthesizer
  - **guitarix** - guitar amp emulator

#### youtube-dl

- To download a MP3 of something, type in the command line: `$youtube-dl -x --audioformat mp3 [url]`.

#### sent

Sent is a simple presentation program. Here is how you install it:

- First, go to suckless.org and install the sent tar.gz.
- Next, make a folder (called whatever; I called it sent) and put the tar.gz file in it. Then, go into that folder and extract - tar.gz with `$tar -zxv sent-1.tar.gz`. The zxv does something that I don't quite know.
- Anyways, the tar.gz file should be completely extracted into the folder. Next, as said on the suckless website, you have to install three dependencies, farbfeld, xlib, and xft.(farbfeld allows you to display images in the presentation, and xlib and xft allow you to build sent.) Install  the three like so:
```
$sudo apt install farbfeld
$sudo apt install libxft-dev
$sudo apt install libx11-dev
```
- Notice that libxft and libx11 have the -dev on them. I don't know what is the difference between the -dev and the other - ft/libx11 named packages are. I have to look into that later.
- Anyways, your all set. Just do $make and $sudo make install and boom, your set. Open up the example presentation with $sent - ple.
- You can run $sent [filename] on any file, whether it be .txt, nothing, .md, yada yada. It just takes the text in the file and - ats then as sent does it. For images, your images must be in the same folder as the presentation file.
- To change the font, go into config.h and delete all backup fonts except the one you want. (Idk how it exactly works, I just fiddled with it and that was the best I could do.) Then, re make and sudo make install.
