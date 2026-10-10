load("@rules_cc//cc:defs.bzl", "cc_toolchain", "cc_toolchain_suite")
load(":windows_cc_toolchain_config.bzl", "cc_toolchain_config")

package(default_visibility = ["//visibility:public"])

# Based on the Bazel 7.4.1 Windows config, with linker response files enabled
# for MinGW to keep the final link command below Windows' process limit.
cc_toolchain_config(
    name = "msys_x64_mingw",
    cpu = "x64_windows",
    compiler = "mingw-gcc",
    host_system_name = "local",
    target_system_name = "local",
    target_libc = "mingw",
    abi_version = "local",
    abi_libc_version = "local",
    tool_bin_path = "c:/msys64/mingw64/bin",
    cxx_builtin_include_directories = ["c:/msys64/mingw64/"],
    tool_paths = {
        "ar": "c:/msys64/mingw64/bin/ar",
        "cpp": "c:/msys64/mingw64/bin/cpp",
        "dwp": "c:/msys64/mingw64/bin/dwp",
        "gcc": "c:/msys64/mingw64/bin/gcc",
        "gcov": "c:/msys64/mingw64/bin/gcov",
        "ld": "c:/msys64/mingw64/bin/ld",
        "nm": "c:/msys64/mingw64/bin/nm",
        "objcopy": "c:/msys64/mingw64/bin/objcopy",
        "objdump": "c:/msys64/mingw64/bin/objdump",
        "strip": "c:/msys64/mingw64/bin/strip",
    },
    dbg_mode_debug_flag = "/DEBUG",
    fastbuild_mode_debug_flag = "/DEBUG",
)

cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "x64_windows|mingw-gcc": ":cc-compiler-x64_windows_mingw",
    },
)

cc_toolchain(
    name = "cc-compiler-x64_windows_mingw",
    toolchain_identifier = "msys_x64_mingw_with_linker_param_file",
    toolchain_config = ":msys_x64_mingw",
    all_files = "@local_config_cc//:empty",
    ar_files = "@local_config_cc//:empty",
    as_files = "@local_config_cc//:mingw_compiler_files",
    compiler_files = "@local_config_cc//:mingw_compiler_files",
    dwp_files = "@local_config_cc//:empty",
    linker_files = "@local_config_cc//:empty",
    objcopy_files = "@local_config_cc//:empty",
    strip_files = "@local_config_cc//:empty",
    supports_param_files = 1,
)
