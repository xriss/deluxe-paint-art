
Download the dpaint disks from archive.org and extract the example lbm files 
then convert them all to gifs and pngs without remapping the palettes.

Unfortunately the original format is hard to use and most modern versions of 
these files that you can find on the internet have been mangled by converters 
that do not respect palette information. 

This is an attempt to maintain access to the original art by converting it 
correctly into more accessible file formats.

Run the bash scripts in numerical order on a recent debian install to hopefully 
recreate the data files in lbm/gif/png/jpeg.

The jpeg versions are upscaled 400% for easy viewing, remember jpegs do not 
contain palettes so that information will have been lost. 

The deluxe paint adf files are sourced from this list 
https://archive.org/download/CommodoreAmigaApplicationsADF I've picked the 
newest release of each version but you should be able to adjust the download 
script if you want to grab lbm files from another disk. This script will 
probably work with any of the zips on that list, the only caveat is that 
directory flattening will cause multiple files of the same name to overwrite 
each other.

