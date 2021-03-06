package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "tirpc/netconfig.h",
            "tirpc/rpcsvc/crypt.x",
            "tirpc/rpcsvc/crypt.h",
            "tirpc/rpc/xdr.h",
            "tirpc/rpc/types.h",
            "tirpc/rpc/svc_soc.h",
            "tirpc/rpc/svc.h",
            "tirpc/rpc/svc_dg.h",
            "tirpc/rpc/svc_auth.h",
            "tirpc/rpc/rpc_msg.h",
            "tirpc/rpc/rpc.h",
            "tirpc/rpc/rpcsec_gss.h",
            "tirpc/rpc/rpcent.h",
            "tirpc/rpc/rpc_com.h",
            "tirpc/rpc/rpcb_prot.x",
            "tirpc/rpc/rpcb_prot.h",
            "tirpc/rpc/rpcb_clnt.h",
            "tirpc/rpc/raw.h",
            "tirpc/rpc/pmap_rmt.h",
            "tirpc/rpc/pmap_prot.h",
            "tirpc/rpc/pmap_clnt.h",
            "tirpc/rpc/nettype.h",
            "tirpc/rpc/clnt_stat.h",
            "tirpc/rpc/clnt_soc.h",
            "tirpc/rpc/clnt.h",
            "tirpc/rpc/auth_unix.h",
            "tirpc/rpc/auth_kerb.h",
            "tirpc/rpc/auth.h",
            "tirpc/rpc/auth_gss.h",
            "tirpc/rpc/des.h",
            "tirpc/rpc/des_crypt.h",
            "tirpc/rpc/auth_des.h",
            ]

pkg_outs(
            libs = ["libtirpc.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "libtirpc.so",
    srcs = [

        "src/auth_none.c",
        "src/auth_unix.c",
        "src/authunix_prot.c",
        "src/bindresvport.c",
        "src/clnt_bcast.c",
        "src/clnt_dg.c",
        "src/clnt_generic.c",
        "src/clnt_perror.c",
        "src/clnt_raw.c",
        "src/clnt_simple.c",
        "src/clnt_vc.c",
        "src/rpc_dtablesize.c",
        "src/getnetconfig.c",
        "src/getnetpath.c",
        "src/getrpcent.c",
        "src/getrpcport.c",
        "src/mt_misc.c",
        "src/pmap_clnt.c",
        "src/pmap_getmaps.c",
        "src/pmap_getport.c",
        "src/pmap_prot.c",
        "src/pmap_prot2.c",
        "src/pmap_rmt.c",
        "src/rpc_prot.c",
        "src/rpc_commondata.c",
        "src/rpc_callmsg.c",
        "src/rpc_generic.c",
        "src/rpc_soc.c",
        "src/rpcb_clnt.c",
        "src/rpcb_prot.c",
        "src/rpcb_st_xdr.c",
        "src/svc.c",
        "src/svc_auth.c",
        "src/svc_dg.c",
        "src/svc_auth_unix.c",
        "src/svc_auth_none.c",
        "src/svc_generic.c",
        "src/svc_raw.c",
        "src/svc_run.c",
        "src/svc_simple.c",
        "src/svc_vc.c",
        "src/getpeereid.c",
        "src/auth_time.c",
        "src/debug.c",
        "src/xdr.c",
        "src/xdr_rec.c",
        "src/xdr_array.c",
        "src/xdr_float.c",
        "src/xdr_mem.c",
        "src/xdr_reference.c",
        "src/xdr_stdio.c",
        "src/auth_gss.c",
        "src/authgss_prot.c",
        "src/svc_auth_gss.c",
        "src/rpc_gss_utils.c",
        "src/auth_des.c",
        "src/authdes_prot.c",
        "src/des_crypt.c",
        "src/des_impl.c",

        "//external:krb5-so-latest",
        "//external:e2fsprogs-so-latest",
        ],
    includes = ["tirpc"],
    copts = ["-DPORTMAP", "-DINET6", "-D_GNU_SOURCE", "-pipe", "-DHAVE_RPCSEC_GSS"],
    deps = [
        "//external:krb5-hdr-latest",
        "//external:e2fsprogs-hdr-latest",
    ],
)


