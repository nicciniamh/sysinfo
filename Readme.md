# System Information
The sysinfo program displays cpu, ram and diskusage as well as uptime, loadaverage and cpu temperature on sysfs systems which support it. 

## Background
I wanted an alternative for the *nix df command which would show diskusage using bar graphs. Once this worked I added other system information. 

### Program Arguments
|Argument|Usage|
|--------|-----|
|--system|	true or false to show or hide system information
|--filesystems|true or false to show filesystem usage
|--termwidth|an integer representing terminal width. This prevents using an ioctl to determine the terminal width. Usefull for scripts.
|--watch|Clear screen and refresh every watch-interval seconds. Default is 1 second. Can be a fractional second.
|--watch-interval|Seconds to wait between refresh

### Example Output
This is the output of sysinfo on my Raspberry Pi4

```
System Information
Wed Aug 16 09:36:13 2023  Up: 1 days, 21:11:13 - Load Average  1.16 0.76 0.52 Temp 48.20°C
CPU                                [#########            ] 44.8%
RAM                                [##                   ] 12.7%, 3.2G/3.7G
File systems
Mount               Dev             Usage
/                   /dev/root      [                     ] 4.1% 8.5G/218.8G
/boot               /dev/mmcblk0p1 [##                   ] 12.5% 31.8M/255.0M
/media/nicci/rootfs /dev/mmcblk0p2 [#####                ] 28.4% 15.9G/58.4G
```
## Installation
### Requirements

* Python >3.8
* Python psutil module

To install, simply copy sysinfo to a a directory on your PATH

# License
Sysinfo Copyright (C) 2023 Nicole Stevens. This program comes with ABSOLUTELY NO WARRANTY. This is
free software, and you are welcome to redistribute it under certain conditions. This program is
licenced under GNU GENERAL PUBLIC LICENSE Version 3. See LICENSE.txt which should have been
distributed with this program. Please see [GNU Public License v3](https://www.gnu.org/licenses/gpl-3.0.txt)