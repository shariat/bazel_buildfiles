package(default_visibility = ["//visibility:public"])

cc_library(
    name = "lber",
    srcs = [

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
            ":include/ldap_config.h",

        ],
    hdrs = [],
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

cc_library(
    name = "ldap",
    srcs = [
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
            "libraries/libldap/tls.c",
            "libraries/libldap/os-local.c",
            "libraries/libldap/dnssrv.c",
            "libraries/libldap/utf-8.c",
            "libraries/libldap/utf-8-conv.c",
            "libraries/libldap/turn.c",
            "libraries/libldap/ppolicy.c",
            "libraries/libldap/dds.c",
            "libraries/libldap/txn.c",
            "libraries/libldap/ldap_sync.c",
            "libraries/libldap/stctrl.c",
            ":include/ldap_config.h",
        ],
    hdrs = [],
    includes = ["include"],
)

cc_library(
    name = "ldap_r",
    srcs = [
        ],
    hdrs = [],
    includes = [],
)