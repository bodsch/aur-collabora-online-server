# Maintainer: HLFH <gaspard@dhautefeuille.eu>

# Choose which language(s) to package (in addition to “en-us”)
# This is a “full-line” extended regular-expression, eg.: 'pt' if you want “pt” but not “pt-br” or “pt-pt”
_I18N_EREGEX='de'
_pkgname=collabora-online-server

# taking version of coolwsd:
pkgver=25.04.3.1
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

b2sums=('fed7209eb721b53503bb52891a1acf0e9ac5f4ab1a641680ae61fad1c29334b2404f62fcec584bbfda776fbe11e0899e4a2f86261bb0f27a6553ff06734d8e0a'
        '348323e5b6824ea889f50ebb2357b4ebbe81344a7476333aeebcfa13423f6e8bcf8f67f1e4f5c69b7c47224ac0f9d0ab59dbed6461d8afa11eac299c81eefb8f'
        '765a068a6b368d0934c48493e060a9962c87c6c66f21dae3d23282d42239f540e52465d6280def3284eeaeb0fbb9194f0fe87f1e77768f4e3625b44f68759253'
        'e06671584a958b7491dc78bc391cb7d6f6f854a6e2f3bd21679f44803f781bb46741df3b1524ce3798105037b3ca275f4c88975da04ec25551d8172397b34041'
        '1c2209a447dbe41a1d93198ee45b513aa29caa868100d9b5534fc2a10c8813dc0b792c0956420dce7476709d3de71c23f488176d77017a1c6ff7b21379e7e253'
        'a56f28f6cb04e0d73c882643e88bef83b82198c8137a3a97e68c9a616631ea109d4457d2a4534324b491168ab4b03c042594889b1e549e55abb7cd38a509c549'
        'b1c2ea78d7ce02d17f088ab93d33fe010b7a97034e87f5aca463ba0cf2377cb0ee7a250a43df32c5dc5e6a0f5e2c16e88bf1d8d0779fd99cd55e900da327ab8d'
        '55073afa6ce392f2bf4c60c558f1f0d1af40416f382178f0a60f9fdc5e1beeb8033117f3a0022f347ee72e6144fafbbb57e3353f23447fcc23a986cbc147644a'
        '5e8782253c09df5745b8af01f836858d205acd5171b86818c94e0942860d77d4c412567d0da5aa2b9eb92939d7d7f4acb0f2c88606fbe67f80b67db7d0375ae6'
        '707084895238f6ff9d96ebdef7d1314c152fe7db8f022cdc0b15536dc0ddc1a9aed809f91e068b9ba155068d1519033e198d2be3b19b70ae7a6cb22d9ca8a766'
        '2bd5d22ee9481d51405742e25f02fc58fb934d9419beb99330bcf2e9dbebe3ca4027f2b3df96c4cf8fb0784acb496f1c73caf5b8710bfa2102f86fae81028bb8'
        'feb7cd5b2830c5c9f130fff17c9355b02a4fccf37e9f2a71d672cbcef9258808fdd6c332a29fab2bcb1ea2dee32924c15a43f88e58d72327c1234806ab37631f'
        'e5bffba830d8851be149fe83cd964b66aa1d52c075f18e13f3241a317d109bfa2dfc790e6fd186129899120572e1ee7cdb97eacc74ec46e9859660ae98602dbc'
        '83f78989a24b1e3a7a77dcfcac9542d4c898002459d6dece79c74fc4bb403437f73a130be78643a9774996b9dfd004eb3a89b07669fd18bc26a5a4030c697416'
        'fc855ff995f380a8229ec258f888250806781e4909a8551ebcff7922b40ec1c3cc36f1020f321f9ab1548b4cf808808c5c136edc50d28820691ca9a40f7d9781'
        'e2842caccca34eba78e7c34ad86a014fb66efe480804228d9e89d9ec11f431717a224e0dac421d3516283050e5b96d1e2961602659c44b014c92bf8e23fc9d66'
        '70a83733fd7912dd619adbb443c0ed5232ecef7ee447fe7bf8f7bdfeabd52de74565b81767f67e8c7e732f7f9dcc2f745cc992498109a4b3d617bdfda743469f'
        'c54b82e3dda48a77393ca9302fd05af55a3f0f51040b9541dbea8b075f5c9ad09bfc3f4967fbd933c5aacce047a91bbf1da78d33b21d4d2ecd7d048ab095adb5'
        'e4902f72fe68a92561288d5619a06bb035a4e1dcfacdfe396aeb6ab8625cb612351a5827c29e19d7d57f2b997b2e06551be4f0156d441ca6b5631c26fd393828'
        '8e476ffcff32fb4d709562ba34eb5f34b8c4054ff6b942abd869a49478c5dbef2decc65eae2a43001a185603d35b47f0eeb71fed77782f735823351ceb0a1551'
        '81333e260ec4ee64a0251ab2027a1f957dfd01914d1f15440f56632ac19d58c31cd10ad6474428f9c8e05b15d2e2ab44b9a7f03c4c727b12488c4d5dfad32977'
        '486ce8f606811c35660892ea39e1ba43d7589c676099cb7225ec21a565c4152522c2d4f3229b4bc0b8d207034670875e7a270fbabaeb40cde173f8342f6f5762'
        '74e2c993b4f952ba31f52a77c514ac888f8056f256f5841ef39185ae3e9227c686a6c6bd93c1119d1368cbdb5a1abd01ac34c27079f8e90a3e389d5d642a205e')

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
IFS='|' read -ra URLS <<< "$_main_debs"
for url in $(printf "%s\n" "${URLS[@]}" | sort); do
  echo "  $url"  >&2
done
echo "I18N DEBs"  >&2
IFS='|' read -ra URLS <<< "$_i18n_debs"
for url in $(printf "%s\n" "${URLS[@]}" | sort); do
  echo "  $url"  >&2
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
