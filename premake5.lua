project "Box2D"
	language "C++"
	kind "StaticLib"
	staticruntime "on"

	targetname "box2d"
	targetdir "bin/%{cfg.buildcfg}"

	files
	{
		"include/box2d/**.h",
		"include/box2d/**.cpp",
		"src/**.h",
		"src/**.cpp"
	}

	includedirs
	{
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
