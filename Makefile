conf:
	lb config --distribution jessie --debian-installer live \
	 --binary-images iso-hybrid \
	 --bootappend-live "boot=live config persistence persistence-encryption=luks noeject live-config.utc=no live-config.locales=ja_JP.UTF-8 live-config.keyboard-model=jp106 live-config.keyboard-layouts=jp" \
	 --parent-archive-areas "main non-free contrib" \
	 --archive-areas "main non-free contrib" \
	 --mirror-bootstrap "http://ftp.riken.jp/Linux/debian/debian/" \
	 --mirror-chroot "http://ftp.riken.jp/Linux/debian/debian/" \
	 --mirror-binary "http://ftp.riken.jp/Linux/debian/debian/" \
	 --mirror-chroot-security "http://security.debian.org" \
	 --mirror-binary-security "http://security.debian.org" \
	 --mirror-debian-installer "http://ftp.riken.jp/Linux/debian/debian/"

clean:
	lb clean --all

build:
	lb build

burn:
	./burn.sh


