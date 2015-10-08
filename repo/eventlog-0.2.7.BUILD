package(default_visibility = ["//visibility:public"])

cc_library(
  name = "evtlog",
  srcs = [
    "src/evtrec.c",
    "src/evtfmt.c",
    "src/evtout.c",
    "src/evtstr.c",
    "src/evtctx.c",
    "src/evttags.c",
    "src/evtsyslog.c",
    "src/evt_internals.h",
    "config.h",
    ],
  hdrs = [
	"src/evtmaps.h",
	"src/evtlog.h",
    ],
  includes = ["."],
  copts = [
    '-DHAVE_CONFIG_H',
  ],
)