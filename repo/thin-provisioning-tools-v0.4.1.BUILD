package(default_visibility = ["//visibility:public"])

filegroup(
    name = "thintools",
    srcs = [ "pdata_tools", "thintools_bsadapt"],
)

cc_binary(
  name = "pdata_tools",
  srcs = glob(["base/*"]) +
         glob(["block-cache/*"]) + 
         glob(["caching/*"]) + 
         glob(["era/*"]) + 
         glob(["persistent-data/*.cc"], exclude = ["persistent-data/*.tcc"]) + 
         glob(["thin-provisioning/*"], exclude = ["thin-provisioning/create_xml_data", "thin-provisioning/thin_metadata_size.rb"] ) + 
         ["main.cc"],
  includes = ["."],
  deps = [
            "@boost_1_58_0//:variant",
            "@boost_1_58_0//:smart_ptr",
            "@boost_1_58_0//:static_assert",
            ],
)

cc_binary(
    name = "thintools_bsadapt",
    srcs = ["wrapper/thintools_bsadapt.c"],
)

