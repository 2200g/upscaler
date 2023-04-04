#! /bin/sh

ffmpeg -i in.mp4 -vf scale=3840:2160:flags=neighbor -c:v libx264 -preset slower -x264-params aq-mode=3 -crf 15 -pix_fmt yuv420p10le -c:a copy "out.mp4"
