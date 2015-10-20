
bazel build --dynamic_mode=fully --config=x86_64 --define block_size=4096 \
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
@libevent-1.4.12-stable//:event-1.4 \
@pam-0.99.7.1//:linux-pam \
@libffi-3.2.1//:ffi \
@ncurses-5.5//:nc \
@readline-5.2//:rl \
@backtrace//:backtrace_tools