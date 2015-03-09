VRJUGGLUA_ROOT = [[C:/Users/Public/Documents/DEMOS/windows-snapshot/bin/NavTestbed.exe]]

-- This is up here instead of inline in fillTemplate
-- so the batch files don't start with a bunch of tabs on
-- each line.
template = [[
pushd "%~dp0"
{VRJUGGLUA_ROOT} {argString}
pause
]]

launchers = {
	filename = "VRJuggLua %s.cmd";
	fillTemplate = function(argString)
		local result = template:gsub("{VRJUGGLUA_ROOT}", VRJUGGLUA_ROOT):gsub("{argString}", argString)
		return result
	end;
	options = {
		{
			["Adam Factory Navigation Only"] = [[spartaFactoryModel/Factory/standalone_main.lua]];
			["Adam Factory Forklift Driving"] = [[adam-factory/Factory/standalone_main.lua]];
			["Virtually Magic"] = [[virtually-magic/Scripts/main.lua]];
			["Virtual METaL"] = [[Virtual-METaL/main.lua]];
			["Blender Design Review"] = [[BlenderDesignReview/main.lua]];
			["Office_Building"] = [[OfficeBuilding/main.lua]];
			["Moon Effect"] = [[Moon_Effect/main.lua]];
			["Boeing 777"] = [[Boeing_777/main.lua]];
			["Framerate Sphere Drawing"] = [[Framerate/main.lua]];
			["Shopping Cart PhysicalRotation"] = [[SuperShoppingCart/main.lua SuperShoppingCart/MetalEverybody.jconf PhysicalRotation]];
			["Shopping Cart RateBasedRotation"] = [[SuperShoppingCart/main.lua SuperShoppingCart/MetalEverybody.jconf RateBasedRotation]];

		};
		
		{
			stereo = [[../jconf30/METaL.tracked.stereo.withwand.jconf]];
			mono = [[../jconf30/METaL.tracked.mono.withwand.jconf]];
		};
	};
}

require "generator-shared" (launchers)