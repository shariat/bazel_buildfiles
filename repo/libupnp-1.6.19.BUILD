package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
        "upnp/inc/UpnpString.h",
        "upnp/inc/upnp.h",
        "upnp/inc/upnpdebug.h",
        "upnp/inc/UpnpGlobal.h",
        "upnp/inc/UpnpInet.h",
        "upnp/inc/UpnpIntTypes.h",
        "upnp/inc/UpnpStdInt.h",
        "upnp/inc/UpnpUniStd.h",
        "upnp/inc/upnpconfig.h",
        "upnp/inc/upnptools.h",
        "ixml/inc/ixml.h",
        "ixml/inc/ixmldebug.h",
        "threadutil/inc/FreeList.h",
        "threadutil/inc/LinkedList.h",
        "threadutil/inc/ThreadPool.h",
        "threadutil/inc/TimerThread.h",
        "threadutil/inc/ithread.h",
]

pkg_outs(
        libs = ["libupnp.so", "libixml.so", "libthreadutil.so"],
        hdrs = EXTERNAL_HDRS,
        )


INTERNAL_HDRS = [
        "build/inc/autoconfig.h",
        "upnp/src/inc/config.h",
        "upnp/src/inc/client_table.h",
        "upnp/src/inc/gena.h",
        "upnp/src/inc/gena_ctrlpt.h",
        "upnp/src/inc/gena_device.h",
        "upnp/src/inc/global.h",
        "upnp/src/inc/gmtdate.h",
        "upnp/src/inc/httpparser.h",
        "upnp/src/inc/httpreadwrite.h",
        "upnp/src/inc/md5.h",
        "upnp/src/inc/membuffer.h",
        "upnp/src/inc/miniserver.h",
        "upnp/src/inc/netall.h",
        "upnp/src/inc/parsetools.h",
        "upnp/src/inc/server.h",
        "upnp/src/inc/service_table.h",
        "upnp/src/inc/soaplib.h",
        "upnp/src/inc/sock.h",
        "upnp/src/inc/statcodes.h",
        "upnp/src/inc/statuscodes.h",
        "upnp/src/inc/strintmap.h",
        "upnp/src/inc/ssdplib.h",
        "upnp/src/inc/sysdep.h",
        "upnp/src/inc/unixutil.h",
        "upnp/src/inc/upnpapi.h",
        "upnp/src/inc/upnp_timeout.h",
        "upnp/src/inc/uri.h",
        "upnp/src/inc/urlconfig.h",
        "upnp/src/inc/upnputil.h",
        "upnp/src/inc/uuid.h",
        "upnp/src/inc/VirtualDir.h",
        "upnp/src/inc/webserver.h",
        "upnp/src/ssdp/ssdp_ResultData.h",
        "ixml/src/inc/ixmlmembuf.h",
        "ixml/src/inc/ixmlparser.h",

]

qnap_cc_library(
    name = "libupnp.so",
    srcs = [
        "upnp/src/ssdp/ssdp_device.c",
        "upnp/src/ssdp/ssdp_ctrlpt.c",
        "upnp/src/ssdp/ssdp_server.c",
        "upnp/src/soap/soap_device.c",
        "upnp/src/soap/soap_ctrlpt.c",
        "upnp/src/soap/soap_common.c",
        "upnp/src/genlib/miniserver/miniserver.c",
        "upnp/src/genlib/service_table/service_table.c",
        "upnp/src/genlib/util/membuffer.c",
        "upnp/src/genlib/util/strintmap.c",
        "upnp/src/genlib/util/upnp_timeout.c",
        "upnp/src/genlib/util/util.c",
        "upnp/src/genlib/client_table/client_table.c",
        "upnp/src/genlib/net/sock.c",
        "upnp/src/genlib/net/http/httpparser.c",
        "upnp/src/genlib/net/http/httpreadwrite.c",
        "upnp/src/genlib/net/http/statcodes.c",
        "upnp/src/genlib/net/http/webserver.c",
        "upnp/src/genlib/net/http/parsetools.c",
        "upnp/src/genlib/net/uri/uri.c",
        "upnp/src/gena/gena_device.c",
        "upnp/src/gena/gena_ctrlpt.c",
        "upnp/src/gena/gena_callback2.c",
        "upnp/src/api/UpnpString.c",
        "upnp/src/api/upnpapi.c",
        "upnp/src/api/upnptools.c",
        "upnp/src/api/upnpdebug.c",
        "upnp/src/uuid/md5.c",
        "upnp/src/uuid/sysdep.c",
        "upnp/src/uuid/uuid.c",
        "upnp/src/urlconfig/urlconfig.c",
        "upnp/src/inet_pton.c",

        ],
    includes = ["upnp/src/inc", ".", "upnp/inc", "threadutil/inc", "ixml/inc", "build/inc"],
)

qnap_cc_library(
    name = "libixml.so",
    srcs = [
        "ixml/src/attr.c",
        "ixml/src/document.c",
        "ixml/src/element.c",
        "ixml/src/ixml.c",
        "ixml/src/ixmldebug.c",
        "ixml/src/ixmlparser.c",
        "ixml/src/ixmlmembuf.c",
        "ixml/src/namedNodeMap.c",
        "ixml/src/node.c",
        "ixml/src/nodeList.c",
        ],
    includes = [ "ixml/src/inc", "ixml/inc", "upnp/inc", "build/inc"],
    copts = ["-DNDEBUG"],
)

qnap_cc_library(
    name = "libthreadutil.so",
    srcs = [
            "threadutil/src/FreeList.c",
            "threadutil/src/LinkedList.c",
            "threadutil/src/ThreadPool.c",
            "threadutil/src/TimerThread.c",
        ],
    includes = ["threadutil/inc", "upnp/inc"],
    copts = ["-DNO_DEBUG", "-DNDEBUG"],
)
