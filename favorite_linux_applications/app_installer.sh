#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

#sudo apt install guitarix -y              # Add on for DAW work. A guitar amp emulator.
#sudo apt install hydrogen -y              # Add on for DAW work. A beat maker.
#sudo apt install jack -y                  # Add on for DAW work. Audio connection software.
#sudo apt install yoshimi -y               # Add on for DAW work. A software synthesizer.
#sudo apt install blender -y               # 3D animation software.
#sudo apt install gimp -y                  # Photoshop equivalent.
#sudo apt install dwm -y                   # Suckless super minimal window manager.
#sudo apt install stterm -y                # Suckless st terminal emulator.
#sudo apt install ffmpeg -y                # Command line video/audio editor.
#sudo apt install mutt -y                  # Ncurses terminal email. The other option is alpine.
#sudo apt install calcurse -y              # Terminal calendar/tasker.
#sudo apt install fzy -y                   # Command line fuzzy finder.

sudo apt install arduino -y               # Arduino IDE.
sudo apt install artha -y                 # Gui dictionary/thesaurus. Great paper writing helper. Open with hotkey Ctrl-Alt-W.
sudo apt install audacity -y              # Simple audio editor and recorder.
sudo apt install chromium-browser -y      # Chromium is faster than Firefox and integrates with your Google account nicely.
sudo apt install curl -y                  # URL data transfer.
sudo apt install freecad -y               # Parametric 3d modeler.
sudo apt install feh -y                   # Simple image viewer.
sudo apt install git -y                   # Version control.
sudo apt install i3 -y                    # Tiling window manager.
sudo apt install inkscape -y              # Vector graphics software.
sudo apt install kazam -y                 # Simple screen recording program. Combine with mypaint to make Khan Academy style videos.
sudo apt install kicad -y                 # PCB design software. Eagle equivalent.
sudo apt install krita -y                 # Painting program. Medibang equivalent.
sudo apt install moc -y                   # Terminal music player.
sudo apt install mplayer -y               # Movie Player.
sudo apt install mupdf -y                 # Fastest and simplest pdf viewer. Only flaw is no double page view.
sudo apt install musescore -y             # Music writing software.
sudo apt install mypaint -y               # Paint program that comes with smooth line right out of the box. This lets you make Khan Academy style videos with little setting up.
sudo apt install octave -y                # Matlab equivalent.
sudo apt install openshot -y              # Video editing software. Kdenlive is a more complex to use alternative.
sudo apt install pandoc -y                # File converter (such as convert html to latex). A trick is to make a presentation in markdown and use pandoc to convert it to latex (using the Beamer latex presentation class).
sudo apt install python3 -y               # Everybody loves python.
sudo apt install r-base -y                # The R statistics programming language.
sudo apt install ranger -y                # A vimlike file manager. It also has a config file that you can make shortcuts and stuff in.
sudo apt install redshift-gtk -y          # Flux for linux. Turns off blue light at night. Runs automatically.
sudo apt install texlive -y               # The tex package for linux. (Like MikTex for Windows. Not an IDE, just the Tex.)
sudo apt install tlp -y                   # Tlp magically saves battery life. It runs automatically.
sudo apt install vim -y                   # Everybody likes vim.
sudo apt install wine64 -y                # Allows you to run windows .exe apps. After downloading, you have to make an artificial C drive with the command $winecfg.
sudo apt install youtube-dl -y            # Command line youtube video and music downloader. Add a shortcut to the ranger config to easily download music. (The command is $youtube-dl -x --audio-format mp3 <url of video>)
sudo apt install zeal -y                  # Offline documentation browser for software devs.

                                          #These two ask some config questions
sudo apt install qtractor -y              # A simple DAW. Its opponents are Arduor, LMMS, and Rosegarden. Each of these other three offer advantages and dissadvantages, but Qtractor offers good overall simple functionality.
sudo apt install sagemath -y              # Mathematica equivalent.

winecfg                                   # Makes an artificial C drive. Pops up a config box.
