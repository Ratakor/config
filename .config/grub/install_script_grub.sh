#!/bin/bash
NC='\033[0m' # No Color
CYAN='\033[0;36m'

if [ "$EUID" -ne 0 ]
  then printf "${CYAN}Please run as root \n"
  exit
fi


printf "${CYAN}Copying the theme in the right folder \n"
cp -r ./themes /boot/grub
printf "${CYAN}If there are no error the themes was copied succefully :D \n"

printf "${CYAN}Modifying the grub file \n"
echo 'GRUB_THEME="/boot/grub/themes/virtuaverse/theme.txt"' >> /etc/default/grub
echo 'export GRUB_COLOR_NORMAL="light-gray/black"' >> /etc/default/grub
echo 'export GRUB_COLOR_HIGHLIGHT="magenta/black"' >> /etc/default/grub

printf "${CYAN}Executing grub update ${NC}\n"
update-grub
printf "${CYAN}Grub updated"
