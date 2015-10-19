package(default_visibility = ["//visibility:public"])

COPT_MACRO = ["-DHAVE_CONFIG_H", "-DLIBPAM_COMPILE", "-DWITH_SELINUX", '-DPAM_VERSION=\\"0.99.7.1\\"', '-DDEFAULT_MODULE_PATH=\\"/lib/security/\\"']

cc_library(
  name = "pam",
  srcs = [
        "libpam/pam_account.c",
        "libpam/pam_auth.c",
        "libpam/pam_data.c",
        "libpam/pam_delay.c",
        "libpam/pam_dispatch.c",
        "libpam/pam_end.c",
        "libpam/pam_env.c",
        "libpam/pam_handlers.c",
        "libpam/pam_item.c",
        "libpam/pam_misc.c",
        "libpam/pam_password.c",
        "libpam/pam_prelude.c",
        "libpam/pam_session.c",
        "libpam/pam_start.c",
        "libpam/pam_static.c",
        "libpam/pam_strerror.c",
        "libpam/pam_vprompt.c",
        "libpam/pam_syslog.c",
        "libpam/pam_dynamic.c",
        "libpam/pam_audit.c",
        "libpam/pam_modutil_cleanup.c",
        "libpam/pam_modutil_getpwnam.c",
        "libpam/pam_modutil_ioloop.c",
        "libpam/pam_modutil_getgrgid.c",
        "libpam/pam_modutil_getpwuid.c",
        "libpam/pam_modutil_getgrnam.c",
        "libpam/pam_modutil_getspnam.c",
        "libpam/pam_modutil_getlogin.c",
        "libpam/pam_modutil_ingroup.c",
        "config.h",
  
        "libpamc/pamc_client.c",
        "libpamc/pamc_converse.c",
        "libpamc/pamc_load.c",

        "libpam_misc/help_env.c",
        "libpam_misc/misc_conv.c",
  ],
  copts = COPT_MACRO,
  includes = [
        ".",
        "libpamc/include",
        "libpam/include",
        "libpam_misc/include"
        ],
  hdrs = [
        "modules/pam_filter/pam_filter.h",
        "libpam_misc/include/security/pam_misc.h",
        "libpamc/include/security/pam_client.h",
        "libpam/include/security/pam_appl.h",
        "libpam/include/security/_pam_compat.h",
        "libpam/include/security/pam_ext.h",
        "libpam/include/security/_pam_macros.h",
        "libpam/include/security/pam_modules.h",
        "libpam/include/security/pam_modutil.h",
        "libpam/include/security/_pam_types.h",
        ],
  # deps = [":pam", ":pamc", ":pam_misc"],
)

# cc_library(
#   name = "pam",
#   srcs = [
#         "libpam/pam_account.c",
#         "libpam/pam_auth.c",
#         "libpam/pam_data.c",
#         "libpam/pam_delay.c",
#         "libpam/pam_dispatch.c",
#         "libpam/pam_end.c",
#         "libpam/pam_env.c",
#         "libpam/pam_handlers.c",
#         "libpam/pam_item.c",
#         "libpam/pam_misc.c",
#         "libpam/pam_password.c",
#         "libpam/pam_prelude.c",
#         "libpam/pam_session.c",
#         "libpam/pam_start.c",
#         "libpam/pam_static.c",
#         "libpam/pam_strerror.c",
#         "libpam/pam_vprompt.c",
#         "libpam/pam_syslog.c",
#         "libpam/pam_dynamic.c",
#         "libpam/pam_audit.c",
#         "libpam/pam_modutil_cleanup.c",
#         "libpam/pam_modutil_getpwnam.c",
#         "libpam/pam_modutil_ioloop.c",
#         "libpam/pam_modutil_getgrgid.c",
#         "libpam/pam_modutil_getpwuid.c",
#         "libpam/pam_modutil_getgrnam.c",
#         "libpam/pam_modutil_getspnam.c",
#         "libpam/pam_modutil_getlogin.c",
#         "libpam/pam_modutil_ingroup.c",
#         "config.h",
#          ],
#   copts = COPT_MACRO,
#   includes = [".", "libpam/include"],
# )


# cc_library(
#   name = "pamc",
#   srcs = [
#         "libpamc/pamc_client.c",
#         "libpamc/pamc_converse.c",
#         "libpamc/pamc_load.c",
#          ],
#   includes = ["libpamc/include", "libpam/include"],
# )

# cc_library(
#   name = "pam_misc",
#   srcs = [
#           "libpam_misc/help_env.c",
#           "libpam_misc/misc_conv.c",
#           "config.h",
#          ],
#   copts = ["-Wno-address"],
#   includes = [".", "libpamc/include", "libpam/include", "libpam_misc/include"],
# )
