sudo apt install nala -y
sudo nala update && sudo nala upgrade

# auto remove games if its debian 12
# if lsb_release -i | grep -q "Debian"; then sudo apt purge gnome-2048 aisleriot atomix gnome-chess five-or-more hitori iagno gnome-klotski lightsoff gnome-mahjongg gnome-mines gnome-nibbles quadrapassel four-in-a-row gnome-robots gnome-sudoku swell-foop tali gnome-taquin gnome-tetravex -y & sudo apt autoremove -y; else echo "Debian-based"; fi

# librewolf
sudo nala update && sudo nala install -y wget gnupg lsb-release apt-transport-https ca-certificates
distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)
wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg
sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF
sudo nala update
sudo nala install librewolf -y

#mercury browser
cd ~
mkdir github
cd github
wget https://github.com/Alex313031/Mercury/releases/download/v.115.4.0/mercury-browser_115.4.0_amd64.deb
sudo nala install mercury-browser_115.4.0_amd64.deb -y
cd /github
rm mercury-browser_115.4.0_amd64.deb

# apt
sudo nala install syncthing gparted gimp mercury-browser qbittorrent mc autojump libreoffice-l10n-he timeshift -y

# imprtant stuff
sudo nala install python3 python3-pip vim neovim git htop neofetch kitty -y

# mabye not nececery
sudo nala install vulkan-tools zoxide -y

# virt-manager
sudo nala install qemu-system-x86 libvirt-daemon-system libvirt-clients bridge-utils virt-manager -y


#titus tips mybash
cd ~/github
git clone https://github.com/christitustech/mybash
cd mybash
chmod +x setup.sh
./setup.sh
rm -r ~/github/mybash

sudo nala autoremove -y
