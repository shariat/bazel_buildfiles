package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "sys/acl.h",
            "acl/libacl.h",
]

pkg_outs(
            exes = ["setfacl", "getfacl"],
            libs = ["libacl.so"],
            hdrs = EXTERNAL_HDRS,
            )

OPTS = [
            '-DDEBUG',
            '-D_GNU_SOURCE',
            '-D_FILE_OFFSET_BITS=64',
            '-funsigned-char',
            '-fno-strict-aliasing',
            '-DVERSION=\\"2.2.49\\"',
            '-DLOCALEDIR=\\"/usr/share/locale\\"',
            '-DPACKAGE=\\"acl\\"',

]


qnap_cc_library(
    name = "libacl.so",
    srcs = [

            "libacl/perm_copy_fd.c",
            "libacl/perm_copy_file.c",
            "libacl/acl_add_perm.c",
            "libacl/acl_calc_mask.c",
            "libacl/acl_clear_perms.c",
            "libacl/acl_copy_entry.c",
            "libacl/acl_copy_ext.c",
            "libacl/acl_copy_int.c",
            "libacl/acl_create_entry.c",
            "libacl/acl_delete_def_file.c",
            "libacl/acl_delete_entry.c",
            "libacl/acl_delete_perm.c",
            "libacl/acl_dup.c",
            "libacl/acl_free.c",
            "libacl/acl_from_text.c",
            "libacl/acl_get_entry.c",
            "libacl/acl_get_fd.c",
            "libacl/acl_get_file.c",
            "libacl/acl_get_perm.c",
            "libacl/acl_get_permset.c",
            "libacl/acl_get_qualifier.c",
            "libacl/acl_get_tag_type.c",
            "libacl/acl_init.c",
            "libacl/acl_set_fd.c",
            "libacl/acl_set_file.c",
            "libacl/acl_set_permset.c",
            "libacl/acl_set_qualifier.c",
            "libacl/acl_set_tag_type.c",
            "libacl/acl_to_text.c",
            "libacl/acl_valid.c",
            "libacl/acl_size.c",
            "libacl/acl_to_any_text.c",
            "libacl/acl_entries.c",
            "libacl/acl_check.c",
            "libacl/acl_error.c",
            "libacl/acl_cmp.c",
            "libacl/acl_extended_fd.c",
            "libacl/acl_extended_file.c",
            "libacl/acl_equiv_mode.c",
            "libacl/acl_from_mode.c",
            "libacl/__acl_to_any_text.c",
            "libacl/__acl_to_xattr.c",
            "libacl/__acl_from_xattr.c",
            "libacl/__acl_reorder_obj_p.c",
            "libacl/__libobj.c",
            "libacl/__apply_mask_to_mode.c",
            ":mv_headers",
    
            "//external:attr-so-latest",
    ],
    includes = ["include"],
    copts = OPTS + ['-include', 'libacl/perm_copy.h'],
    deps = [
            "//external:attr-hdr-latest",
            ],
)

genrule(
    name = "mv_headers",
    srcs = ["include/acl.h", "include/libacl.h"],
    outs = [
            "sys/acl.h",
            "acl/libacl.h",
            ],
    cmd = """
    cp $(location include/acl.h) $(location sys/acl.h)
    cp $(location include/libacl.h) $(location acl/libacl.h)
    """
)

cc_library(
    name = "misc",
    srcs = [
    
            "libmisc/quote.c",
            "libmisc/unquote.c",
            "libmisc/high_water_alloc.c",
            "libmisc/next_line.c",
            "libmisc/walk_tree.c",

    ] + glob(["**/*.h"]),
    includes = ["include"],
)

qnap_cc_binary(
    name = "getfacl",
    srcs = [
            "getfacl/getfacl.c",
            "getfacl/user_group.c",
            ":mv_headers",

            "libacl.so",
    ],
    copts = OPTS,
    deps = [":misc"],
)

qnap_cc_binary(
    name = "setfacl",
    srcs = [
            "setfacl/setfacl.c",
            "setfacl/do_set.c",
            "setfacl/sequence.c",
            "setfacl/parse.c",
            ":mv_headers",

            "libacl.so",
    ],
    copts = OPTS,
    deps = [":misc"],
)
