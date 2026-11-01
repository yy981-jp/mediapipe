load("@rules_cc//cc:defs.bzl", "cc_toolchain", "cc_toolchain_suite")
load(":windows_cc_toolchain_config.bzl", "cc_toolchain_config")

package(default_visibility = ["//visibility:public"])

# The UCRT64 marker mirrors Bazel's generated mingw_compiler_files target.
# Keep its include-directory input distinct so UCRT64 actions have the correct
# system-header path in their action keys.
filegroup(
    name = "ucrt64_compiler_files",
    srcs = ["ucrt64_builtin_include_directory_paths.txt"],
)

def _register_msys2_gcc_toolchain(name, compiler, root, target_libc, compiler_files):
    bin_path = root + "/bin"
    config_name = "msys_x64_" + name
    toolchain_name = "cc-compiler-x64_windows_" + name

    cc_toolchain_config(
        name = config_name,
        cpu = "x64_windows",
        compiler = compiler,
        host_system_name = "local",
        target_system_name = "local",
        target_libc = target_libc,
        abi_version = "local",
        abi_libc_version = "local",
        tool_bin_path = bin_path,
        cxx_builtin_include_directories = [root + "/"],
        tool_paths = {
            tool: bin_path + "/" + tool
            for tool in [
                "ar",
                "cpp",
                "dwp",
                "gcc",
                "gcov",
                "ld",
                "nm",
                "objcopy",
                "objdump",
                "strip",
            ]
        },
        dbg_mode_debug_flag = "/DEBUG",
        fastbuild_mode_debug_flag = "/DEBUG",
    )

    cc_toolchain(
        name = toolchain_name,
        toolchain_identifier = "msys_x64_%s_with_linker_param_file" % name,
        toolchain_config = ":" + config_name,
        all_files = "@local_config_cc//:empty",
        ar_files = "@local_config_cc//:empty",
        as_files = compiler_files,
        compiler_files = compiler_files,
        dwp_files = "@local_config_cc//:empty",
        linker_files = "@local_config_cc//:empty",
        objcopy_files = "@local_config_cc//:empty",
        strip_files = "@local_config_cc//:empty",
        supports_param_files = 1,
    )

_register_msys2_gcc_toolchain(
    name = "mingw",
    compiler = "mingw-gcc",
    root = "c:/msys64/mingw64",
    target_libc = "mingw",
    compiler_files = "@local_config_cc//:mingw_compiler_files",
)

_register_msys2_gcc_toolchain(
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
