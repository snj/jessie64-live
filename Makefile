conf:
	lb config --parent-archive-areas "main non-free contrib"
	lb config --archive-areas "main non-free contrib"
	lb config --mirror-bootstrap "http://ftp.jp.debian.org/debian/"
	lb config --mirror-chroot "http://ftp.jp.debian.org/debian/"
	lb config --mirror-binary "http://ftp.jp.debian.org/debian/"
	lb config --mirror-chroot-security "http://security.debian.org"
	lb config --mirror-binary-security "http://security.debian.org"
	lb config --mirror-debian-installer "http://ftp.jp.debian.org/debian/"
