package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
                "include/netlink/addr.h",
                "include/netlink/attr.h",
                "include/netlink/cache-api.h",
                "include/netlink/cache.h",
                "include/netlink/data.h",
                "include/netlink/fib_lookup/lookup.h",
                "include/netlink/fib_lookup/request.h",
                "include/netlink/genl/ctrl.h",
                "include/netlink/genl/family.h",
                "include/netlink/genl/genl.h",
                "include/netlink/genl/mngt.h",
                "include/netlink/handlers.h",
                "include/netlink/list.h",
                "include/netlink/msg.h",
                "include/netlink/netlink-compat.h",
                "include/netlink/netlink-kernel.h",
                "include/netlink/netlink.h",
                "include/netlink/object-api.h",
                "include/netlink/object.h",
                "include/netlink/route/addr.h",
                "include/netlink/route/class-modules.h",
                "include/netlink/route/class.h",
                "include/netlink/route/classifier-modules.h",
                "include/netlink/route/classifier.h",
                "include/netlink/route/cls/fw.h",
                "include/netlink/route/cls/police.h",
                "include/netlink/route/cls/u32.h",
                "include/netlink/route/link.h",
                "include/netlink/route/neighbour.h",
                "include/netlink/route/neightbl.h",
                "include/netlink/route/nexthop.h",
                "include/netlink/route/qdisc-modules.h",
                "include/netlink/route/qdisc.h",
                "include/netlink/route/route.h",
                "include/netlink/route/rtnl.h",
                "include/netlink/route/rule.h",
                "include/netlink/route/sch/cbq.h",
                "include/netlink/route/sch/dsmark.h",
                "include/netlink/route/sch/fifo.h",
                "include/netlink/route/sch/htb.h",
                "include/netlink/route/sch/netem.h",
                "include/netlink/route/sch/prio.h",
                "include/netlink/route/sch/red.h",
                "include/netlink/route/sch/sfq.h",
                "include/netlink/route/sch/tbf.h",
                "include/netlink/route/tc.h",
                "include/netlink/socket.h",
                "include/netlink/types.h",
                "include/netlink/utils.h",
]

pkg_outs(
            libs = ["libnl.so"],
            hdrs = EXTERNAL_HDRS, 
            )


qnap_cc_library(
    name = "libnl.so",
    srcs = glob(["lib/**/*.c"]),
    copts = ["-D_GNU_SOURCE"],
)

