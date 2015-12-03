package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":xmlrpc-epi"])
pkg_exes()

cc_library(
  name = "xmlrpc-epi",
  srcs = [
	"src/base64.c",
	"src/encodings.c",
	"src/queue.c",
	"src/simplestring.c",
	"src/xml_element.c",
	"src/xml_to_dandarpc.c",
	"src/xml_to_dandarpc.h",
	"src/xml_to_xmlrpc.c",
    "src/xml_to_soap.c",
	"src/xmlrpc.c",
	"src/xmlrpc_introspection.c",
    "src/system_methods.c",
    "src/xmlrpc_private.h",
    "src/xmlrpc_introspection_private.h",
    "src/system_methods_private.h",
    "src/xml_to_soap.h",
    ],

  hdrs = [
	"src/base64.h",
	"src/encodings.h",
	"src/queue.h",
	"src/simplestring.h",
	"src/xml_element.h",
	"src/xml_to_xmlrpc.h",
	"src/xmlrpc.h",
	"src/xmlrpc_introspection.h",
    ],
  copts = [
  '-DPACKAGE_NAME=\\"\\"',
  '-DPACKAGE_TARNAME=\\"\\"',
  '-DPACKAGE_VERSION=\\"\\"',
  '-DPACKAGE_STRING=\\"\\"',
  '-DPACKAGE_BUGREPORT=\"\"',
  '-DPACKAGE=\\"xmlrpc\\"',
  '-DVERSION=\\"0.54.1\\"',
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
  '-DLT_OBJDIR=\\".libs/\\"',
  '-DHAVE_EXPAT_H=1',
  '-DHAVE_LIBEXPAT=1',
  '-DSTDC_HEADERS=1',
  '-DHAVE_FCNTL_H=1',
  '-DHAVE_MALLOC_H=1',
  '-DHAVE_UNISTD_H=1',
  '-DHAVE_STDLIB_H=1',
  '-DHAVE_UNISTD_H=1',
  ],
  deps = ["//external:expat-latest"],
)
