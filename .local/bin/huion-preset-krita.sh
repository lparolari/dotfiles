#!/bin/bash

PAD_NAME=`xsetwacom --list | grep "Pad pad" | cut -f 1`
PAD_ID=`xsetwacom --list | grep "Pad pad" | cut -f 2 | awk '{ print $2 }'`

echo "Setting Krita hotkeys..."
echo ""

echo -e "Button   \t Action    \t Hotkey"
echo -e "------   \t ------    \t ------"
echo -e "Button 1 \t undo      \t Ctrl Z"
echo -e "Button 2 \t redo      \t Ctrl Shift Z"
echo -e "Button 10\t clear     \t del"

xsetwacom set "${PAD_NAME}" button 1 key "Ctrl Z"
xsetwacom set "${PAD_NAME}" button 2 key "Ctrl Shift Z"
xsetwacom set "${PAD_NAME}" button 2 key "del"

echo ""
echo "OK"
