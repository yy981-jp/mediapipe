load("@rules_cc//cc:defs.bzl", "cc_toolchain_suite")
load(":msys2_toolchains.bzl", "register_msys2_gcc_toolchain")

package(default_visibility = ["//visibility:public"])

# The UCRT64 marker mirrors Bazel's generated mingw_compiler_files target.
# Keep its include-directory input distinct so UCRT64 actions have the correct
# system-header path in their action keys.
filegroup(
    name = "ucrt64_compiler_files",
    srcs = ["ucrt64_builtin_include_directory_paths.txt"],
)

register_msys2_gcc_toolchain(
    name = "mingw",
    compiler = "mingw-gcc",
    root = "c:/msys64/mingw64",
    target_libc = "mingw",
    compiler_files = "@local_config_cc//:mingw_compiler_files",
)

register_msys2_gcc_toolchain(
    name = "ucrt64",
    compiler = "ucrt64-gcc",
    root = "c:/msys64/ucrt64",
    target_libc = "ucrt",
    compiler_files = ":ucrt64_compiler_files",
)

cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "x64_windows|mingw-gcc": ":cc-compiler-x64_windows_mingw",
        "x64_windows|ucrt64-gcc": ":cc-compiler-x64_windows_ucrt64",
    },
)
