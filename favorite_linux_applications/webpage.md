# Favorite Linux Applications

All bolded applications can be installed with `$sudo apt install [app]` in Debian based distributions.

- **arduino** - the Arduino IDE.
- **artha** - a good dictionary/thesaurus.
- **audacity** - a simple audio editor and recording program.
- **chromium-browser** - faster than **firefox** and syncs your Google account.
- **feh** - simple image viewer. I also use it in conjunction with **ranger**.
- **freecad** - a parametric 3D CAD modeler. It also has built in 2D drafting abilities with Draft Workstation.
- **git** - the most popular version control system.
- **inkscape** - the best vector graphics editor.
- **kicad** - a suit for electronic design automation. Use it to make PCBs.
- **krita** - a full featured drawing application.
- **moc** - a terminal music player. MOC stands for "Music on Console".
  - the competitor is **cmus**. **cmus** has vim like navigation, but **moc** can detach itself, which is why I like it a bit better.
- **mplayer** - movie player.
- **musescore** - a musical notation application.
  - You can enter in notes manually as if you were writing the music by hand, or you can use what is called "real time mode", which allows you to enter notes against a metronome, transcribing what you play in real time.
  - **rosegarden** initially caught my interest because it is a music composition and editing environment with music notation capabilities. However, I could not figure out if it was actually possible to turn MIDI into music notation, and it turns out **musescore** can convert MIDI files into music notation anyways.
- **mupdf** - a fast, lightweight pdf viewer. Unfortunately, there is nothing that beats SumatraPDF for Windows yet.
  - other PDF viewers I learned about:
    - **okular** - full featured PDF viewer.
    - **zathura** - very similar to **mupdf**, has some extra features (two page view and command bar at bottom and different commands. In the end, I chose mupdf because I valued having no command bar over two page view.
- **mypaint** - a simple and easy to use paint program with good Wacom stylus support.
  - The reason to use **mypaint** over other drawing programs is due to a smooth writing feature magically integrated right out of the box. This makes it great for writing text for Khan Academy style videos with a screen recorder like **kazam** or **ffmpeg** with no setup required.
  - I tried some other drawing programs besides **krita** and **mypaint**, which were okay, but had nothing I really needed. **pinta** is like a simpler version of **krita**. **mtpaint**, the paint program that comes with Lubuntu, is very similar to Microsoft Paint.
- **octave** - a numerical computation environment with near identical syntax to MATLAB.
  - Another good numerical computation environment to look into is **scilab**. **scilab**'s syntax is slightly different from **octave** and Matlab, though.
- **openshot** - a simple video editor.
  - The other option I would consider is **kdenlive**, a more advanced, harder to use alternative.
- **pandoc** - a versatile file converter. Easily make LaTeX articles and Beamer presentations.
- **python3** - everyone likes python.
- **qtractor** - a simple DAW. It supports both MIDI and audio input. I chose **qtractor** over its three main competitors, **lmms**, **rosegarden**, and **ardour**, because it is simpler than the others and is relatively robust in all aspects.
- **r-base** - R programming language used for statistics work.
- **ranger** - a vim-like terminal file manager.
- **redshift-gtk** - reduces the amount of blue light your screen emits at nighttime.
- **sagemath** - a symbolic math program. An equivalent to Mathematica.
- **texlive** - TeX distribution.
- **tlp** - an utility that magically saves power. It runs automatically.
  - Note: **powertop** is for viewing power settings; **tlp** is for auto power saving.
- **vim** - everyone's favorite text editor.
- **wine64** - a compatibility layer for running Windows programs.
- **youtube-dl** - a command line YouTube video/audio downloader.
- **zeal** - offline documentation browser for software developers.

## Linux Games

- **extremetuxracer** - best Linux game.
- **supertux** - linux mario cart.
- **wesnoth** - turn based hexagonal strategy game with fantasy setting. Think Fire Emblem with Civilization.
- **0ad** - historical real time strategy game. Equivalent to Civilization.
- **megaglest** - another fantasy real time strategy game.
- **openttd** - train tycoon equivalent.

## Other Interesting Applications To Look Into

- *anki* - spaced repetition software. Download from website.
- *sent* - simple presentation software. Not available in repository. Download source from suckless.org and compile.
- **imgp** - command line png to jpeg and size converter
- **ffscreencast** - ffmpeg wrapper
- **ncdu** command line taking up space viewer
- **pyroom** - text editor for distraction free text editing.
- **blender** - 3D animation software. Large learning curve, but very efficient, robust, and feature packed. (You can do video editing and 3D modeling in it as well.)
- **gimp** - photoshop equivalent.
- **calcurse** - an ncurses calendar.
- **fzy** - command line fuzzy finder. Supposedly better than **fzf**.
- **mutt** - ncurses terminal email. The competitor is **alpine**. Apparently, **alpine** is easier to use out of box, but **mutt** is more configurable.
- **ledger** - terminal ledger.

## App Installer Bash Script

[App Installer](app_installer.sh) - Comment out unwanted programs, then run with `$bash app_installer.sh`.
