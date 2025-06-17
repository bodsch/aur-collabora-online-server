#

.PHONY: geninteg srcinfo check clean

default: geninteg

geninteg:
	makepkg --geninteg

srcinfo:
	makepkg --printsrcinfo > .SRCINFO

check:
	makepkg --check

clean:
	rm -f *.deb
