package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":tasn1"])
pkg_exes()

cc_library(
    name = "tasn1",
    srcs = [
            "config.h",
            "lib/ASN1.c",
            "lib/decoding.c",
            "lib/gstr.c",
            "lib/errors.c",
            "lib/parser_aux.c",
            "lib/structure.c",
            "lib/element.c",
            "lib/coding.c",
            "lib/int.h",
            "lib/errors.h",
            "lib/parser_aux.h",
            "lib/gstr.h",
            "lib/element.h",
            "lib/structure.h",
    ],
    hdrs = ["lib/libtasn1.h"],
    includes = ["lib", "."],
    copts = ["-DHAVE_CONFIG_H"],
)

