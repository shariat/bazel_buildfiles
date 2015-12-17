package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = ["libltdl/ltdl.h"]

pkg_outs(
        libs = ["libltdl.so"],
        hdrs = EXTERNAL_HDRS,
        )

cc_binary(
        linkshared = 1,
        name = "libltdl.so",
        srcs = ALL_HDRS + [
            "libltdl/ltdl.c",
            ],
        includes = ["libltdl"],
        copts = ["-DHAVE_CONFIG_H"],
)

