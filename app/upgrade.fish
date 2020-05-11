#!/usr/bin/env fish

if type "apt" > /dev/null 2>&1
  sudo apt update
  sudo apt upgrade -y
  sudo apt autoremove -y
end

if type "yum" > /dev/null 2>&1
  sudo yum update -y
  sudo yum upgrade -y
  sudo yum autoremove -y
end

if type "pacman" > /dev/null 2>&1
  sudo pacman -Syyu
end

brew upgrade
