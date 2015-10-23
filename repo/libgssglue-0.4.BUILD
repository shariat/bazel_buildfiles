package(default_visibility = ["//visibility:public"])

cc_library(
    name = "gssglue",
    srcs = [
        "src/g_accept_sec_context.c",
        "src/g_acquire_cred.c",
        "src/g_compare_name.c",
        "src/g_context_time.c",
        "src/g_delete_sec_context.c",
        "src/g_dsp_name.c",
        "src/g_dsp_status.c",
        "src/g_dup_name.c",
        "src/gen_oids.c",
        "src/g_exp_name.c",
        "src/g_exp_sec_context.c",
        "src/g_glue.c",
        "src/g_imp_name.c",
        "src/g_imp_sec_context.c",
        "src/g_indicate_mechs.c",
        "src/g_initialize.c",
        "src/g_init_sec_context.c",
        "src/g_inq_context.c",
        "src/g_inq_cred.c",
        "src/g_inq_names.c",
        "src/g_mechname.c",
        "src/g_mit_krb5_mech.c",
        "src/g_oid_ops.c",
        "src/g_process_context.c",
        "src/g_rel_buffer.c",
        "src/g_rel_cred.c",
        "src/g_rel_name.c",
        "src/g_rel_oid_set.c",
        "src/g_seal.c",
        "src/g_sign.c",
        "src/gssd_pname_to_uid.c",
        "src/g_unseal.c",
        "src/g_verify.c",
        "src/oid_ops.c",
        "src/g_set_allowable_enctypes.c",
        "src/g_lucid_context.c",
        "src/g_canon_name.c",
        "src/g_wrap.c",
        "src/g_unwrap.c",
        "src/g_get_mic.c",
        "src/g_verify_mic.c",
        "src/g_ccache_name.c",
        "src/mglueP.h",
        "src/mechglue.h",
        ],
    hdrs = [":src/gssglue/gssapi/gssapi.h"],
    includes = ["src/gssglue"],
)

genrule(
    name = "gssapi.h",
    srcs = ["src/gssglue/gssapi/gssapi.h.in", "src/gssglue/config.h"],
    outs = ["src/gssglue/gssapi/gssapi.h"],
    cmd = """
	(echo "/* Beginning of gssapi.h prologue. */"
	echo "/*"
	echo " * This file is automatically generated."
	echo " * It contains this prologue, which includes information "
	echo " * from config.h generated during configuration, and the "
	echo " * base file gssapi.h.in "
	echo " */"
	grep SIZEOF $(location src/gssglue/config.h)
	echo "/* End of gssapi.h prologue. */"
	cat $(location src/gssglue/gssapi/gssapi.h.in) )> $@
        """,
)