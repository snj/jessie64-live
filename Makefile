conf:
	lb config --bootappend-live "boot=live config persistence noeject live-config.utc=no live-config.locales=ja_JP.UTF-8 live-config.keyboard-model=jp106 live-config.keyboard-layouts=jp"
	lb config --parent-archive-areas "main non-free contrib"
	lb config --archive-areas "main non-free contrib"
	lb config --mirror-bootstrap "http://ftp.jp.debian.org/debian/"
	lb config --mirror-chroot "http://ftp.jp.debian.org/debian/"
	lb config --mirror-binary "http://ftp.jp.debian.org/debian/"
	lb config --mirror-chroot-security "http://security.debian.org"
	lb config --mirror-binary-security "http://security.debian.org"
	lb config --mirror-debian-installer "http://ftp.jp.debian.org/debian/"
	cp -r /boot/* chroot/boot/
