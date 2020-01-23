# Remove all previous environment defined aliases.
#
unalias -a

# Aliases.
#
alias aliases='alias | cut -c7- | bat -l ini --style=plain --paging never'
alias be='bundle exec'
alias cf='fzf_change_directory'
alias cp='/bin/cp -i'
alias cz='_f() { cd "$@" && _z --add "$(pwd)"; }; _f'
alias dir='ls -l'
alias du='du -b'
alias dus='_f() { du -sh "$@" | sort -hr | m; }; _f'
alias eq='set -f; _f() { echo $@ | bc; set +f; }; _f'
alias f='fzf --ansi'
alias fkill='fzf_kill'
alias g='_f() { if [[ $# == 0 ]]; then git status -sb; else git "$@"; fi }; _f'
alias gtop='glances --disable-bg'
alias gv='gvim 2> /dev/null'
alias h=history
alias help='tldr'
alias hrg='history | rg'
alias l1='ls -1'
alias ll='exa --long --color=always --group-directories-first'
alias ll.='ll --all'
# usage: llfs +1M (find all files larger than 1 megabyte)
alias llfs='find_by_size'
alias lls='_f() { ll -r --sort=size "$@" | less; }; _f'
alias llt='_f() { ll -r --sort=modified "$@" | less; }; _f'
alias ls='ls --color --classify --human-readable --quoting-style=escape'
alias m='less'
alias mux='tmuxinator'
alias mv='/bin/mv -i'
alias p='bat'
alias pping='prettyping --nolegend'
alias psu='ps -u $USER -f'
alias qmv='qmv -f do'
alias rg='rg --smart-case'
alias rgm='_f() { rg -p "$1" | less; }; _f'
alias rm='/bin/rm -i'
alias rmrf='/bin/rm -rf'
alias src='. ~/.bashrc'
alias v='nvim'
alias vdi='nvim -d'
alias vf='fzf_find_edit'
alias vg='grep_edit'
alias vim='stty -ixon && vim 2> /dev/null'
alias x=exit
alias ytest='CI=true yarn test --colors'


# General environment variables.
#
export EDITOR=nvim
export LESS='-Q -R -X -F -s -i -g'
export LESS_TERMCAP_md=$(printf "\e[00;34m")
export LESS_TERMCAP_us=$(printf "\e[01;32m")
export LESSHISTFILE=-
# Note:
#   mi - completion options color (Bash 4.4 and later)
#   so - completion matching-prefix color (Bash 4.4 and later)
export LS_COLORS="no=00:fi=00:di=38;5;111:ln=38;5;51:pi=38;5;43:bd=38;5;212:\
cd=38;5;225:or=30;48;5;202:ow=38;5;75:so=38;5;177:su=36;48;5;63:ex=38;5;156:\
mi=38;5;115:*.exe=38;5;156:*.bat=38;5;156:*.tar=38;5;204:*.tgz=38;5;205:\
*.tbz2=38;5;205:*.zip=38;5;206:*.7z=38;5;206:*.gz=38;5;205:*.bz2=38;5;205:\
*.rar=38;5;205:*.rpm=38;5;173:*.deb=38;5;173:*.dmg=38;5;173:*.jpg=38;5;141:\
*.jpeg=38;5;147:*.png=38;5;147:*.mpg=38;5;151:*.avi=38;5;151:*.mov=38;5;216:\
*.wmv=38;5;216:*.mp4=38;5;217:*.mkv=38;5;216:*.flac=38;5;223:*.mp3=38;5;218:\
*.wav=38;5;213:\
*akefile=38;5;176:*.pdf=38;5;253:*.ods=38;5;224:*.odt=38;5;146:\
*.doc=38;5;224:*.xls=38;5;146:*.docx=38;5;224:*.xlsx=38;5;146:\
*.epub=38;5;152:*.mobi=38;5;105:*.m4b=38;5;222:*.conf=38;5;121:\
*.md=38;5;224:*.markdown=38;5;224:*README=38;5;224:*.ico=38;5;140:\
*.iso=38;5;205"
export EXA_COLORS="da=38;5;252:sb=38;5;204:sn=38;5;43:\
uu=38;5;245:un=38;5;241:ur=38;5;223:uw=38;5;223:ux=38;5;223:ue=38;5;223:\
gr=38;5;153:gw=38;5;153:gx=38;5;153:tr=38;5;175:tw=38;5;175:tx=38;5;175:\
gm=38;5;203:ga=38;5;203:xa=38;5;239:*.ts=00"
export PAGER=less

# What platform are we running on.
export OS=`uname`

# History settings.
HISTCONTROL='erasedups:ignoreboth' # Erase duplicates
HISTFILESIZE=99999                 # Max size of history file
HISTIGNORE=?:??                    # Ignore one and two letter commands
HISTSIZE=99999                     # Amount of history to save
# Note, to immediately append to history file see 'prompt' function below.

# Customizations per platform.
if [[ $OS = Linux ]]; then
    alias cpa='/bin/cp -i -a'
    alias free='free -th'
    alias open='xdg-open 2>/dev/null'
elif [[ $OS = Darwin ]]; then
    alias cpa='/usr/local/opt/coreutils/libexec/gnubin/cp -i -a'
    export GTK_THEME='Meld-Mojave-light' # Force light theme for 'meld'
fi


# Functions.
#
brew_config() {
    if ! [[ -x $(command -v brew) ]]; then
        echo 'Note: brew is not installed.'
        return
    fi

    export BREW_PREFIX=$(brew --prefix)

    # Bash completions.
    if [[ $OS = Linux ]]; then
        # Source legacy Brew-related Bash completions.
        for f in $BREW_PREFIX/etc/bash_completion.d/*; do . $f; done
    elif [[ $OS = Darwin ]]; then
        # Please refer to: https://is.gd/5f9uD8
        # Source legacy version 1 bash_completion scripts.
        export BASH_COMPLETION_COMPAT_DIR="$BREW_PREFIX/etc/bash_completion.d"
        # Source version 2 bash_completion scripts.
        . $BREW_PREFIX/etc/profile.d/bash_completion.sh
    fi

    # 'z' configuration.
    _Z_NO_PROMPT_COMMAND=1
    . $BREW_PREFIX/etc/profile.d/z.sh

    # Custom Bash completions.
    for f in ~/dotfiles/bash_completion.d/*; do . $f; done

    # Make 'g' alias to Git work with bash-completion.
    complete -o default -o nospace -F _git g

    # 'fzf' configuration.
    . $BREW_PREFIX/opt/fzf/shell/key-bindings.bash
    export FZF_DEFAULT_OPTS='
      --height 75% --multi --reverse --border --margin=0,1
      --bind ctrl-f:page-down,ctrl-b:page-up
      --bind pgdn:preview-page-down,pgup:preview-page-up
      --prompt="❯ "
      --color hl:13,fg+:253,bg+:234,hl+:13
      --color info:11,border:237,prompt:111,pointer:9,marker:8,spinner:10,header:4
    '
    export FZF_DEFAULT_COMMAND='fd --type f --color=never'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_CTRL_T_OPTS='--preview "bat --color=always --line-range :500 {}"'
    export FZF_ALT_C_COMMAND='fd --type d . --color=never'
    export FZF_ALT_C_OPTS='--preview "tree -C {} | head -100"'
    # This is an undocumented environment variable for use by fzf.vim, see:
    # https://github.com/junegunn/fzf.vim/pull/707
    export FZF_PREVIEW_COMMAND='bat --color=always {}'

    # 'bat' configuration.
    export BAT_CONFIG_PATH="$HOME/dotfiles/bat.conf"
}

dev_config() {
    if [[ -z $BREW_PREFIX ]]; then
        return
    fi

    if [[ -f $BREW_PREFIX/share/chruby/chruby.sh ]]; then
        . $BREW_PREFIX/share/chruby/chruby.sh
        chruby 2.6.2
    fi
    if [[ -d /usr/local/Android/Sdk ]]; then
        export ANDROID_SDK_ROOT=/usr/local/Android/Sdk
        PATH=$PATH:$ANDROID_SDK_ROOT/emulator
    elif [[ -d ~/Library/Android/Sdk ]]; then
        export ANDROID_SDK_ROOT=~/Library/Android/Sdk
        PATH=$PATH:$ANDROID_SDK_ROOT/emulator
    fi
    if [[ -d /usr/local/flutter/bin ]]; then
        PATH=$PATH:/usr/local/flutter/bin
        export DART_SDK=/usr/local/flutter/bin/cache/dart-sdk
        PATH=$PATH:$DART_SDK/bin
    fi
    if [[ -d ~/projects/go ]]; then
        export GOPATH=~/projects/go
        PATH=$PATH:$GOPATH/bin
    fi
}

find_by_size() {
    find . -type f -size "$1" -exec ls --color --classify --human-readable -l {} \; ;
}

fzf_git_status() {
    local selections=$(
      git status --porcelain | \
      fzf --ansi \
          --preview 'if (git ls-files --error-unmatch {2} &>/dev/null); then
                         git diff --color=always {2} | diff-so-fancy
                     else
                         bat --color=always --line-range :500 {2}
                     fi'
      )
    if [[ -n $selections ]]; then
        local files=$(echo "$selections" | cut -c 4- | tr '\n' ' ')
        if [[ -n $files && "$1" == "add" ]]; then
            git add --verbose $files
        elif [[ -n $files && "$1" == "diff" ]]; then
            git diff $files
        fi
    fi
}

grep_edit() {
    if [[ $# == 0 ]]; then
        echo 'Error: search term was not provided.'
        return
    fi

    $EDITOR $(rg -l "$1")
}

path() {
    PATH=/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin
    export MANPATH=/usr/local/man:/usr/local/share/man:/usr/man:/usr/share/man
    if [[ $OS = Darwin ]]; then
        PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
        MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
    elif [[ -d ~/.linuxbrew ]]; then
        PATH=~/.linuxbrew/bin:$PATH
        MANPATH=~/.linuxbrew/share/man:$MANPATH
    fi

    PATH=~/binaries:~/scripts:$PATH
}

prompt() {
    # Please first install the seafly Bash prompt.
    #   git clone https://github.com/bluz71/bash-seafly-prompt ~/.bash-seafly-prompt
    SEAFLY_PRE_COMMAND="history -a"
    SEAFLY_GIT_PREFIX=" "
    . ~/.bash-seafly-prompt/command_prompt.bash
}


# Set environment.
#
path
brew_config
dev_config
prompt
