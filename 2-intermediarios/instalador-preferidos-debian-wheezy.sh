#!/bin/bash
# Nome: debianotimize.sh
# Descrição: organiza o repositório e instala
# programas preferidos no Debian Wheezy

# Organizando repositórios
Repositorio="/etc/apt/sources.list"
#echo "deb http://ftp.br.debian.org/debian wheezy main contrib non-free" > $Repositorio
#echo "deb http://ftp.debian.org/debian/ wheezy-updates main contrib non-free" >> $Repositorio
#echo "deb http://security.debian.org/ wheezy/updates main contrib non-free" >> $Repositorio
Atualiza="apt-get update -y && apt-get upgrade -y && apt-get -f install"
Instala="apt-get install -y"

# Acessórios
$Instala cairo-dock
$Instala stardict
$Instala unetbootin
$Atualiza

# Eletrônica
$Instala arduino
$Instala arduino-core
$Instala electric
$Instala fritzing
$Instala geda
$Instala geda-examples
$Instala gnucap
$Instala kicad
$Instala eagle
$Atualiza

# Ciência e educação
$Instala abinit
$Instala achilles
$Instala ants
$Instala astronomical-almanac
$Instala ballview
$Instala bauble
$Instala biogenesis
$Instala bist
$Instala bkchem
$Instala cain
$Instala cain-examples
$Instala caret
$Instala celestia
$Instala chemtool
$Instala clinica
$Instala condor
$Instala fastdnaml
$Instala gchempaint
$Instala geant321
$Instala gelemental
$Instala geogebra
$Instala jmol
$Instala muscle
$Instala science-mathematics
$Instala science-robotics
$Instala scratch
$Instala step
$Instala worldwind
$Atualiza

# Sistema e hardware
$Instala alien
$Instala hwinfo
$Instala lshw
$Instala lshw-gtk
$Instala powertop
$Instala psensor
$Instala puppet
$Instala puppetmaster
$Atualiza

# Escritório
$Instala abiword
$Instala beav
$Instala ed
$Instala elvis
$Instala emacs
$Instala emacspeak
$Instala freemind
$Instala gwrite
$Instala hexedit
$Instala joe
$Instala kwrite
$Instala leafpad
$Instala libreoffice
$Instala libreoffice-l10n-pt-br
$Instala libreoffice-help-pt-br
$Instala lyx
$Instala vim
$Instala vim-gtk
$Atualiza

# Gráficos
$Instala aa3d
$Instala aaphoto
$Instala apng2gif
$Instala barcode
$Instala blender
$Instala byzanz
$Instala cdlabelgen
$Instala dia
$Instala gimp
$Instala gimp-data-extras
$Instala imagemagick
$Instala inkscape
$Instala librecad
$Instala okular
$Instala qcad
$Instala sane
$Instala xplanet
$Atualiza

# Multimídia
$Instala amarok
$Instala aqualung
$Instala bino
$Instala flashplugin-nonfree
$Instala freetuxtv
$Instala gnash
$Instala gnome-mplayer
$Instala gtk-recordmydesktop
$Instala kaffeine
$Instala mplayer
$Instala musique
$Instala openshot
$Instala totem
$Atualiza

# Games
$Instala 0ad
$Instala 3dchess
$Instala a7xpg
$Instala acm
$Instala adonthell
$Instala aisleriot
$Instala alex4
$Instala alienblaster
$Instala amphetamine
$Instala angrydd
$Instala antigravitaattori
$Instala armagetronad
$Instala atanks
$Instala atom4
$Instala atomix
$Instala balazar3
$Instala balazar3-2d
$Instala balazar3-3d
$Instala balder2d
$Instala beruski
$Instala billard-gl
$Instala bloboats
$Instala bomber
$Instala bomberclone
$Instala bzflag
$Instala cuyo
$Instala dangen
$Instala einstein
$Instala empire
$Instala etw
$Instala extremetuxracer
$Instala freecol
$Instala freetennis
$instala gamine
$Instala gav
$Instala gbrainy
$Instala gcompris
$Instala gl-117
$Instala gltron
$Instala kapman
$Instala kobodeluxe
$Instala kolf
$Instala open-invaders
$Instala openarena
$Instala opencity
$Instala supertux
$Instala torcs
$Instala torus-trooper
$Instala trophy
$Instala wesnoth
$Instala xracer
$Instala xtron
$Atualiza

# Desenvolvimento
$Instala anjuta
$Instala autoconf
$Instala autodia
$Instala codeblocks
$Instala doxygen
$Instala doxygen-gui
$Instala eclipse
$Instala eric
$Instala fenix
$Instala fenix-dev
$Instala fenix-plugin-mpeg
$Instala fenix-plugins
$Instala fenix-plugins-system
$Instala gambas3
$Instala geany
$Instala gettext
$Instala glade
$Instala ncc
$Instala qtcreator
$Instala radare2
$Instala spyder
$Atualiza

# Banco de dados
$Instala mysql*
$Atualiza

# Rede, internet e comunicação
$Instala 2ping
$Instala amispammer
$Instala amule
$Instala aria2
$Instala azureus
$Instala clusterssh
$Instala crack
$Instala cutecom
$Instala driftnet
$Instala emesene
$Instala ethtool
$Instala fail2ban
$Instala filezilla
$Instala finger
$Instala foxtrotgps
$Instala fping
$Instala fwbuilder
$Instala gnuradio
$Instala gns3
$Instala hping3
$Instala icedove
$Instala ipcalc
$Instala iptraf
$Instala john
$Instala kopete
$Instala ktorrent
$Instala netcat
$Instala snort
$Instala swat
$Instala tcpdump
$Instala ufw
$Instala wireshark
$Instala xchat
$Atualiza

# Utilitários
$Instala clamav
$Instala htop
$Instala keepass2
$Instala keepassx
$Instala lynis
$Instala p7zip
$Instala p7zip-full
$Instala p7zip-rar
$Instala pbzip2
$Instala rar
$Instala rzip
$Instala zip
$Instala unrar
$Atualiza

# Instalação manual de extras
# instalando team viewer
cd /tmp
wget http://download.teamviewer.com/download/teamviewer_linux.deb
dpkg -i teamviewer_linux.deb
$Atualiza
