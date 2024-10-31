return {
  {
    "Civitasv/cmake-tools.nvim",
    opts = {
      cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- this will be passed when invoke `CMakeGenerate`
      cmake_build_directory = "./build",
      cmake_build_options = { "-j 8" }, -- this will be passed when invoke `CMakeBuild`
    },
  },
}
