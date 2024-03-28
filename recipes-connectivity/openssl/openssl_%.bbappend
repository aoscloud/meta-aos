do_install:append () {
    sed -i '/\[engine_section\]/d' ${D}${sysconfdir}/ssl/openssl.cnf
    sed -i '/^pkcs11 =/d' ${D}${sysconfdir}/ssl/openssl.cnf
    echo "[engine_section]" >> ${D}${sysconfdir}/ssl/openssl.cnf
    echo "pkcs11 = pkcs11_section" >> ${D}${sysconfdir}/ssl/openssl.cnf
}