# myscripts
#!/bin/bash
sudo apt-get update
wget -qO- https://get.docker.com/ | sh


sudo docker run --name myjenkins -d --privileged=true -t -i -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -v /usr/lib/x86_64-linux-gnu/libapparmor.so.1.1.0:/usr/lib/x86_64-linux-gnu/libapparmor.so.1 -v /lib/x86_64-linux-gnu/libsystemd-journal.so.0:/usr/lib/libsystemd-journal.so.0 -v /lib64/libsystemd-id128.so.0:/usr/lib/libsystemd-id128.so.0 -v /lib64/libdevmapper.so.1.02:/usr/lib/libdevmapper.so.1.02 -v /lib/x86_64-linux-gnu/libgcrypt.so.11:/usr/lib/libgcrypt.so.11 -v /lib64/libdw.so.1:/usr/lib/libdw.so.1 -v /lib/x86_64-linux-gnu/libcgmanager.so.0:/usr/lib/libcgmanager.so.0  -v /lib/x86_64-linux-gnu/libnih.so.1:/usr/lib/libnih.so.1 -v /lib/x86_64-linux-gnu/libslang.so.2:/usr/lib/libslang.so.2  -v /lib/x86_64-linux-gnu/libz.so.1:/usr/lib/libz.so.1  -v /lib/x86_64-linux-gnu/libacl.so.1:/usr/lib/libacl.so.1  -v /lib/x86_64-linux-gnu/libbz2.so.1.0:/usr/lib/libbz2.so.1.0  -v /lib/x86_64-linux-gnu/libbz2.so.1:/usr/lib/libbz2.so.1  -v /lib/x86_64-linux-gnu/libkeyutils.so.1:/usr/lib/libkeyutils.so.1  -v /lib/x86_64-linux-gnu/libgpg-error.so.0:/usr/lib/libgpg-error.so.0 -v /lib/x86_64-linux-gnu/libusb-0.1.so.4:/usr/lib/libusb-0.1.so.4 -v /lib/x86_64-linux-gnu/libpopt.so.0:/usr/lib/libpopt.so.0  -v /lib/x86_64-linux-gnu/libaudit.so.1:/usr/lib/libaudit.so.1 -v /lib/x86_64-linux-gnu/libnl-3.so.200:/usr/lib/libnl-3.so.200  -v /lib/x86_64-linux-gnu/libnl-genl-3.so.200:/usr/lib/libnl-genl-3.so.200  -v /lib/x86_64-linux-gnu/libusb-1.0.so.0:/usr/lib/libusb-1.0.so.0  -v /lib/x86_64-linux-gnu/libntfs-3g.so.841:/usr/lib/libntfs-3g.so.841  -v /lib/x86_64-linux-gnu/libwrap.so.0:/usr/lib/libwrap.so.0  -v /lib/x86_64-linux-gnu/libpam.so.0:/usr/lib/libpam.so.0  -v /lib/x86_64-linux-gnu/libpam_misc.so.0:/usr/lib/libpam_misc.so.0  -v /lib/x86_64-linux-gnu/libpamc.so.0:/usr/lib/libpamc.so.0  -v /lib/x86_64-linux-gnu/liblzma.so.5:/usr/lib/liblzma.so.5  -v /lib/x86_64-linux-gnu/libnih.so.1:/usr/lib/libnih.so.1  -v /lib/x86_64-linux-gnu/libnih-dbus.so.1:/usr/lib/libnih-dbus.so.1  -v /lib/x86_64-linux-gnu/libcap.so.2:/usr/lib/libcap.so.2  -v /lib/x86_64-linux-gnu/libbsd.so.0:/usr/lib/libbsd.so.0  -v /lib/x86_64-linux-gnu/libtinfo.so.5:/usr/lib/libtinfo.so.5 -v /lib/x86_64-linux-gnu/libncursesw.so.5:/usr/lib/libncursesw.so.5  -v /lib/x86_64-linux-gnu/libncurses.so.5:/usr/lib/libncurses.so.5  -v /lib/x86_64-linux-gnu/libnewt.so.0.52:/usr/lib/libnewt.so.0.52  -v /lib/x86_64-linux-gnu/libreadline.so.6:/usr/lib/libreadline.so.6  -v /lib/x86_64-linux-gnu/libhistory.so.6:/usr/lib/libhistory.so.6  -v /lib/x86_64-linux-gnu/libattr.so.1:/usr/lib/libattr.so.1  -v /lib/x86_64-linux-gnu/libkmod.so.2:/usr/lib/libkmod.so.2  -v /lib/x86_64-linux-gnu/libjson.so.0:/usr/lib/libjson.so.0  -v /lib/x86_64-linux-gnu/libjson-c.so.2:/usr/lib/libjson-c.so.2 -v /lib/x86_64-linux-gnu/libglib-2.0.so.0:/usr/lib/libglib-2.0.so.0  -v /lib/x86_64-linux-gnu/libdbus-1.so.3:/usr/lib/libdbus-1.so.3  -v /lib/x86_64-linux-gnu/libply-splash-graphics.so.2:/usr/lib/libply-splash-graphics.so.2  -v /lib/x86_64-linux-gnu/libply-splash-core.so.2:/usr/lib/libply-splash-core.so.2  -v /lib/x86_64-linux-gnu/libply.so.2:/usr/lib/libply.so.2  -v /lib/x86_64-linux-gnu/libply-boot-client.so.2:/usr/lib/libply-boot-client.so.2  -v /lib/x86_64-linux-gnu/libprocps.so.3:/usr/lib/libprocps.so.3  -v /lib/x86_64-linux-gnu/libulockmgr.so.1:/usr/lib/libulockmgr.so.1  -v /lib/x86_64-linux-gnu/libfuse.so.2:/usr/lib/libfuse.so.2  -v /lib/x86_64-linux-gnu/libparted.so.0:/usr/lib/libparted.so.0  -v /lib/x86_64-linux-gnu/libpcre.so.3:/usr/lib/libpcre.so.3  -v /lib/x86_64-linux-gnu/libexpat.so.1:/usr/lib/libexpat.so.1  -v /lib/x86_64-linux-gnu/libuuid.so.1:/usr/lib/libuuid.so.1  -v /lib/x86_64-linux-gnu/libmount.so.1:/usr/lib/libmount.so.1  -v /lib/x86_64-linux-gnu/libblkid.so.1:/usr/lib/libblkid.so.1  -v /lib/x86_64-linux-gnu/libss.so.2:/usr/lib/libss.so.2  -v /lib/x86_64-linux-gnu/libext2fs.so.2:/usr/lib/libext2fs.so.2  -v /lib/x86_64-linux-gnu/libe2p.so.2:/usr/lib/libe2p.so.2  -v /lib/x86_64-linux-gnu/libcom_err.so.2:/usr/lib/libcom_err.so.2  -v /lib/x86_64-linux-gnu/libcgmanager.so.0:/usr/lib/libcgmanager.so.0  -v /lib/x86_64-linux-gnu/libpci.so.3:/usr/lib/libpci.so.3  -v /lib/x86_64-linux-gnu/libpng12.so.0:/usr/lib/libpng12.so.0  -v /lib/x86_64-linux-gnu/libudev.so.1:/usr/lib/libudev.so.1  -v /lib/x86_64-linux-gnu/libsystemd-login.so.0:/usr/lib/libsystemd-login.so.0  -v /lib/x86_64-linux-gnu/libsystemd-journal.so.0:/usr/lib/libsystemd-journal.so.0  -v /lib/x86_64-linux-gnu/libsystemd-daemon.so.0:/usr/lib/libsystemd-daemon.so.0 -v /lib/x86_64-linux-gnu/libgcrypt.so.11:/usr/lib/libgcrypt.so.11  -v /lib/x86_64-linux-gnu/libutil.so.1:/usr/lib/libutil.so.1  -v /lib/x86_64-linux-gnu/libthread_db.so.1:/usr/lib/libthread_db.so.1  -v /lib/x86_64-linux-gnu/libresolv.so.2:/usr/lib/libresolv.so.2  -v /lib/x86_64-linux-gnu/libpthread.so.0:/usr/lib/libpthread.so.0 -v /lib/x86_64-linux-gnu/libnss_nisplus.so.2:/usr/lib/libnss_nisplus.so.2 -v /lib/x86_64-linux-gnu/libnss_hesiod.so.2:/usr/lib/libnss_hesiod.so.2  -v /lib/x86_64-linux-gnu/libnss_dns.so.2:/usr/lib/libnss_dns.so.2  -v /lib/x86_64-linux-gnu/libnss_compat.so.2:/usr/lib/libnss_compat.so.2  -v /lib/x86_64-linux-gnu/libnsl.so.1:/usr/lib/libnsl.so.1  -v /lib/x86_64-linux-gnu/libm.so.6:/usr/lib/libm.so.6  -v /lib/x86_64-linux-gnu/libdl.so.2:/usr/lib/libdl.so.2 -v /lib/x86_64-linux-gnu/libc.so.6:/usr/lib/libc.so.6  -v /lib/x86_64-linux-gnu/libcidn.so.1:/usr/lib/libcidn.so.1 -v /lib/x86_64-linux-gnu/libBrokenLocale.so.1:/usr/lib/libBrokenLocale.so.1 -v /lib/x86_64-linux-gnu/libanl.so.1:/usr/lib/libanl.so.1 -v /lib/x86_64-linux-gnu/librt.so.1:/usr/lib/librt.so.1  -v /lib/x86_64-linux-gnu/libnss_nis.so.2:/usr/lib/libnss_nis.so.2 -v /lib/x86_64-linux-gnu/libnss_files.so.2:/usr/lib/libnss_files.so.2  -v /lib/x86_64-linux-gnu/libcrypt.so.1:/usr/lib/libcrypt.so.1 -v /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2:/usr/lib/ld-linux-x86-64.so.2 -p 8080:8080 -p 50000:50000 -v /var/jenkins_home preetick/jenkins-devops:v5
