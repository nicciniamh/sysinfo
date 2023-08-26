#!/bin/bash
which pandoc >/dev/null 2>&1 || { echo 'pandoc is not installed'>&2; exit 1;}
cp Readme.md sysinfo.1.md
pandoc --standalone --to man sysinfo.1.md -o sysinfo.1
pandoc --standalone --to html Readme.md -o sysinfo.html
nroff -mandoc sysinfo.1 >sysinfo.man
rm -f sysinfo.1.md
