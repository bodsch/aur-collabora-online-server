# Maintainer: HLFH <gaspard@dhautefeuille.eu>

# Choose which language(s) to package (in addition to “en-us”)
# This is a “full-line” extended regular-expression, eg.: 'pt' if you want “pt” but not “pt-br” or “pt-pt”
_I18N_EREGEX='de'
_pkgname=collabora-online-server

# taking version of coolwsd:
pkgver=25.04.8.3
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

b2sums=('3bde7d18e4b5cef13088e516f41da485d18d7caf145f2295827ca447bc743f05a8960ce9999e07e1555d84b8097c2d281e0c42641e4b96e01747d941a1a86375'
        '348323e5b6824ea889f50ebb2357b4ebbe81344a7476333aeebcfa13423f6e8bcf8f67f1e4f5c69b7c47224ac0f9d0ab59dbed6461d8afa11eac299c81eefb8f'
        '765a068a6b368d0934c48493e060a9962c87c6c66f21dae3d23282d42239f540e52465d6280def3284eeaeb0fbb9194f0fe87f1e77768f4e3625b44f68759253'
        'e06671584a958b7491dc78bc391cb7d6f6f854a6e2f3bd21679f44803f781bb46741df3b1524ce3798105037b3ca275f4c88975da04ec25551d8172397b34041'
        '1c2209a447dbe41a1d93198ee45b513aa29caa868100d9b5534fc2a10c8813dc0b792c0956420dce7476709d3de71c23f488176d77017a1c6ff7b21379e7e253'
        'daba1b0f8d051a05fa67824bf2da3306a20c18ea7b9296e365ff4fc2586456672b02f259447d90f8f3c014c3ce988eab5200ac5e9554c4907c0547e332cc5343'
        'da50742f4538a0b60cfbd39a9252888c10d0a4299653ca7cae669a8522b869d8b4e741f089b1a233d5a6bdd2ef60f96345e34ec04dcb24c8e5ab51591acf3783'
        'ac0e29dd246e543dce7650bb0de6aa239451c647d5f25474671172b09f49204c0aeaf5d5946c8832f145477888ed03f180118b781bd2f525605a967102b33968'
        'e156c17e6769e7ca8a375162f91d03e26900546bbbc0b7819b3c16d2794702849a27e8a4ccbb065c20137b73b2057121d6605cfcf0c68d1aa972bd23333d2c61'
        '91b8f7c8547776ffc0937e6d9becff2d37a48ca61707610c9021581cc77a2f3e7a75336dff4e2ec5f17c3eaa8985239be79126c93c9ee8f11800592806632a59'
        'd12a3120229e989653d471a8bff9a0e1a2ba02e0df3ebb60e2345dbd0227842e91a1e0d9cf819fa96063a51119d96dfc81a9fd25424dd210b4ef4f8a03ca2782'
        '7addd647effee1d48707c0b67c22b26e73291b5f9ed795b9f1edfc52fcaa41ce4d4212d6bb5267426e177b639c7bc90d1d15128b6f81c578232bb8be8056d562'
        '84c24e29875703a28e964a86f2a90fe19f73b91fc0663b617828a7cb465759037d3798fa904d8f5a28c965aa51ae830bc47ec94a1bdfc27d56c0d37e83e257b3'
        '2424d789d7bff7a0f2fa383d065bcafb546873d79f916f10cff2efb0df7a529e907f8b469aa85caf55282938fbaeb999aa1a3acf720dc9d3cb52335cb7d63509'
        'fa0e99f58f6a98998c3e56dc472be2ce8c302396bac3052599815e1513e756945b4ca85dde983551bf2349723b7e1dadb0919fb1a416656305ecde2200bee94d'
        '3c7674bb1a1c04f68e053a10d677de111e24c057b829b637f027877204e51096ffb4fce7cb986becda34674eedb841ccc9ab047128890d999fc181f3915799af'
        '74604b96a40fcd4a4bfb731f46c1a09281b89351f3034cea10d44834dd76833209e3b9ed58e877d69d92fe68cc890f5a811546a346c30ae692832f3a3dcd9ce7'
        '60124c379ccf8d69078a27a7cef7ecd2118e4b16f39ad44fa48dbef31bb674bf82499ea9d22502000d6e147f4214e5b53a0a0192f3f8a08ee260ad00baef8ef3'
        '2dcec9685638b890f46132e78d5b43412892fd4da8f2660b0f3641eb8f3a2bddd424e025d4584dca3a591e1915ec86e4ad15ae689f485ecbde1d4ab597d35da8'
        '3d9fbae153c13e54341547f7e348bf50bc8d566129d733a3f326121bcb70ba52cbb35c44d57e1efce3cadc5831efd9bb4c04cf3a0d8783aa1f67789aab4b37b2'
        'd328e90e72d4886410b23ef69ee92601b575d8b0d8f4a8faf2778e978c519285fa4fa6f9809233320f502fb554754eeb1e63c2878c8292cf24bae4b75dde01ad'
        'a88d1a565c738a24e570d3f7537214e602d0548823e95603eae013e3ce7928ab9270e64b17848d3975eebb70599d18a1dd2f30bdaeb28daf2316c0c716e2ecc9'
        '94079cac41fcde1701a1dce5a9ca023187563e7f6cec97ce191571fbdac2d75e714891d0cc461e63f28ac53bc31c66c730fb10d3963414c60fd8b50b92adec7b')

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
