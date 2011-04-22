for a in `ls $HOME/.bash_profile.d/*.sh`; do 
  source $a
done

export PATH=~/bin:~/.gem/ruby/1.8/bin:~/.seeds/bin:$PATH

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

if [[ -s /opt/rvm/scripts/rvm ]] ; then source /opt/rvm/scripts/rvm ; fi