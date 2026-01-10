#!/usr/bin/env sh

case "$3" in
	plug)
		amixer -c 0 sset Speaker off
		amixer -c 0 sset 'Playback Polarity' Normal ;;
	unplug)
		amixer -c 0 sset 'Playback Polarity' 'R Invert'
		amixer -c 0 sset Speaker on ;;
esac
