- [Asciicema](https://asciinema.org/)
- [Showterm](http://showterm.io/)
- [github asciinema](https://github.com/asciinema/asciinema/issues/70)
- [asciicast](https://github.com/asciinema/asciinema/blob/master/doc/asciicast-v1.md) :salvar como .json
- [asciinema configs](http://blog.asciinema.org/post/one-point-o/)

Caso salve o arquivo localmente, salve como .json.

# Convert a screen in gif


First install this:

sudo apt-get install imagemagick mplayer gtk-recordmydesktop

those are the required stuff, ImageMagick, MPlayer and Desktop Recorder. Then use Desktop Recorder to capture a portion of the screen/application to use as the screencast. After the Desktop Recorder has saved the recording into an OGV video, MPlayer will be used to capture JPEG screenshots, saving them into the 'output' directory.

On a terminal:

mplayer -ao null <video file name> -vo jpeg:outdir=output

Use ImageMagick to convert the screenshots into an animated gifs.

convert output/* output.gif

you can optimize the screenshots this way:

convert output.gif -fuzz 10% -layers Optimize optimised.gif

- [gif](http://askubuntu.com/questions/107726/how-to-create-animated-gif-images-of-a-screencast)
