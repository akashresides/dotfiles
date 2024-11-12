## This guide is for setting up a base Arch Linux install with neovim inside WSL2

- Download the bootstrap tarball from [Arch Linux - Downloads](https://archlinux.org/download/)
- Modify the tarball in an existing distro to uncomment some mirrors
```
sudo tar -xvf <downloaded file name>
cd root.x86_64
sudo nano /etc/pacman.d/mirrorlist
```
- Repack the whole root folder from inside the root.x86_64 directory
```
sudo tar -czvf root.tar.gz *
sudo mv root.tar.gz <name of the Windows folder>
```
- Start a windows terminal session as administrator
```
wsl --terminate <distribution_name>
wsl --import ArchLinux <Location to where imported> <Location of the tar file>
```
- once import completed
```
wsl -l -v
wsl -d ArchLinux
cd

pacman-key --init
pacman-key --populate archlinux
pacman -Syu

pacman -Syu base base-devel git nano wget reflector fish
```
- update the mirror list using reflector
```
reflector -c au --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```
- setup locale by uncommenting line in /etc/locale.gen then
```
locale-gen
echo LANG=en_AU.UTF-8 >> /etc/locale.conf
echo LC_ALL=en_AU.UTF-8 >> /etc/locale.conf
export LANG=en_AU.UTF-8
```
- setup root user password and create normal user
```
passwd
useradd -m -G wheel -s /bin/fish me
passwd me
EDITOR=nano visudo #uncomment wheel line in /etc/sudoers
```
