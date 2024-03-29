LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"

SRCREV_crun = "d2ff390d37ca163ebff2467382b3a6d6c77c5ca6"
SRCREV_libocispec = "23aed835eed8d81d124977583551a81abe595a0c"
SRCREV_ispec = "4df8887994e871a59f9e30e8dd811d060f6a39ef"
SRCREV_rspec = "494a5a6aca782455c0fbfc35af8e12f04e98a55e"
SRCREV_yajl = "f344d21280c3e4094919fd318bc5ce75da91fc06"

SRC_URI = " \
    git://github.com/containers/crun.git;branch=main;name=crun;protocol=https \
    git://github.com/containers/libocispec.git;branch=main;name=libocispec;destsuffix=git/libocispec;protocol=https \
    git://github.com/opencontainers/runtime-spec.git;branch=main;name=rspec;destsuffix=git/libocispec/runtime-spec;protocol=https \
    git://github.com/opencontainers/image-spec.git;branch=main;name=ispec;destsuffix=git/libocispec/image-spec;protocol=https \
    git://github.com/containers/yajl.git;branch=main;name=yajl;destsuffix=git/libocispec/yajl;protocol=https \
"

PV = "1.8.3+git${SRCREV_crun}"

DEPENDS += "m4-native systemd"

do_configure:prepend () {
    # extracted from autogen.sh in crun source. This avoids
    # git submodule fetching.
    mkdir -p m4
    autoreconf -fi
}
