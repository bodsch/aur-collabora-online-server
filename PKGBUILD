# Maintainer: HLFH <gaspard@dhautefeuille.eu>

# Choose which language(s) to package (in addition to “en-us”)
# This is a “full-line” extended regular-expression, eg.: 'pt' if you want “pt” but not “pt-br” or “pt-pt”
_I18N_EREGEX='de'
_pkgname=collabora-online-server

# taking version of coolwsd:
pkgver=25.04.8.1
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

b2sums=('935980367c3962a4aa1f388e4cd7f8fb5ae2d9b0334a3678e0c0e7f67025040ea3751bd112db5c3ef6d3d26e6adf9b27874c2fee1b8d4dccd24c0c299150d867'
        '348323e5b6824ea889f50ebb2357b4ebbe81344a7476333aeebcfa13423f6e8bcf8f67f1e4f5c69b7c47224ac0f9d0ab59dbed6461d8afa11eac299c81eefb8f'
        '765a068a6b368d0934c48493e060a9962c87c6c66f21dae3d23282d42239f540e52465d6280def3284eeaeb0fbb9194f0fe87f1e77768f4e3625b44f68759253'
        'e06671584a958b7491dc78bc391cb7d6f6f854a6e2f3bd21679f44803f781bb46741df3b1524ce3798105037b3ca275f4c88975da04ec25551d8172397b34041'
        '1c2209a447dbe41a1d93198ee45b513aa29caa868100d9b5534fc2a10c8813dc0b792c0956420dce7476709d3de71c23f488176d77017a1c6ff7b21379e7e253'
        'e6c710e1f0e283b707d0148e365e9a425bce53ec4083e8940ce5c36b06a13fc78b5649eff9c4dc1e9045baec9b2ad4bdae5b8b2f075eff7df39f05b50a469dc4'
        '44e3e9c1bd02dc9827979777e31ae3e85878beb085902187ca00cbb4e5b5e0461700a7ea236420ad8d5278bc386a78d8391dac3c5444c697c3be94379602b6ef'
        '9da5a5e254bdcd82e8b621582ed7470ca6bdf153760ef71a85bcf1d7068acfb0bba72052938fb4289f7d34d4c135f697ece1d7dd03072633a1401d3c42268eab'
        '6056a5ae3ddb9ef5a397d54df9d83fed0def495a4442e686e9168fbf43b0d2786018865939ed9199387cc8bd58b1458fc40e660ec4bd08d65e025a96c4a43a0d'
        'd80c6801c838ef9e9706ab69cc7f28e3f1be20ee0ddef67ea4332ed6905765c46f89d8b4aa9fe89d914876bb232e15e7424338fbc118eb0a7c3d8f77d533fa6f'
        '82717b7ad7fb797f5add92a98e135dce71a48870ff98166e1a00e838500cc213773475a5411d5f994c27d05ad90f238776d56fbfe493d034a6c7f432ecdc45d8'
        '8ec924529c109a1daa1ca0de4ecb6a2b3c8d3a5d9a17843677de205b4fad72006c9e0d45afb15eb74cade6361eaa83cee3d1f9777e6f0e24e8a7b975e5381756'
        '9ab20e0cfd7c1370d8e5bc797429496050e74d7f7a8b4bc583faccb1c153627ee2d2fdd9d9c76424e93649bf4bfe595290c001ed6c4611748dfd0e87d2fac58a'
        '9de13fd495fcbe3fea501cc29a46fb25d8e1c27af75c0a46d160f31ab86f434c254005675740c78fe699b659a084c122f4614fdc0d4935cfb58e665986c4b9fc'
        'b0209b2d229e625783dee14fc3acd57e5f4f6b8b38da9a9100a6bb32f8734f716366efb9f8a85762eb0054285da357f8a31ca39136481d1197312777b8f7b55f'
        'b0ecef7f961a4d375a4a5d31cd5142106793a87e394597b9ad8ef2a4122cd060d808af256e07a3635ebc045a4ccc23cd979c4673ad7cb70ee68c93267d46cff5'
        '42b3f434e4b5a090a7ff1ca29563b8574518ac5fe0b4c6cbb811bde8a453811384b6dc6508071df0f6cf1b4d7dd4e7d0bd5d82ec1c8175c633fde72eaf929e88'
        '12357aac0406e06c352bfb6556200d7b6309d1624dc771623a86ceb5af60471d60e849099835ee61f3a758eeadd341dfaf2d1cdb3363e517a77e9009105f1c9f'
        'aecb21a008567e2b1c08f95b72ce6c5c2492ecd86fdc02983ddbf0fb6d6b729c76fc896e33cc3ba88ab369b79d2be36bb191f16031bda8a7dd4edbf9f80668ad'
        '825662d435d08c6fbde608a63f269342ce3f8f40650074f9ed6ddfee4e31e8bc04c5b771d83830d743685b754c1454888d42001a43d134b9b1d9c863f02150bd'
        '7ddddde79e08e32de4f711e036cfb9e23d93b19a384a494ae0e17ba306b1aa3473966b32059169fa61bbb23358ae2ec7c034d8ba5f013f6385fe225cecb03360'
        'd3005e31d1e3c7d0bdb5cda0096689a6469be64f47818adc65bb72535ad5a6e5915bb22fa9fb62dcc28afb2277b0577aad297e65d95c6583935bc2025bb70152'
        '9a1a09cc15f16386c11209d3cfb2c4c20b0b3a9139cf6e3180d8571befe62715154ca108f3c8f4f0f9358b39b62013d4b96175149eae69631151bbc91784c351')

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
