#

.PHONY: geninteg

default: geninteg

geninteg:
	makepkg --geninteg

srcinfo:
	makepkg --printsrcinfo > .SRCINFO

clean:
	rm -f *.deb
