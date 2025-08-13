# Clone packages
echo "Cloning required packages"
! [ -d ${ZDOTDIR:-~}/.antidote ] && git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
! [ -d ~/.fzf ] && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
! [ -d ~/.z-jump ] && git clone --depth=1 https://github.com/rupa/z.git ~/.z-jump

# Configure fzf
! [ -f ~/.fzf.zsh ] && echo "\nConfiguring fzf" && ~/.fzf/install

# Done
echo "All done, exit"
