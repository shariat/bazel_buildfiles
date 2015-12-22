package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
            "include/ldif.h",
            "include/ldap_utf8.h",
            "include/ldap_schema.h",
            "include/ldap_features.h",
            "include/ldap_cdefs.h",
            "include/ldap.h",
            "include/lber.h",
            "include/lber_types.h",
                ]

pkg_outs(
            libs = ["liblber.so", "libldap.so", "libldap_r.so"],
            hdrs = EXTERNAL_HDRS,
            )


cc_binary(
    linkshared = 1,
    name = "liblber.so",
    srcs = ALL_HDRS + [

            "libraries/liblber/assert.c",
            "libraries/liblber/decode.c",
            "libraries/liblber/encode.c",
            "libraries/liblber/io.c",
            "libraries/liblber/bprint.c",
            "libraries/liblber/debug.c",
            "libraries/liblber/memory.c",
            "libraries/liblber/options.c",
            "libraries/liblber/sockbuf.c",
            "libraries/liblber/stdio.c",
            "include/ldap_config.h",
        ],
    copts = ["-DLBER_LIBRARY"],
    includes = ["include"],
)

genrule(
    name = "ldap_config",
    srcs = ["include/ldap_config.hin"],
    outs = ["include/ldap_config.h"],
    cmd = """
	sed \
			-e "s;%SYSCONFDIR%;/usr/local/etc/openldap;" \
			-e "s;%DATADIR%;/usr/local/share/openldap;" \
			-e "s;%BINDIR%;/usr/local/bin;" \
			-e "s;%SBINDIR%;/usr/local/sbin;" \
			-e "s;%LIBEXECDIR%;/usr/local/libexec;" \
			-e "s;%MODULEDIR%;/usr/local/libexec/openldap;" \
			-e "s;%RUNDIR%;/usr/local/var;" \
			-e "s;%LOCALEDIR%;;" \
			 $< >> $@
    """,
)

cc_binary(
    linkshared = 1,
    name = "libldap.so",
    srcs = ALL_HDRS + [
            "libraries/libldap/bind.c",
            "libraries/libldap/open.c",
            "libraries/libldap/result.c",
            "libraries/libldap/error.c",
            "libraries/libldap/compare.c",
            "libraries/libldap/search.c",
            "libraries/libldap/controls.c",
            "libraries/libldap/messages.c",
            "libraries/libldap/references.c",
            "libraries/libldap/extended.c",
            "libraries/libldap/cyrus.c",
            "libraries/libldap/modify.c",
            "libraries/libldap/add.c",
            "libraries/libldap/modrdn.c",
            "libraries/libldap/delete.c",
            "libraries/libldap/abandon.c",
            "libraries/libldap/sasl.c",
            "libraries/libldap/gssapi.c",
            "libraries/libldap/sbind.c",
            "libraries/libldap/unbind.c",
            "libraries/libldap/cancel.c",
            "libraries/libldap/filter.c",
            "libraries/libldap/free.c",
            "libraries/libldap/sort.c",
            "libraries/libldap/passwd.c",
            "libraries/libldap/whoami.c",
            "libraries/libldap/getdn.c",
            "libraries/libldap/getentry.c",
            "libraries/libldap/getattr.c",
            "libraries/libldap/getvalues.c",
            "libraries/libldap/addentry.c",
            "libraries/libldap/request.c",
            "libraries/libldap/os-ip.c",
            "libraries/libldap/url.c",
            "libraries/libldap/pagectrl.c",
            "libraries/libldap/sortctrl.c",
            "libraries/libldap/vlvctrl.c",
            "libraries/libldap/init.c",
            "libraries/libldap/options.c",
            "libraries/libldap/print.c",
            "libraries/libldap/string.c",
            "libraries/libldap/util-int.c",
            "libraries/libldap/schema.c",
            "libraries/libldap/charray.c",
            "libraries/libldap/os-local.c",
            "libraries/libldap/dnssrv.c",
            "libraries/libldap/utf-8.c",
            "libraries/libldap/utf-8-conv.c",
            "libraries/libldap/tls2.c",
            "libraries/libldap/tls_o.c",
            "libraries/libldap/tls_g.c",
            "libraries/libldap/tls_m.c",
            "libraries/libldap/turn.c",
            "libraries/libldap/ppolicy.c",
            "libraries/libldap/dds.c",
            "libraries/libldap/txn.c",
            "libraries/libldap/ldap_sync.c",
            "libraries/libldap/stctrl.c",
            "libraries/libldap/assertion.c",
            "libraries/libldap/deref.c",
            "libraries/libldap/ldif.c",
            "libraries/libldap/fetch.c",

            "include/ldap_config.h",

            "//external:openssl-so-latest",
        ],
    copts = ["-DLDAP_LIBRARY"],
    includes = ["include"],
    deps = [
            "//external:openssl-hdr-latest",
        ],
)

cc_binary(
    linkshared = 1,
    name = "libldap_r.so",
    srcs = ALL_HDRS + [
            "libraries/libldap/bind.c",
            "libraries/libldap/open.c",
            "libraries/libldap/result.c",
            "libraries/libldap/error.c",
            "libraries/libldap/compare.c",
            "libraries/libldap/search.c",
            "libraries/libldap/controls.c",
            "libraries/libldap/messages.c",
            "libraries/libldap/references.c",
            "libraries/libldap/extended.c",
            "libraries/libldap/cyrus.c",
            "libraries/libldap/modify.c",
            "libraries/libldap/add.c",
            "libraries/libldap/modrdn.c",
            "libraries/libldap/delete.c",
            "libraries/libldap/abandon.c",
            "libraries/libldap/sasl.c",
            "libraries/libldap/gssapi.c",
            "libraries/libldap/sbind.c",
            "libraries/libldap/unbind.c",
            "libraries/libldap/cancel.c",
            "libraries/libldap/filter.c",
            "libraries/libldap/free.c",
            "libraries/libldap/sort.c",
            "libraries/libldap/passwd.c",
            "libraries/libldap/whoami.c",
            "libraries/libldap/getdn.c",
            "libraries/libldap/getentry.c",
            "libraries/libldap/getattr.c",
            "libraries/libldap/getvalues.c",
            "libraries/libldap/addentry.c",
            "libraries/libldap/request.c",
            "libraries/libldap/os-ip.c",
            "libraries/libldap/url.c",
            "libraries/libldap/pagectrl.c",
            "libraries/libldap/sortctrl.c",
            "libraries/libldap/vlvctrl.c",
            "libraries/libldap/init.c",
            "libraries/libldap/options.c",
            "libraries/libldap/print.c",
            "libraries/libldap/string.c",
            "libraries/libldap/util-int.c",
            "libraries/libldap/schema.c",
            "libraries/libldap/charray.c",
            "libraries/libldap/os-local.c",
            "libraries/libldap/dnssrv.c",
            "libraries/libldap/utf-8.c",
            "libraries/libldap/utf-8-conv.c",
            "libraries/libldap/tls2.c",
            "libraries/libldap/tls_o.c",
            "libraries/libldap/tls_g.c",
            "libraries/libldap/tls_m.c",
            "libraries/libldap/turn.c",
            "libraries/libldap/ppolicy.c",
            "libraries/libldap/dds.c",
            "libraries/libldap/txn.c",
            "libraries/libldap/ldap_sync.c",
            "libraries/libldap/stctrl.c",
            "libraries/libldap/assertion.c",
            "libraries/libldap/deref.c",
            "libraries/libldap/ldif.c",
            "libraries/libldap/fetch.c",
            "libraries/libldap_r/threads.c",
            "libraries/libldap_r/rdwr.c",
            "libraries/libldap_r/rmutex.c",
            "libraries/libldap_r/tpool.c",
            "libraries/libldap_r/rq.c",
            "libraries/libldap_r/thr_posix.c",
            "libraries/libldap_r/thr_cthreads.c",
            "libraries/libldap_r/thr_thr.c",
            "libraries/libldap_r/thr_nt.c",
            "libraries/libldap_r/thr_pth.c",
            "libraries/libldap_r/thr_stub.c",
            "libraries/libldap_r/thr_debug.c",

            "include/ldap_config.h",

            "//external:openssl-so-latest",
        ],
    copts = ["-DLDAP_R_COMPILE"],
    includes = ["include", "libraries/libldap"],
    deps = [
                "//external:openssl-hdr-latest",
                ],

)
