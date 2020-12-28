#!/usr/bin/env bash
# Tombol tambahan untuk termux
# @author Ayus Irfang Filaras <ayus.sahabat@gmail.com>
# license MIT
clear
# Sambutan
printf "\e[32;m📲 Tombol tambahan untuk termux\e[0m\n"
sleep 1

# extra-keys
key="extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]"

# buka properties
prop="$HOME/.termux/termux.properties"

[[ -d $HOME/.termux ]] || {
  mkdir $HOME/.termux
}

if [[ -f $prop ]]; then
  rm $prop
  echo "${key}" >> $prop
  sleep 1
  termux-reload-settings
  printf "\e[32;m\n\n[√] Berhasil menambahkan tombol tambahan pada termux.\e[0m\n"

else
  echo "{$key}" >> $prop
  sleep 1
  termux-reload-settings
  
  printf "\e[32;m\n\n[√] Berhasil menambahkan tombol tambahan pada termux.\e[0m\n"
fi