package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":ruli"])
pkg_exes()

cc_library(
    name = "ruli",
    srcs = [
            "src/ruli_isaac.c",
            "src/ruli_mem.c",
            "src/ruli_rand.c",
            "src/ruli_util.c",
            "src/ruli_list.c",
            "src/ruli_addr.c",
            "src/ruli_sock.c",
            "src/ruli_txt.c",
            "src/ruli_msg.c",
            "src/ruli_fsm.c",
            "src/ruli_res.c",
            "src/ruli_parse.c",
            "src/ruli_host.c",
            "src/ruli_srv.c",
            "src/ruli_conf.c",
            "src/ruli_search.c",
            "src/ruli_http.c",
            "src/ruli_smtp.c",
            "src/ruli_sync.c",
            "src/ruli_getaddrinfo.c",
    ],
    hdrs = [
            "src/ruli_addr.h",
            "src/ruli_getaddrinfo.h",
            "src/ruli_http.h",
            "src/ruli_list.h",
            "src/ruli_oop.h",
            "src/ruli_res.h",
            "src/ruli_sock.h",
            "src/ruli_txt.h",
            "src/ruli_conf.h",
            "src/ruli.h",
            "src/ruli_isaac.h",
            "src/ruli_mem.h",
            "src/ruli_parse.h",
            "src/ruli_search.h",
            "src/ruli_srv.h",
            "src/ruli_util.h",
            "src/ruli_fsm.h",
            "src/ruli_host.h",
            "src/ruli_limits.h",
            "src/ruli_msg.h",
            "src/ruli_rand.h",
            "src/ruli_smtp.h",
            "src/ruli_sync.h",
    ],
    includes = ["src"],
    copts = ["-pipe", "-fPIC", "-shared", "-D_REENTRANT"],
    deps = ["//external:liboop-latest"],
)

