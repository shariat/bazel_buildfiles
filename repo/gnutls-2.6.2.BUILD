package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "includes/gnutls/compat.h",
            "includes/gnutls/crypto.h",
            "includes/gnutls/extra.h",
            "includes/gnutls/gnutls.h",
            "includes/gnutls/openpgp.h",
            "includes/gnutls/openssl.h",
            "includes/gnutls/pkcs12.h",
            "includes/gnutls/x509.h",
]

pkg_outs(
            libs = ["libgnutls.so", "libgnutls-extra.so", "libgnutls-openssl.so"],
            hdrs = EXTERNAL_HDRS,
            )


qnap_cc_library(
    name = "libgnutls.so",
    srcs = [
            "lib/gnutls_record.c",
            "lib/gnutls_compress.c",
            "lib/debug.c",
            "lib/gnutls_cipher.c",
            "lib/gnutls_buffers.c",
            "lib/gnutls_handshake.c",
            "lib/gnutls_num.c",
            "lib/gnutls_errors.c",
            "lib/gnutls_algorithms.c",
            "lib/gnutls_dh.c",
            "lib/gnutls_kx.c",
            "lib/gnutls_priority.c",
            "lib/gnutls_hash_int.c",
            "lib/gnutls_cipher_int.c",
            "lib/gnutls_session.c",
            "lib/gnutls_db.c",
            "lib/x509_b64.c",
            "lib/auth_anon.c",
            "lib/gnutls_extensions.c",
            "lib/gnutls_auth.c",
            "lib/gnutls_v2_compat.c",
            "lib/gnutls_datum.c",
            "lib/auth_rsa.c",
            "lib/gnutls_session_pack.c",
            "lib/gnutls_mpi.c",
            "lib/gnutls_pk.c",
            "lib/gnutls_cert.c",
            "lib/gnutls_global.c",
            "lib/gnutls_constate.c",
            "lib/gnutls_anon_cred.c",
            "lib/pkix_asn1_tab.c",
            "lib/gnutls_asn1_tab.c",
            "lib/gnutls_mem.c",
            "lib/auth_cert.c",
            "lib/gnutls_ui.c",
            "lib/gnutls_sig.c",
            "lib/auth_dhe.c",
            "lib/gnutls_dh_primes.c",
            "lib/ext_max_record.c",
            "lib/gnutls_alert.c",
            "lib/gnutls_str.c",
            "lib/gnutls_state.c",
            "lib/gnutls_x509.c",
            "lib/ext_cert_type.c",
            "lib/gnutls_rsa_export.c",
            "lib/auth_rsa_export.c",
            "lib/ext_server_name.c",
            "lib/auth_dh_common.c",
            "lib/gnutls_helper.c",
            "lib/gnutls_supplemental.c",
            "lib/crypto.c",
            "lib/random.c",
            "lib/pk-libgcrypt.c",
            "lib/mpi-libgcrypt.c",
            "lib/rnd-libgcrypt.c",
            "lib/cipher-libgcrypt.c",
            "lib/mac-libgcrypt.c",
            "lib/ext_srp.c",
            "lib/gnutls_srp.c",
            "lib/auth_srp.c",
            "lib/auth_srp_passwd.c",
            "lib/auth_srp_sb64.c",
            "lib/auth_srp_rsa.c",
            "lib/auth_psk.c",
            "lib/auth_psk_passwd.c",
            "lib/gnutls_psk.c",
            "lib/auth_dhe_psk.c",
            "lib/gnutls_psk_netconf.c",
            "lgl/asnprintf.c",
            "lgl/printf-args.c",
            "lgl/printf-parse.c",
            "lgl/read-file.c",
            "lgl/vasnprintf.c",
            "lgl/c-ctype.c",
            "lib/openpgp/pgp.c",
            "lib/openpgp/pgpverify.c",
            "lib/openpgp/extras.c",
            "lib/openpgp/compat.c",
            "lib/openpgp/privkey.c",
            "lib/openpgp/output.c",
            "lib/openpgp/gnutls_openpgp.c",
            "lib/opencdk/armor.c",
            "lib/opencdk/main.c",
            "lib/opencdk/kbnode.c",
            "lib/opencdk/dummy.c",
            "lib/opencdk/sig-check.c",
            "lib/opencdk/verify.c",
            "lib/opencdk/hash.c",
            "lib/opencdk/keydb.c",
            "lib/opencdk/pubkey.c",
            "lib/opencdk/stream.c",
            "lib/opencdk/write-packet.c",
            "lib/opencdk/misc.c",
            "lib/opencdk/seskey.c",
            "lib/opencdk/literal.c",
            "lib/opencdk/new-packet.c",
            "lib/opencdk/read-packet.c",
            "lib/minitasn1/decoding.c",
            "lib/minitasn1/gstr.c",
            "lib/minitasn1/errors.c",
            "lib/minitasn1/parser_aux.c",
            "lib/minitasn1/structure.c",
            "lib/minitasn1/element.c",
            "lib/minitasn1/coding.c",
            "lib/x509/crl.c",
            "lib/x509/dn.c",
            "lib/x509/common.c",
            "lib/x509/x509.c",
            "lib/x509/extensions.c",
            "lib/x509/rfc2818_hostname.c",
            "lib/x509/verify.c",
            "lib/x509/mpi.c",
            "lib/x509/privkey.c",
            "lib/x509/pkcs7.c",
            "lib/x509/crq.c",
            "lib/x509/sign.c",
            "lib/x509/privkey_pkcs8.c",
            "lib/x509/pkcs12.c",
            "lib/x509/pkcs12_bag.c",
            "lib/x509/pkcs12_encr.c",
            "lib/x509/x509_write.c",
            "lib/x509/crl_write.c",
            "lib/x509/output.c",
            "lib/x509/pbkdf2-sha1.c",

            "//external:gcrypt-so-latest",
            "//external:zlib-so-latest",
            "//external:gpg-error-so-latest",

    ],
    includes = ["lib", "includes", "lib/minitasn1", "lgl", "lib/opencdk", "lib/openpgp", "lib/x509"],
    copts = ['-DLOCALEDIR=\\"/usr/share/locale\\"'],
    deps = [
            "//external:gcrypt-hdr-latest",
            "//external:zlib-hdr-latest",
            "//external:gpg-error-hdr-latest",
            ],
)

qnap_cc_library(
    name = "libgnutls-extra.so",
    srcs = [
            "libextra/gnutls_extra.c",
            "libextra/fipsmd5.c",
            "libextra/ext_inner_application.c",
            "libextra/gnutls_ia.c",
            "libextra/gl/hmac-md5.c",
            "libextra/gl/md5.c",
            "libextra/gl/memxor.c",

            "libgnutls.so",
            "//external:libtasn1-so-latest",
            "//external:zlib-so-latest",
    ],
    includes = ["libextra", "lgl", "libextra/gl", "lib", "includes"],
    deps = [
            "//external:libtasn1-hdr-latest",
            "//external:zlib-hdr-latest",
    ],
)

qnap_cc_library(
    name = "libgnutls-openssl.so",
    srcs = [
            "libextra/gnutls_openssl.c",
            "libextra/openssl_compat.c",

            "libgnutls.so",
            "//external:libtasn1-so-latest",
            "//external:zlib-so-latest",
    ],
    includes = ["libextra", "lib", "includes"],
    deps = [
            "//external:libtasn1-hdr-latest",
            "//external:zlib-hdr-latest",
    ],
)
