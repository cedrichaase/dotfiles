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
alias ls='ls -G'
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

C_DEFAULT="\[$(tput setaf 7)\]" # default color (grey/white)
C_WHITE="\[$(tput setaf 15)\]"
C_MAIN="\[$(tput setaf 4)\]"    # main color
C_HIGH="\[$(tput setaf 6)\]"    # highlight color
F_BOLD="\[$(tput bold)\]"       # format bold
F_RESET="\[$(tput sgr0)\]"      # reset formatting

# shell prompt
export PS1="$C_DEFAULT[${F_BOLD}${C_WHITE}\u${F_RESET}${C_DEFAULT}@${F_BOLD}${C_MAIN}\h${F_RESET}${C_DEFAULT} ${C_HIGH}\W ${C_DEFAULT}]$ $F_RESET"

# git aliases

alias gst="git st"
alias gadd="git add"
alias gaddp="git add -p"
alias gci="git ci"
alias gds="git diff --staged"
alias gmap="git map"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/git/z/z.sh
