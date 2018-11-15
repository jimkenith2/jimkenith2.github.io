# Question and Answer

## How do I run windows programs?

You can run windows programs with WINE. Install WINE in Ubuntu with `$sudo apt install wine64`. Then type `$winecfg` to create a virtual C: drive. Go through the config popup, install you .exe programs, and click to start them up.

## How do I remove the annoying software updater pop up in Ubuntu?

Type `$gsettings set com.ubuntu.update-notifier no-show-notifications true`

## What is a good offline thesaurus application?

Artha is a great thesaurus/dictionary. Install with `$sudo apt install artha`

## How do I download an entire YouTube channel?

Download YouTube videos with youtube-dl. Install youtube-dl with `$sudo apt install youtube-dl`. Download a whole channel with `$youtube-dl -f 22 -ciw -v https://www.youtube.com/user/diaboloclassroom`. The `-f` stands for format, and it tells youtube-dl what resolution you want to download. `-f 22` downloads 720p video. If you don't include it, youtube-dl will download the highest resolution available. The `-citw` part stands for continue (resume partially downloaded files), ignore-errors (for example skipping unavailable videos), no-overwrites (don't overwrite files, which prevents replacing a video that may have a duplicate name). `-v` stands for verbose, and will give you information on how the download is going.

## 
