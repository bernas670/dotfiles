#!/usr/bin/bash

dbus-update-activation-environment --all
gnome-keyring-daemon --start --components=ssh

