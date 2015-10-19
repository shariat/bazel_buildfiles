package(default_visibility = ["//visibility:public"])

cc_library(
    name = "rl",
    deps = [":readline", ":history"],
)

cc_library(
  name = "readline",
  srcs = [
        "readline.c",
        "vi_mode.c",
        "funmap.c",
        "keymaps.c",
        "parens.c",
        "search.c",
        "rltty.c",
        "complete.c",
        "bind.c",
        "isearch.c",
        "display.c",
        "signals.c",
        "util.c",
        "kill.c",
        "undo.c",
        "macro.c",
        "input.c",
        "callback.c",
        "terminal.c",
        "text.c",
        "nls.c",
        "misc.c",
        "compat.c",
        "xmalloc.c",
        "history.c",
        "histexpand.c",
        "histfile.c",
        "histsearch.c",
        "shell.c",
        "mbutil.c",
        "config.h",
        ],
  hdrs = [
        "readline.h",
        "chardefs.h",
        "keymaps.h",
        "history.h",
        "tilde.h",
        "rlstdc.h",
        "rlconf.h",
        "rltypedefs.h",
        ],
  includes = ["."],
  copts = ["-DHAVE_CONFIG_H", '-DRL_LIBRARY_VERSION=\\"5.2\\"'],
  deps = ["//external:ncurses-latest", ":tilde"],
)

cc_library(
    name = "tilde",
    srcs = ["tilde.c", "config.h"],
    copts = ["-DHAVE_CONFIG_H", "-DREADLINE_LIBRARY"],
  includes = ["."],
)

cc_library(
  name = "history",
  srcs = [
        "xmalloc.c",
        "history.c",
        "histexpand.c",
        "histfile.c",
        "histsearch.c",
        "shell.c",
        "mbutil.c",
        "config.h",
        ],
  includes = ["."],
  copts = ["-DHAVE_CONFIG_H", '-DRL_LIBRARY_VERSION=\\"5.2\\"'],
)


