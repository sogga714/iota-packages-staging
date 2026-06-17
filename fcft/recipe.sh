meson build --buildtype=release
ninja -c build
sudo ninja -C build install || doas ninja -C build install
