#!/usr/bin/env bash

PACKAGES="docker docker-compose vim emacs tilix nodejs-lts-erbium npm ripgrep ruby ruby-irb aws-cli chromium git-crypt fish"
AUR_PACKAGES="zoom"

sudo pacman -S --needed ${PACKAGES}
sudo pamac install ${AUR_PACKAGES}

sudo systemctl enable docker.service \
&& sudo usermod -aG docker $USER \
&& chsh -s /usr/bin/fish \
&& sudo systemctl disable bluetooth \
&& sudo cp data/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
