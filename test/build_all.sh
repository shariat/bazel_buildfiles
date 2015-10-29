bazel clean

# --linkopt=-Wl,--strip-all: to strip all shared library
# --dynamic_mode=fully: to compile all shared library
# --hdrs_check=strict: to enable the header check

bazel build --hdrs_check=strict --linkopt=-Wl,--strip-all --dynamic_mode=fully --config=arm --define block_size=4096 \
@zlib-1.2.8//:z \
@popt-1.14//:popt \
@libid3tag-0.15.1b//:id3tag \
@json-c-0.9//:json-c \
@sqlite-3.4.1//:sqlite3 \
@thin-provisioning-tools-v0.4.1//:thintools \
@libaio-0.3.109//:aio \
@boost_1_59_0//:boost \
@expat-2.0.1//:expat \
@fio-2.0.11//:fio \
@xmlrpc//:xmlrpc-epi \
@libxml2-2.9.2//:xml2 \
@eventlog-0.2.7//:evtlog \
@rlog-1.4//:rlog \
@jpeg-6b-src//:jpeg \
@libevent-1.4.12-stable//:libevent \
@pam-0.99.7.1//:linux-pam \
@libffi-3.2.1//:ffi \
@ncurses-5.5//:nc \
@readline-5.2//:rl \
@backtrace//:backtrace_tools \
@gdbm-1.8.3//:libgdbm \
@freetype-2.3.7//:freetype \
@libtool-1.5.24//:ltdl \
@libupnp-1.6.19//:libupnp \
@libnfsidmap-0.23//:libnfsidmap \
@libgssglue-0.4//:gssglue \
@e2fsprogs-1.42.5//:com_err \
@openssl-1.0.1p//:openssl \
@openldap-2.4.33//:openldap \
@liboop-1.0//:oop \
@ruli-0.33//:ruli \
@libusb-1.0.9//:usb-1.0 \
@libusb-compat-0.1.4//:libusb-compat \



# @libstdcxx-v3//:stdc++ \
# @libtirpc-0.3.0//:tirpc \
# @librpcsecgss-0.19//:rpcsecgss \
# @krb5-1.13//:
