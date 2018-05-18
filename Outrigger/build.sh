#!/usr/bin/sh
echo 'Copying images...'
cp ./src/images ./build/ -r
echo 'Copied!'
echo 'Building slideshow...'
pandoc -t revealjs -s -o ./build/myslides.html ./src/slideshow.md -V revealjs-url=http://lab.hakim.se/reveal-js -V theme=solarized
echo 'Build completed!'
