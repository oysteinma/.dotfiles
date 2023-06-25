#!/usr/bin/env zsh

echo '\n<<< Starting ZSH Setup >>>\n'

if [ -d ~/.oh-my-zsh ]; then
	echo "ZSH is configured with oh-my-zsh and plugins!"
 else
 	echo "Installing oh-my-zsh and plugins..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
    git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
    $(brew --prefix)/opt/fzf/install
fi

echo '\n<<< ZSH Setup Complete >>>\n'
