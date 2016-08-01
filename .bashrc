#
# ~/.bashrc
#

PREFERRED_SHELL=/bin/zsh

# If not running interactively, don't do anything
[[ ${-} = *i* ]] || return

export EDITOR=vim
export PATH=$PATH:/opt/node/bin

shopt -s checkwinsize

# ls aliases
alias ls='ls --color=auto'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias s='du -hs'

# grep aliases
alias rgrep='grep --color -R'
alias igrep='grep -i'

# other handy shell aliases
alias s='du -hs'

alias wprotate='sudo wprotate'

# xrandr alias function
scr () {
  case ${1} in
    0)
      case ${2} in
        on)
          xrandr --output VGA1 --left-of HDMI1 --auto
          ;;
        off)
          xrandr --output VGA1 --off
          ;;
        *)
          return 1
          ;;
      esac
      ;;
    1)
      case ${2} in
        on)
          xrandr --output HDMI1 --right-of VGA1 --auto
          ;;
        off)
          xrandr --output HDMI1 --off
          ;;
        *)
          return 1
          ;;
      esac
      ;;
    *)
      return 1
      ;;
  esac
}

# shell prompt
export PS1="\[$(tput setaf 5)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 5)\]\h \[$(tput bold)\]\[$(tput setaf 6)\]\W \[$(tput setaf 7)\]> \[$(tput sgr0)\]"

if hash $PREFERRED_SHELL; then
  exec $PREFERRED_SHELL
  return
fi

echo Falling back to /bin/bash
