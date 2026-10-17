# OpenCV 5.0.0 built from Scalix's external/opencv submodule.

licenses(["notice"])

cc_library(
    name = "opencv",
    srcs = glob([
        "lib/libopencv_*.5.0.0.dylib",
    ]),
    hdrs = glob([
        "include/opencv5/opencv2/*.h*",
        "include/opencv5/opencv2/**/*.h*",
    ]),
    includes = ["include/opencv5"],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
