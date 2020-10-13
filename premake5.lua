include "./3rdPart/premake/premake_customization/solution_items.lua"

workspace "EmptyProject"
    architecture "x64"
    targetdir "build"
    startproject "Sandbox"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    flags
    {
        "MultiProcessorCompile"
    }

    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to 
IncludeDir = {}
 --%{wks.location}
LibraryDir = {}

-- Projects
group "Dependencies"
    include "3rdPart/premake"
group ""

include "EmptyProject"
include "Sandbox"

