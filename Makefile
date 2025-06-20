#

.PHONY: geninteg srcinfo check build clean

default: geninteg

geninteg:
	makepkg --geninteg

srcinfo:
	makepkg --printsrcinfo >| .SRCINFO

check:
	makepkg --check

build:
	makepkg --skippgpcheck --noconfirm --force

clean:
	rm -rf *.deb *.tar.zst src
