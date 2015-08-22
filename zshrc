export PATH="$HOME/bin:$PATH"
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob

autoload -U colors && colors
PS1="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg[white]%}%~%{$reset_color%}%% "

alias cmpss="compass compile --sass-dir scss --css-dir css --output-style compressed --no-line-comments"

venvwrap="virtualenvwrapper.sh"
/usr/bin/which -s $venvwrap
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
fi

export WORKON_HOME=~/.virtualenvs
