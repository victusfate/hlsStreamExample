ffmpeg -i $1 -threads 1 -codec:v libx264 -pix_fmt yuv420p -preset veryfast -strict -2 -bsf:v h264_mp4toannexb -flags -global_header -crf 28 -profile:v baseline -x264opts level=3:keyint_min=24:keyint=24:scenecut=0 -b:v 100000 -bt 100000 -bufsize 100000 -maxrate 100000 -r 12 -s 320x180 -f mpegts -t 9.958333333333334 -y $2_100K_noAudio.ts