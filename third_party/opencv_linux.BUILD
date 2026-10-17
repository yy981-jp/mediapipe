# OpenCV 5.0.0 built from Scalix's external/opencv submodule.

licenses(["notice"])

cc_library(
    name = "opencv",
    srcs = glob([
        "lib/libopencv_*.so.5.0.0",
    ]),
    hdrs = glob([
        "include/opencv5/opencv2/*.h*",
        "include/opencv5/opencv2/**/*.h*",
    ]),
    includes = ["include/opencv5"],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
