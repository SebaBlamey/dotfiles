#!/bin/bash

show_progress(){
  local progess=$1
  local total=$2
  local percent=$((progress * 100 / total))
    printf "\rProgress: [%s%s] %d%%" $(printf '#%.0s' $(seq 1 $percent)) $(printf ' %.0s' $(seq $percent 100)) $percent
}

read -p "Are you sure you want to install seba's configuration? [Y/n]: " confirm
confirm=${confirm:-Y}

if [[ ! $confirm =~ ^[Yy]$ ]]; then
  echo "Installation aborted"
  exit 1
fi

echo "Updating package database..."
sudo pacman -Syu --noconfirm

echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay-git
makepkg -si --noconfirm
cd ..
rm -rf yay-git

echo "Installing packages with yay..."
yay -S --noconfirm ttf-cascadia-code-nerd ttf-apple-emoji brave-bin zapzap

echo "Installing packages with pacman..."
sudo pacman -S --noconfirm telegram-desktop neovim discord spotify-launcher kitty npm zsh

echo "Instaling yarn..."
sudo npm install -g yarn

echo "Installing pure-prompt with Yarn..."
yarn global add pure-prompt

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Applying Neovim and Kitty configurations..."
ln -sf ~/config/neovim ~/.config
ln -sf ~/config/kitty ~/.config


for i in {1..100}; do
  sleep 0.1
  show_progress $i 100
done

echo -e "\Configurations applied successfully!"
