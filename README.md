#

# original aur
https://aur.archlinux.org/collabora-online-server-nodocker.git

# changes

- rename package from `collabora-online-server-nodocker` to `collabora-online-server`
- use only `de` i18n package


```bash
makepkg --geninteg
makepkg --printsrcinfo > .SRCINFO
```
