sudo apt install nala
sudo nala update && sudo nala upgrade


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

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
sudo add-apt-repository 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main'

# apt 
sudo nala install syncthing trash-cli zoxide git wine q4wine parcellite doublecmd gparted htop kdeconnect ranger codium mintstick timeshift mintdriver sqlitebrowser python3 python3-pip vulkan-tools vim ffmpeg git dwm









# virt-manager
sudo nala install qemu-kvm libvirt-daemon-system 



# TODO from here everything is checked -----------------------------------------------------------------------------

sudo nala install libvirt-clients bridge-utils virt-manager


# flathub
apt nala flatpa gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install com.github.zocker_160.SyncThingy org.gimp.GIMP org.zim_wiki.Zim
















# git install
#titus tips mybash
cd
mkdir github
cd github
git clone https://github.com/christitustech/mybash
cd mybash
./setup.sh
rm -r ~/github/mybash


sudo nala autoremove












#TODO

# prefered aplications
# web: librewolf
# file manager: doublecmd
# terminal: kitty
xdg-settings set default-web-browser librewolf.desktop



# add syncthingy

# add spotify and spotX


#mint lmde changes
#change icons to Mint-Y-Aqua
#Applications Mint-Y-Dark-Aqua
#window tiling preferences maximaizing insted of tie when dragging a window to the top edge
#


