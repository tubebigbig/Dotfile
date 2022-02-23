# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias ll="ls -la"
alias pj="cd ~/project/"
alias vim="nvim"
alias glg="git lg"
alias grep="grep --color=auto -n"
alias ..="cd .."


# prompt
. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PROMPT_DIRTRIM=1
# export PS1='\w$(__git_ps1 " (%s)")\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

PATH="/home/victorliang/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/victorliang/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/victorliang/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/victorliang/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/victorliang/perl5"; export PERL_MM_OPT;

export EDITOR=vim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
