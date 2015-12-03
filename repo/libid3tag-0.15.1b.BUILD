package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":id3tag"])
pkg_exes()

cc_library(
  name = "id3tag",
  srcs =  [
        "config.h",
        "version.c",
        "ucs4.c",
        "latin1.c",
        "utf16.c",
        "utf8.c",
        "parse.c",
        "render.c",
        "field.c",
        "frametype.c",
        "compat.c",
        "genre.c",
        "frame.c",
        "crc.c",
        "util.c",
        "tag.c",
        "file.c",
        "version.h",
        "ucs4.h",
        "latin1.h",
        "utf16.h",
        "utf8.h",
        "parse.h",
        "render.h",
        "field.h",
        "frametype.h",
        "compat.h",
        "genre.h",
        "frame.h",
        "crc.h",
        "util.h",
        "tag.h",
        "file.h",
        "global.h",
        "debug.h",

        ],
  hdrs = ["id3tag.h", "genre.dat"],
  copts = ["-DHAVE_CONFIG_H", "-w"],
  deps = ["//external:zlib-latest"],
)
