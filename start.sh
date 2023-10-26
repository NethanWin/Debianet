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


# codium (not finding source)


sudo nala install dirmngr software-properties-common apt-transport-https curl -y
curl -fSsL https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscodium.gpg >/dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/vscodium.gpg] https://download.vscodium.com/debs vscodium main" | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo nala update
sudo nala install codium



# apt
sudo nala install syncthing syncthingtray gparted gimp -y

# imprtant stuff
sudo nala install python3 python3-pip vim nano wine git htop nvidia-detect neofetch kitty -y



# mabye not nececery
sudo nala install sqlitebrowser vulkan-tools ffmpeg dwm kdeconnect trash-cli parcellite zoxide q4wine doublecmd-gtk -y

# flathub
apt add-repository flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo nala autoremove




#TODO

#to check again if its working --------------------------------------------------------
# virt-manager
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager -y
#----------------------------------------------------------



#not working0---------------------------------------
# git install
#titus tips mybash
cd
mkdir github
cd github
git clone https://github.com/christitustech/mybash
cd mybash

chmod +x setup.sh
./setup.sh
rm -r ~/github/mybash
-------------------------------------------------------

# prefered aplications
# web: librewolf
# file manager: doublecmd
# terminal: kitty
xdg-settings set default-web-browser librewolf.desktop


# add spotify and spotX


#mint lmde changes
#change icons to Mint-Y-Aqua
#Applications Mint-Y-Dark-Aqua
#window tiling preferences maximaizing insted of tie when dragging a window to the top edge
#
#says which driver to install
nvidia-detect





#already on lmde(not tested):
#sudo nala install mintstick timeshift -y
