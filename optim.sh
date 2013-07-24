# optimize images

cp assets/*.png Runner-dart/web/images/

cd Runner-dart/web/images/
pngquant --ext .png --force 128 Platform*@1x.png
pngquant --ext .png --force _atlas_*.png