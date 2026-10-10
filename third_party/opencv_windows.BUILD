# Description:
#   OpenCV libraries for video/image processing on Windows

licenses(["notice"])  # BSD license

cc_library(
    name = "opencv",
    srcs = [
        "lib/libopencv_calib.dll.a",
        "lib/libopencv_features.dll.a",
        "lib/libopencv_highgui.dll.a",
        "lib/libopencv_video.dll.a",
        "lib/libopencv_videoio.dll.a",
        "lib/libopencv_imgcodecs.dll.a",
        "lib/libopencv_imgproc.dll.a",
        "lib/libopencv_core.dll.a",
    ],
    hdrs = glob(["include/opencv5/opencv2/**/*.h*"]),
    includes = ["include/opencv5"],
    data = [
        "bin/libopencv_calib-500.dll",
        "bin/libopencv_features-500.dll",
        "bin/libopencv_highgui-500.dll",
        "bin/libopencv_video-500.dll",
        "bin/libopencv_videoio-500.dll",
        "bin/libopencv_imgcodecs-500.dll",
        "bin/libopencv_imgproc-500.dll",
        "bin/libopencv_core-500.dll",
    ],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)
