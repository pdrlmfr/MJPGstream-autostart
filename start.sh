#!/bin/bash
#==============================================================================
#title           :MJPG-Streamer AutoStart
#author          :PDR
#date            :18/05/2022
#==============================================================================

dir=~/mjpg-streamer/mjpg-streamer-experimental # Directory of 'mjpg_streamer'
resolution="640x480"                           # Resolution of the Camera
fps="30"                                       # Framerate of the Camera

# Go to 'mjpg-streamer' directory
cd ${dir}

# Start 'mjpg_streamer'
./mjpg_streamer -i "input_uvc.so -r ${resolution} -f ${fps}" -o "output_http.so"
