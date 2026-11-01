load("@rules_cc//cc:defs.bzl", "cc_toolchain")
load(":windows_cc_toolchain_config.bzl", "cc_toolchain_config")

def register_msys2_gcc_toolchain(name, compiler, root, target_libc, compiler_files):
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
