#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

complete -cf sudo

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias skype='xhost +local: && sudo -u skype /usr/bin/skype'
alias dmesg='dmesg --human'

#ssh-agent -a /var/tmp/ssh-agent.sock

export TERM=xterm-256color
export PATH="${HOME}/bin:${HOME}/.npm/bin:${PATH}:/opt/java/bin:${HOME}/code/go/bin"
export GOPATH="${HOME}/code/go"
export INV_CONFIG=${HOME}/gewerbe/invoices/invoice_config.json
export BOOK_COLLECTOR_CONFIG=${HOME}/ebooks/book_collector.cfg
export RADIO_STATS_CONFIG=${HOME}/.radio_stats/radio_stats.cfg
export IPYTHONDIR=${HOME}/.ipython
export MAIL=${HOME}/mail

export COREOS_IPXE_SERVER_DATA_DIR="${HOME}/projects/coreos/ipxe"
export COREOS_IPXE_SERVER_LISTEN_ADDR="0.0.0.0:4777"

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export WORKON_HOME=${HOME}/python-envs
export PYTHONUSERBASE=/home/wirrwarr/lib
source /usr/bin/virtualenvwrapper.sh
#source /home/wirrwarr/.rvm/scripts/rvm
#workon d

#xset b off

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function god() {
	eval $(${HOME}/bin/go-drawer-cmd);
}

function hdmion() {
	xrandr --output eDP1 --off --output HDMI1 --auto
}

function hdmioff() {
	xrandr --output HDMI1 --off --output eDP1 --auto
}

function hdmiwatch() {
	hdmion
	nohup $(ALSAPCM=myhdmi chrome) &
}

