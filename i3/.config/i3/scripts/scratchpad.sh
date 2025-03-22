#!/bin/bash

# https://gitlab.com/aquator/i3-scratchpad

class=$1
command="$2"

is_running() {
    local windows=$(i3-msg -t get_tree | jq '.. | select(.window_properties?.class) | .window_properties | .class')
    [[ $windows =~ $class ]] && return 0 || return 1
}

toggle() {
    i3-msg -q -- "[class=\"$class\"] scratchpad show"
}

move() {
    i3-msg -q -- "[class=\"$class\"] move to scratchpad"
}

launch() {
    i3-msg -q "exec --no-startup-id \"$command\"" && \
        i3-msg -t subscribe '[ "window" ]' && \
        i3-msg -q -- "[class=\"$class\"] move to scratchpad"
}

if is_running; then
    toggle
else
    launch
    toggle
fi

