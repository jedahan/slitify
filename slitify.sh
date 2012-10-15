 #starting at 467s and outputting the images of the next 3 seconds
  ffmpeg -ss 467 -t 3 -i video.mkv output.%04d.png
  # crop image to 1px slices 280 pixels from the left.
  gm mogrify -crop 1x+280+0 *.png
  # stitch them
  gm montage -border 0 -geometry +0+0 -tile x1 *.png image.jpg