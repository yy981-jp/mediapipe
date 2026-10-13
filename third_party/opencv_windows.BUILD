# OpenCV 5.0.0 built by Scalix's CMake configuration.

licenses(["notice"])

cc_library(
    name = "opencv",
    srcs = [
        "x64/mingw/lib/libopencv_calib500.dll.a",
        "x64/mingw/lib/libopencv_core500.dll.a",
        "x64/mingw/lib/libopencv_features500.dll.a",
        "x64/mingw/lib/libopencv_flann500.dll.a",
        "x64/mingw/lib/libopencv_geometry500.dll.a",
        "x64/mingw/lib/libopencv_imgcodecs500.dll.a",
        "x64/mingw/lib/libopencv_imgproc500.dll.a",
        "x64/mingw/lib/libopencv_objdetect500.dll.a",
        "x64/mingw/lib/libopencv_photo500.dll.a",
        "x64/mingw/lib/libopencv_ptcloud500.dll.a",
        "x64/mingw/lib/libopencv_stereo500.dll.a",
        "x64/mingw/lib/libopencv_video500.dll.a",
        "x64/mingw/lib/libopencv_videoio500.dll.a",
    ],
    hdrs = glob([
        "include/opencv2/*.h*",
        "include/opencv2/**/*.h*",
    ]),
    includes = ["include"],
    data = [
        "x64/mingw/bin/libopencv_calib500.dll",
        "x64/mingw/bin/libopencv_core500.dll",
        "x64/mingw/bin/libopencv_features500.dll",
        "x64/mingw/bin/libopencv_flann500.dll",
        "x64/mingw/bin/libopencv_geometry500.dll",
        "x64/mingw/bin/libopencv_imgcodecs500.dll",
        "x64/mingw/bin/libopencv_imgproc500.dll",
        "x64/mingw/bin/libopencv_objdetect500.dll",
        "x64/mingw/bin/libopencv_photo500.dll",
        "x64/mingw/bin/libopencv_ptcloud500.dll",
        "x64/mingw/bin/libopencv_stereo500.dll",
        "x64/mingw/bin/libopencv_video500.dll",
        "x64/mingw/bin/libopencv_videoio500.dll",
    ],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
