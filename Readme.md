% sysinfo(1) | General Commands Manual

# System Information
The sysinfo program displays cpu, ram and diskusage as well as uptime, load average and cpu temperature on sysfs systems which support it. Display may be on a terminal or in a GTK application. 
CPU percentages are graphed, per core. 

### Compatibility
sysinfo has been tested on macOS Catalina and macOS Ventura, Debian Bullseye and Ubuntu Server. GTK may not be available on Macintosh Systems. 

### Program Arguments
```
--gtk				Use GUI
--nosystem			Don't show system information
--nofilesystems		Don't show filesystem usage
--nousers			Don't display logged in users.
--termwidth			An integer representing number of terminal columns
--watch, -w			Clear screen and refresh every watch-interval
--interval, -i 		Seconds to wait between refresh >.15 seconds.
```

## Installation

To install perform these actions:

```
cp sysinfo ~/bin
cp sysinfo.1 /usr/local/man/man1 # Optional
```

For the Desktop files: 

```
desktop-file-install --dir=~/.local/share/applications sysinfo.desktop
desktop-file-install --dir=~/.local/share/applications sysinfo-gtk.desktop
update-desktop-database ~/.local/share/applications
```


## Background
I wanted an alternative for the *nix df command which would show diskusage using bar graphs. Once this worked I added other system information and features


## Technicals
sysinfo is written in Python and relies heavily on the psutil module. Originally written for a terminal app, it made sense to add a  Gtk interface.

* Gtk code should only get executed when the --gtk flag is used. This is to prevent an exception on systems without Gtk. 
* To calculate the network speeds a thread is created which calculates the difference in total bytes sent/received. This is done every second so we can determine bytes per second. 


# License
Sysinfo Copyright (C) 2023 Nicole Stevens. This program comes with ABSOLUTELY NO WARRANTY. This is
free software, and you are welcome to redistribute it under certain conditions. This program is
licenced under GNU GENERAL PUBLIC LICENSE Version 3. See LICENSE.txt which should have been
distributed with this program. Please see [GNU Public License v3](https://www.gnu.org/licenses/gpl-3.0.txt)

# Author
Nicole Stevens - https://github.com/nicciniamh
