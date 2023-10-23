sudo apt update && sudo apt upgrade

# librewolf
sudo apt update && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

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

sudo apt update
sudo apt install librewolf -y

# apt 
sudo apt install trash-cli zoxide git wine q4wine parcellite doublecmd gparted htop kdeconnect ranger codium mintstick timeshift mintdriver sqlitebrowser python3 python3-pip vulkan-tools vim ffmpeg git dwm



# virt-manager
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager


# flathub
apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo



# git install
#titus tips mybash
cd
mkdir github
cd github
git clone https://github.com/christitustech/mybash
cd mybash
./setup.sh
rm -r ~/github/*




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


