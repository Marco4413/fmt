require("premake", ">=5.0.0-beta4")

local buildpath  = "%{prj.location}/%{cfg.system}_%{cfg.architecture}/%{cfg.buildcfg}"

project "fmt"
  kind "StaticLib"
  language "C++"
  cppdialect "C++20"

  location "build/fmt"
  targetdir (buildpath)
  objdir    (buildpath .. "/obj")

  -- defines "FMT_HEADER_ONLY=1"
  includedirs "include"
  files {
    "include/fmt/args.h",
    "include/fmt/base.h",
    "include/fmt/chrono.h",
    "include/fmt/color.h",
    "include/fmt/compile.h",
    "include/fmt/core.h",
    "include/fmt/format-inl.h",
    "include/fmt/format.h",
    "include/fmt/os.h",
    "include/fmt/ostream.h",
    "include/fmt/printf.h",
    "include/fmt/ranges.h",
    "include/fmt/std.h",
    "include/fmt/xchar.h",

    "src/format.cc",
    "src/os.cc",
  }

  filter "configurations:Debug*"
    runtime "Debug"
    symbols "on"

  filter "configurations:Release*"
    runtime "Release"
    optimize "on"
