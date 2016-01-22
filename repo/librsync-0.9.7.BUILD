package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["librsync-config.h", "librsync.h"]

pkg_outs(
            libs = ["librsync.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "librsync.so",
    srcs = [
                "prototab.c",
                "base64.c",
                "buf.c",
                "checksum.c",
                "command.c",
                "delta.c",
                "emit.c",
                "fileutil.c",
                "hex.c",
                "job.c",
                "mdfour.c",
                "mksum.c",
                "msg.c",
                "netint.c",
                "patch.c",
                "readsums.c",
                "rollsum.c",
                "scoop.c",
                "search.c",
                "stats.c",
                "stream.c",
                "sumset.c",
                "trace.c",
                "tube.c",
                "util.c",
                "version.c",
                "whole.c",

    ],
)

