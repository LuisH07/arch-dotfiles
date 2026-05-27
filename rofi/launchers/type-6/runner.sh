#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-6"
theme='style-1'

## Run
pkill rofi || rofi \
    -show run \
    -theme ${dir}/${theme}.rasi
