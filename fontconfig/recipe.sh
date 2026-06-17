./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --disable-docs --docdir=/usr/share/doc/fontconfig-2.18.1
make -j$(( $(grep MemTotal /proc/meminfo | awk '{print $2}') / 1024 / 1024 / 2 ))
sudo make install || doas make install
