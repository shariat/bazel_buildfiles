package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
        "include/rpcsecgss/rpc/auth.h",
        "include/rpcsecgss/rpc/auth_gss.h",
        "include/rpcsecgss/rpc/rpc.h",
        "include/rpcsecgss/rpc/rpcsecgss_rename.h",
        "include/rpcsecgss/rpc/svc.h",
        "include/rpcsecgss/rpc/svc_auth.h",
            ]

pkg_outs(
        libs = ["librpcsecgss.so"],
        hdrs = EXTERNAL_HDRS, 
        )

qnap_cc_library(
    name = "librpcsecgss.so",
    srcs = [
        "src/auth_gss.c",
        "src/authgss_prot.c",
        "src/svc.c",
        "src/svc_run.c",
        "src/svc_auth.c",
        "src/svc_auth_none.c",
        "src/svc_auth_unix.c",
        "src/svc_auth_gss.c",
        "src/svc_raw.c",
        "src/svc_simple.c",
        "src/svc_tcp.c",
        "src/svc_udp.c",
        "src/rpc_commondata.c",
        "src/clnt_generic.c",
        "src/clnt_perror.c",
        "src/clnt_raw.c",
        "src/clnt_simple.c",
        "src/clnt_tcp.c",
        "src/clnt_udp.c",

        "//external:krb5-so-latest",
        ],
    includes = ["include/rpcsecgss/"],
    copts = [
        '-DPACKAGE_NAME=\\"librpcsecgss\\"',
        '-DPACKAGE_TARNAME=\\"librpcsecgss\\"',
        '-DPACKAGE_VERSION=\\"0.19\\"',
        '-DPACKAGE_STRING=\\"librpcsecgss\ 0.19\\"',
        '-DPACKAGE_BUGREPORT=\\"nfsv4-wg@citi.umich.edu\\"',
        '-DSTDC_HEADERS=1',
        '-DHAVE_SYS_TYPES_H=1',
        '-DHAVE_SYS_STAT_H=1',
        '-DHAVE_STDLIB_H=1',
        '-DHAVE_STRING_H=1',
        '-DHAVE_MEMORY_H=1',
        '-DHAVE_STRINGS_H=1',
        '-DHAVE_INTTYPES_H=1',
        '-DHAVE_STDINT_H=1',
        '-DHAVE_UNISTD_H=1',
        '-DHAVE_DLFCN_H=1',
        '-DSTDC_HEADERS=1',
        '-DHAVE_STDDEF_H=1',
        '-DHAVE_STDLIB_H=1',
        '-DHAVE_STRING_H=1',
        '-DHAVE_UNISTD_H=1',
        '-DHAVE_STDLIB_H=1',
        '-DHAVE_MALLOC=1',
        '-DHAVE_STDLIB_H=1',
        '-DHAVE_REALLOC=1',
        '-DHAVE_MEMSET=1',
        '-DHAVE_STRERROR=1',
    ],
    deps = ["//external:krb5-hdr-latest"],
)

