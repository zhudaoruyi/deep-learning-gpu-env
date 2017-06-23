#!/bin/sh
npm install
nohup npm run dev &
python ./mitosisDetection/MitosisDetection_server.py
