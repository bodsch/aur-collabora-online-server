# Maintainer: HLFH <gaspard@dhautefeuille.eu>

# Choose which language(s) to package (in addition to “en-us”)
# This is a “full-line” extended regular-expression, eg.: 'pt' if you want “pt” but not “pt-br” or “pt-pt”
_I18N_EREGEX='de'
_pkgname=collabora-online-server

# taking version of coolwsd:
pkgver=25.04.4.2
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

b2sums=('6a61c6c72cba227d73826da12a23005795318f2f3af75546ceb7891e5b4126c676f6568b3fe306ec40228005946727df52caf28fb95ce41e1f358b0d823188c4'
        '348323e5b6824ea889f50ebb2357b4ebbe81344a7476333aeebcfa13423f6e8bcf8f67f1e4f5c69b7c47224ac0f9d0ab59dbed6461d8afa11eac299c81eefb8f'
        '765a068a6b368d0934c48493e060a9962c87c6c66f21dae3d23282d42239f540e52465d6280def3284eeaeb0fbb9194f0fe87f1e77768f4e3625b44f68759253'
        'e06671584a958b7491dc78bc391cb7d6f6f854a6e2f3bd21679f44803f781bb46741df3b1524ce3798105037b3ca275f4c88975da04ec25551d8172397b34041'
        '1c2209a447dbe41a1d93198ee45b513aa29caa868100d9b5534fc2a10c8813dc0b792c0956420dce7476709d3de71c23f488176d77017a1c6ff7b21379e7e253'
        '421cb7a3ad16043f5d482667df347d22cfc607c689443814d02e10e5b105bf1c6b98ba03a65e349c100a2bb93a5b2a6067a84cd681bd6e6246085607c1bd48bf'
        '06250fbd2544898ca1a8fcce841fb00f4a9ec4c658b55ce15b2f5485e0a243d894e8eac5a93b2e6a5b126f09afb39e9bc035f137df4f24874fe57dc256d9f9ed'
        '65fae585d8af9e58be5b1000ec440bac95dbccd1ac8e8cf156d55005437b8e490158b2f0abc4439cc10d15ab43a99fc8ea3f2634a0eb7081812ecbb982778397'
        'a10149a4c70630526c1793008fedb00b6fb4d26441cfe0764e0b519b0a1f4e21e332602177eb56dc9f1b3bb8adf7851282abe71fbc265c36344b3f4db9f50e8b'
        'a0f37efc907db0ee5ee2a3de927b3e828edd5b4486abf8c504eeee2b2c2aacf08ff4e3599752dd6c400ae40d4fa8faefb2a1a5b16b00cdd10e1494ea3b8c26a1'
        'cf9605ec46762675dd7671c4eb8e5c4034927a9fc8130e7713622265cb889fcdfceb2dfee7a7f06b0a8d58bdb2f6b3e4aa97f6b9507237013407511f23e7dc7b'
        '58b5126dafec8e7fb51277304d6879256e2941a7d3c994b88d66b53378fe291279b87ed418765bcca43fb51361707f073fcd340e6af380762ed14ee9c16f29da'
        'c4449ebbea8ac58df0f082de92abad63b820c67c9e4aa7ecdaa9658c0abd7018b48430da61ff6d021a221795b73cf04984deca6f95676ed53bbff9f58bf743e6'
        '4c5162bbba79f62a0d5b4ef83b7c5bc0308f87f66b8e72beed7748eff9b462d6d1f63601393b6e8a47440443533e744d460d1228330155abc6d548909f551f46'
        'b0a05d6b454547ea4662ff23c21712d839df36fda35de9f6fa67ff8edba3688cbd98fbcbb97b52019768aa9cfb835720bdb16f728c19dc70a7827960a00f93c0'
        '1943c21b0e95ffdc9756369d8da46c2b35187e67a6b9b51fe20a48e801c0c6c7200429862ea78445e302837660e4be0af4c3157728878bab115ebf37b0120fe7'
        '525f975a7437f14f16e0df259a8862a0ae5a0ffde6db92b0c3ccc0b2a9c8b43aa8099e1284cf0cb65928090edeb2469242a75cecf1b46286bc4c001ed92bd2fb'
        'be8a0f843832e7bdf330bcf869df4260d35c698114fe377bf5b3ac98973a60574c97dca3555769fd6db25a5467244eda9c7ff998e85ad04aa732f2340178a378'
        '4769cbc6390215a22c60f7c3f097a7d44c2f2f27ca830039ec9cce8ab534705f9ac25fb58d01c6d4d4cae4440120e6d230483dc1cc12b38985b833fcbf0a5f1e'
        '90eb6f8689f6505e0c093a3497ead41c01c7d4459a3e2180af0140c6515d3c51523962670690c572b023f4b8ec6c279761756fa035786307430d83e72a56d8d9'
        '43392cf72d9dd1b1452628d2b6f7e266f9452ba9d786dcb96b661a7e9ac08a1893ed327339aadba7c97cd7a2dc73d05bc0e1821b18a0e0500dcc4bd2fae5204d'
        '748d657b881650c9382b4dec0c19a8b04e21c1677d1c2cf39cc94627d57448a657155765774989b1092354ad36716e9f701e7aa253167e5556919774e04b61e1'
        'a1378d9f770ee093e08c6795485e276a098ef2e5e9a3f0d050b32b53a182b11d99a509d02bcad2842a94bdeb7f9aae5ec5ef91d1f073453b554048cbe4f7deb4')

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
