#!/bin/bash

PAD_NAME=`xsetwacom --list | grep "Pad pad" | cut -f 1`
PAD_ID=`xsetwacom --list | grep "Pad pad" | cut -f 2 | awk '{ print $2 }'`

echo "Setting Krita hotkeys..."
echo ""
echo -e "Button   \t Action    \t Hotkey"
echo -e "------   \t ------    \t ------"

echo -e "Button 1 \t start/stop\t space"
echo -e "Button 2 \t selection \t S"
echo -e "Button 3 \t razor tool\t X"
echo -e "Button 8 \t del tool  \t del"
echo -e "Button 9 \t redo      \t Ctrl Shift Z"
echo -e "Button 10\t undo      \t Ctrl Z"

xsetwacom set "${PAD_NAME}" button 1 key "space"
xsetwacom set "${PAD_NAME}" button 2 key "S"
xsetwacom set "${PAD_NAME}" button 3 key "X"
xsetwacom set "${PAD_NAME}" button 8 key "del"
xsetwacom set "${PAD_NAME}" button 9 key "Ctrl Shift Z"
xsetwacom set "${PAD_NAME}" button 10 key "Ctrl Z"

echo ""
echo "OK"
