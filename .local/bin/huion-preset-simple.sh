#!/bin/bash

PAD_NAME=`xsetwacom --list | grep "Pad pad" | cut -f 1`
PAD_ID=`xsetwacom --list | grep "Pad pad" | cut -f 2 | awk '{ print $2 }'`

echo "Setting Krita hotkeys..."
echo ""
echo -e "Button   \t Action    \t Hotkey"
echo -e "------   \t ------    \t ------"

echo -e "Button 1 \t copy      \t Ctrl C"
echo -e "Button 2 \t paste     \t Ctrl V"
echo -e "Button 3 \t cut       \t Ctrl X"
echo -e "Button 9 \t redo      \t Ctrl Shift Z"
echo -e "Button 10\t undo      \t Ctrl Z"

xsetwacom set "${PAD_NAME}" button 1 key "Ctrl C"
xsetwacom set "${PAD_NAME}" button 2 key "Ctrl V"
xsetwacom set "${PAD_NAME}" button 3 key "Ctrl X"
xsetwacom set "${PAD_NAME}" button 9 key "Ctrl Shift Z"
xsetwacom set "${PAD_NAME}" button 10 key "Ctrl Z"

echo ""
echo "OK"
