# Maintainer: HLFH <gaspard@dhautefeuille.eu>

# Choose which language(s) to package (in addition to “en-us”)
# This is a “full-line” extended regular-expression, eg.: 'pt' if you want “pt” but not “pt-br” or “pt-pt”
_I18N_EREGEX='de'
_pkgname=collabora-online-server

# taking version of coolwsd:
pkgver=25.04.9.4
pkgrel=1
arch=('x86_64')
url="https://www.collaboraonline.com/code/"
license=('MPL-2.0')
makedepends=(curl fontconfig libcap)
# ↑ excluding base (bzip2 coreutils gawk grep gzip sed systemd tar util-linux xz)

optdepends=(
  'hunspell: Use with language-specific hunspell dictionaries for LibreOffice spell-check'
  'hyphen: Use with language-specific hyphen rules for LibreOffice hyphenation'
)

depends=()

source=(
  'https://www.collaboraonline.com/repos/CollaboraOnline/CODE/Packages'
  install
  mkcert_example.sh
  sysusers
  tmpfiles
)

b2sums=('fe681295de048298f166153a182db1ad9e2777edcfaa70a8a041051dd0056e87d4ec9c75d060693131bcf5b118f55d65536143e7ab41c64b835b9130e06e36f2'
        '348323e5b6824ea889f50ebb2357b4ebbe81344a7476333aeebcfa13423f6e8bcf8f67f1e4f5c69b7c47224ac0f9d0ab59dbed6461d8afa11eac299c81eefb8f'
        '765a068a6b368d0934c48493e060a9962c87c6c66f21dae3d23282d42239f540e52465d6280def3284eeaeb0fbb9194f0fe87f1e77768f4e3625b44f68759253'
        'e06671584a958b7491dc78bc391cb7d6f6f854a6e2f3bd21679f44803f781bb46741df3b1524ce3798105037b3ca275f4c88975da04ec25551d8172397b34041'
        '1c2209a447dbe41a1d93198ee45b513aa29caa868100d9b5534fc2a10c8813dc0b792c0956420dce7476709d3de71c23f488176d77017a1c6ff7b21379e7e253'
        '79ec9c7c2c6910b4847de382cc2264d3d4e1c31cb1b3e002a0d092ca484722cf39e3fd80a9cf1956a2eb1041c9dcf43191e331707735855e7a6e023201c47cbc'
        'e723ed6553f0f2d6c0f61954c85970adee8e701f1f2f7d76d8f011c4bf87f3d12cd3f0420251f22ff27045b0fb5ab0a56433a68b72047c57aefb2d056b9f3480'
        '4b0a5a351a0d451511de31b81f31146b29991249058462e806da138daf6bffff1f0b925448bdc62e1219e98f6167d997f3f6fde1f2e03ab957a704f0a869e1b6'
        '8280642cb70dd0a1e78610cde32d03c0594762ab889e5d9a11ba34249267bf52e67a0c6410025bf66fac1af42f130be0cfd7cfbd843488b727ab94c94103e299'
        'b4fbabbaa544d8c10916d0c973bc52bc34b7502ae19bc64b38f1ef1250c23e7920c494fe0571de3ae738f9c8c288b83672fa895f9c135ad4355157e6a05da408'
        '30b350c5ba822b151371faa59a32bfb20cc971b3cbae1168fcf79d8ffaa9935ad6add69d558cb4644d4a6268b787f198ad1ee3be1e96b1e840a6cf464416152a'
        '8d3006e519d66c6e0e3e127d2b3b9d4bf195aab012d9e4e1964a0f650eae2bf698ff826b2d57ff6f2c8d780e0bca9bb0c3a23cf744f1eb3e926b078062851511'
        '23c17d66b5e9f2fd41bae198e52600f253187c29cfcc671d953e6eb3f044245756c693610dfe00186eb8846c94f9816e54871c670a6c59a2658bba2eb40680af'
        'df5a31c4ef1efacaa4056b4b978cb54dd4eacf489a1eb4ccc3db7ca291cbde46969ca4e03bf2bce22b2e9a6053bdff43f0d593767c55a25ff9742e1d9c002758'
        'd49fb3996cb9fca7cbe5a86f0e5ab3d28d6b10b2c22a954151e579fb6c4fd749cf45ee232b1386bedd74d7a998cc30d90daaedac719535ab837c781540f49d6f'
        'cfec79d8a1cf7729f29ffd780bcdc1bc9615443b6827b469afd1a3891550934d0865d01a70f8900707bac981e018b43579f0c1191ab79b1a897ceb1742027339'
        '840d10c834cbbd6225856d2bbef42d40a4853bc8a02fc23da9625545299b105ed81982c3b3b17a9f3f79f693d92aaaafe8c5b23520584bce21756cb2aa2d89ac'
        '4404012c21094c0c075c5396f998862d64fb4de794857101b69ef9bd30bb6be67012130b2e69273aa11f4ee0b11926ed20797d10efcf2ef4b21c2521bb34aee8'
        '7a503b8cf49e6c2c7c061b1eb2ace091eccf94f8b77b240a022f20fbcf6b3ef6669d974b9a59cfce78b50287b5955043b06530a4005ed40dad41de470bffc4a6'
        '2086019d5959a64bca275fea83eb421e5f1ef1b55c563ebd69216ae8b9844ab4e9172c9767e35fe0bf476771c0ce44846cf12a7f31801d41c61e5b2c928bf9a6'
        '0d8796b2cccda05f72990e9f500b86eaaa8663dcb7cb3fefa513fe81f3602f5fe6f7575888d2aaf69949fc642f3f276b16fcd62c64715e7cf41e35220da78f31'
        '695d074aa68f1034c8ffb33c759f2afcf1a6dc1c02d5ef0dca766f726ae5727892d9f8f6100a5870f8d5596b0353d5bf8040039d283c9d0a21f0066e7323ed57'
        '9738a9be7b486dcff435c0c74b7fbabd7f2373bb0816735dbc8c62d273e12142bf667739f6833008bce5c397071d12ee62816dc9b17d56c294c4ba25b504566d')

# From deb’s conffiles
backup=(
  # new:
  etc/apache2/conf-available/coolwsd.conf
  etc/coolwsd/coolkitconfig.xcu
  etc/coolwsd/coolwsd.xml
  etc/nginx/snippets/coolwsd.conf
  # old:
  etc/apache2/conf-available/loolwsd.conf
  etc/loolwsd/loolkitconfig.xcu
  etc/loolwsd/loolwsd.xml
  etc/nginx/snippets/loolwsd.conf

  etc/sysconfig/loolwsd
)

# From deb’s pre/post scripts
install=install

# From Dockerfile (https://github.com/CollaboraOnline/online/tree/master/docker), minus i18n files
_upstream_deps=(coolwsd code-brand)

# DEBIAN–ARCHLINUX EQUIVALENCES
#
# In case of a new upstream release:
#
# 1. Move all lines from $_upstream_equiv to $_upstream_equiv_OLD.
#
# 2. Run `makepkg -s` iteratively:
#  * Each time a dependency is missing, move it back from $_upstream_equiv_OLD to $_upstream_equiv.
#  * If a dependency is new, add a new line in $_upstream_equiv with nothing after the “=” sign.
#
# 3. When the package is done, in a terminal run: ./missing-deps.sh
#
# 4. For each “not found” line:
#  * If the missing file should be provided by a new dependency in $_upstream_equiv,
#    then put after the “=” sign the name of an Archlinux package that provides this file;
#    you may need to create the package if it does not exist (usually old versions).
#  * Else the missing file is probably expected to be present on any Debian/Ubuntu system;
#    thus add the missing dependency in the $depends array.
#
# 5. Review files under ./src/_control/* and see if install/upgrade actions have changed.
_upstream_equiv='
  adduser             =
  cpio                = cpio
  expat               = expat
  fontconfig          = fontconfig
  init-system-helpers =
  libc6               = gcc-libs
  libcap2             = libcap
  libcap2-bin         = libcap
  libgcc-s1           = gcc-libs
  libgcc1             = gcc-libs
  libpam0g            = pam
  libpng12-0          = libpng12
  libstdc++6          = gcc-libs
  openssh-client      = openssh
  systemd             = systemd
  zlib1g              = zlib
'
_upstream_equiv_OLD='
  locales-all         = glibc
'

_main_debs=
_i18n_debs=
declare -A __main_debs __i18n_debs

# >>>> START OF DYNAMIC ADAPTATION OF PKGBUILD
_upstream_handle_dep() {
  local dep="$2"
  local eqv="$(grep "^[[:blank:]]*$(sed 's/[.]/\\\0/g' <<<"$dep")[[:blank:]]*=" <<<"$_upstream_equiv")"
  local meta="$(awk -F$'\n' -vRS= "/^Package:[[:blank:]]*$(sed 's/[.]/\\\0/g' <<<"$dep")\\n/ && /_(all|amd64)\\.deb\\n/{print}" Packages)"
  local seen depurl
  if [ -n "$eqv" ]; then
    dep="$(sed 's/.*=[[:blank:]]*//' <<<"$eqv")"
    [ -n "$dep" ] || return
    for seen in "${depends[@]}"; do
      [ "$seen" == "$dep" ] && return
    done
    depends+=("$dep")
  elif [ -n "$meta" ]; then
    depurl_all="$(sed -rn "s#^Filename:[[:blank:]]*(.*/)?#${source[0]%Packages}#p" <<<"$meta")"
    depurl="$(echo "$depurl_all" | tr ' ' '\n' | sort -V | tail -n1)"
    for seen in "${source[@]}"; do
      [ "$seen" == "$depurl" ] && return
    done
    # when a new .DEB is needed, put it in the right array of dependencies
    [ $1 == main ] && __main_debs[$dep]="$depurl" || __i18n_debs[$dep]="$depurl"
    source+=("$depurl")
    while read dep; do if [ -n "$dep" ]; then
      _upstream_handle_dep "$1" "$dep"
    fi; done < <(
        sed -rn "s#^Depends:[[:blank:]]*##p" <<<"$meta" \
      | sed 's#([^)]*)##g; s#[[:blank:]]*,[[:blank:]]*#\n#g'
    )
  else
    echo "Unknown dependency: $dep" >&2; exit 1
  fi
}

if [ ${#source[*]} -eq 5 ]; then
  curl --silent --location "${source[0]}" >Packages
  pkgver=$(
    awk -F$'\n' -vRS= '/^Package:[[:blank:]]*coolwsd\n/ && /_(all|amd64)\.deb\n/{print}' Packages \
    | sed -n 's/^Version:[[:blank:]]*\(.*\)-.*/\1/p' \
    | sort -V \
    | tail -n1
  )

  # first register each .DEB as an unconfirmed main (i.e. not i18n) dependency
  for d in "${_upstream_deps[@]}"; do __main_debs[$d]=_pending_; done
  if [ -z "$_I18N_EREGEX" ]; then
    # go with that if no i18n has been requested
    pkgname=$_pkgname
    eval 'package() { _main_package; }'
  else
    # else register the function for building the main package, and dynamically discover i18n packages
    pkgname=($_pkgname)
    eval "package_$_pkgname() { _main_package; }"
    for p in $( \
      sed -nr 's#^Package:[[:blank:]]*((collaboraoffice-dict|collaboraofficebasis)-[a-z]{2}(-[a-z]+)?)$#\1#p' Packages \
      | grep -ve '-en-us$' \
      | sort -u \
      | grep -E "(dict|basis)-($_I18N_EREGEX)\$")
    do
      # for each .DEB file found that matches the requested i18n regex, register that .DEB as a i18n one
      __i18n_debs[$p]=_pending_
    done
    while read l; do
      # and register the function for building each of the i18n packages
      pkgname+=(${_pkgname}_${l})
      eval "package_${_pkgname}_${l}() { _i18n_package $l; }"
    done < <( \
      sed -nr 's#^Package:[[:blank:]]*(collaboraoffice-dict-|collaboraofficebasis-)([a-z]{2}(-[a-z]+)?)$#\2#p' Packages \
      | grep -vxF en-us \
      | sort -u \
      | grep -Exe "$_I18N_EREGEX")
  fi

  for dep in "${!__main_debs[@]}"; do
    # recursive dependencies for the main package
    _upstream_handle_dep main "$dep"
  done
  for dep in "${!__i18n_debs[@]}"; do
    # recursive dependencies for the i18n packages
    _upstream_handle_dep i18n "$dep"
  done
  _main_debs="$(IFS='|'; echo "${__main_debs[*]}")"
  _i18n_debs="$(IFS='|'; echo "${__i18n_debs[*]}")"
fi

# some debug:
sorted_main_deps=$(printf "%s\n" "${__main_debs[@]}" | sort)
sorted_i18n_deps=$(printf "%s\n" "${__i18n_debs[@]}" | sort)

echo "-----------------------------------------------------------"  >&2
__VERSION=$(
	echo "${_main_debs}" |
		tr '|' '\n' |
		grep 'coolwsd_' |
		grep -oP '\d{2}\.\d{2}\.\d+(?:\.\d+)?-\d+' |
		head -n1
)
echo "VERSION: ${__VERSION}"  >&2
echo ""  >&2

echo "MAIN DEBs:"  >&2
for u in $(printf "%s\n" "${sorted_main_deps[@]}")
do
  echo "  $u"  >&2
done

echo "I18N DEBs"  >&2
for u in $(printf "%s\n" "${sorted_i18n_deps[@]}")
do
  echo "  $u"  >&2
done
echo "-----------------------------------------------------------"  >&2

unset _upstream_handle_dep _upstream_equiv _upstream_deps __main_debs __i18n_debs
# <<<< END OF DYNAMIC ADAPTATION OF PKGBUILD

_unpack_deb_file() {
  local target="$1"
  local deb="$2"
  local archive="$3"
  local data="$(ar t "$deb" | grep "^${archive}\.")"
  if [ -n "$data" ]; then
    [ -d "$target" ] || mkdir -p "$target"
    case "$data" in
    *.bz2) ar p "$deb" "$data" | tar -C "$target" -xjf - ;;
    *.gz) ar p "$deb" "$data" | tar -C "$target" -xzf - ;;
    *.xz) ar p "$deb" "$data" | tar -C "$target" -xJf - ;;
    *) echo "Unknown file format: $data" >&2; exit 1 ;;
    esac
  fi
}

_i18n_package() {
  depends=()
  backup=()
  install=
  pkgdesc="Language ${1} internationalization files for Collabora CODE (LibreOffice Online)"

  local data f
  cd "$pkgdir"

  while read f; do
    [[ "$f" =~ (dict|basis)-$1 ]] || continue
    f="$srcdir/$(basename "$f")"
    _unpack_deb_file "$pkgdir" "$f" data
  done < <(tr '|' '\n' <<<"$_i18n_debs")
  chown -R $(id -nu):$(id -ng) .
}

_main_package() {
  pkgdesc="Collabora CODE (LibreOffice Online) server for Nextcloud or ownCloud, without Docker"

  local data f
  cd "$pkgdir"

  while read f; do
    f="$srcdir/$(basename "$f")"
    _unpack_deb_file "$pkgdir" "$f" data
    _unpack_deb_file "$srcdir/_control/$(basename "$f")" "$f" control
  done < <(tr '|' '\n' <<<"$_main_debs")
  find "$srcdir/_control" -type f \( -name control -o -name copyright -o -name md5sums \) -exec rm -f {} +
  find "$srcdir/_control" -depth -empty -exec rm -rf {} \;
  chown -R $(id -nu):$(id -ng) .

  # /lib is deprecated
  mv {lib,usr/lib}

  # use systemd for user allocation
  install -Dm0644 "$srcdir"/sysusers usr/lib/sysusers.d/$_pkgname.conf

  # replace cron with systemd
  rm -rf etc/cron.d
  install -Dm0644 "$srcdir"/tmpfiles usr/lib/tmpfiles.d/$_pkgname.conf

  # add dependency on systemd
  sed -i '/^\[Unit\]/ a \
After=systemd-tmpfiles-setup.service' usr/lib/systemd/system/coolwsd.service

  # keep the cert-making script from the Dockerfile for reference
  install -Dm0755 "$srcdir"/mkcert_example.sh usr/share/doc/coolwsd/example.mkcert.sh

  # do not provide libreoffice for the desktop (seems broken…)
  rm -rf opt/collaboraoffice/share/xdg

  # fix lib + desktop files’ permissions
  chmod a+x opt/collaboraoffice/program/lib*.so

  # https://github.com/CollaboraOnline/Docker-CODE/issues/32
  [ -d etc/sysconfig ] || mkdir etc/sysconfig
  echo 'SLEEPFORDEBUGGER=0' >>etc/sysconfig/coolwsd
}
