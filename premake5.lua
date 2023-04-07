project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug-OpenGL"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release-OpenGL"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist-OpenGL"
		runtime "Release"
		optimize "on"
        symbols "off"

	filter "configurations:Debug-Vulkan"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release-Vulkan"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist-Vulkan"
		runtime "Release"
		optimize "on"
        symbols "off"
		
	filter "configurations:Debug-DX11"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release-DX11"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist-DX11"
		runtime "Release"
		optimize "on"
        symbols "off"
		
	filter "configurations:Debug-DX12"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release-DX12"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist-DX12"
		runtime "Release"
		optimize "on"
        symbols "off"
		
	filter "configurations:Debug-Metal"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release-Metal"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist-Metal"
		runtime "Release"
		optimize "on"
        symbols "off"
		
	