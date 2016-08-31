#!/bin/sh

PROJECT=git

# replace tag 1 (right screen) with 6
i3-msg workspace 1
i3-msg workspace 6

# replace tag 2 (left screen) with 1
i3-msg workspace 2
i3-msg workspace 1

# launch apps on tag 1
i3-msg workspace 1
i3-msg exec firefox
i3-msg exec urxvt -e zsh -is eval "z ${PROJECT}"

# launch pstorm on tag 6
i3-msg workspace 6
i3-msg exec pstorm
