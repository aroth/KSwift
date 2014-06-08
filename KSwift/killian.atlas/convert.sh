for file in out*.png; do convert $file -font courier -fill white -pointsize 50 -annotate +120+250 'EXAMPLE' $file; done;


