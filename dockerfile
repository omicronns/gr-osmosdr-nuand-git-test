from manjarolinux/base:latest

run \
    useradd -ms /bin/bash test &&\
    echo 'test:test' | chpasswd &&\
    echo 'root:toor' | chpasswd &&\
    groupadd sudo &&\
    usermod -aG sudo test &&\
    sed -i "s/.*%sudo.*/%sudo ALL=(ALL) ALL/g" /etc/sudoers &&\
    pacman --noconfirm -Sy base-devel

copy gr-osmosdr-nuand-git /home/test/gr-osmosdr-nuand-git
copy libbladerf-git /home/test/libbladerf-git
copy build.sh /home/test/build.sh

run chown -R test:test /home/test/

user test

workdir /home/test/
