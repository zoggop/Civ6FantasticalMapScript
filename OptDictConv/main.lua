local OptionDictionary = {
	{ name = "Wrapping", keys = { "wrapX" }, default = 1,
	values = {
			[1] = { name = "On", values = {true},
				description = "A globe, or, more technically, a cylinder that wraps East-West."},
			[2] = { name = "Off", values = {false},
				description = "No wrapping, a random aspect ratio, and if the climate is realistic, only one pole." },
 		}
	},
	{ name = "Ocean Rifts", keys = { "oceanNumber" }, default = 4,
	values = {
			[1] = { name = "All Land", values = {-1},
				description = "The map is all one continent, and the only bodies of water are inland seas and lakes." },
			[2] = { name = "None", values = {0},
				description = "No ocean rifts. The map will tend to be navegable via coastal waters." },
			[3] = { name = "One", values = {1},
				description = "One ocean rift. A wrapping map will not be circumnavegable along coastal waters. A non-wrapping map will have an ocean on one of its sides." },
			[4] = { name = "Two", values = {2},
				description = "Two ocean rifts. A wrapping map will have two groups of landmasses seperated by ocean tiles. A non-wrapping map will have an ocean on two of its sides." },
			[5] = { name = "Three", values = {3},
				description = "Three ocean rifts. A wrapping map will have three groups of landmasses seperated by ocean tiles. A non-wrapping map will be a peninsula." },
			[6] = { name = "Four", values = {4},
				description = "Four ocean rifts. A wrapping map will have five groups of landmasses seperated by ocean tiles. A non-wrapping map will be landmasses in the center surrounded entirely by ocean." },
			[7] = { name = "Five", values = {5},
				description = "Five ocean rifts. A wrapping map will have seven groups of landmasses seperated by ocean tiles. A non-wrapping map will be bounded by ocean with an ocean rift through the center." },
			[8] = { name = "Six", values = {6},
				description = "Six ocean rifts. A wrapping map will have seven groups of landmasses seperated by ocean tiles. A non-wrapping map will be bounded by ocean with two ocean rifts crisscrossing the center." },
			[9] = { name = "Random", values = "keys",
				description = "A random number of ocean rifts." },
		}
	},
	{ name = "Continents", keys = { "majorContinentNumber" }, default = 3,
	values = {
			[1] = { name = "None", values = {0} },
			[2] = { name = "One", values = {1} },
			[3] = { name = "Two", values = {2} },
			[4] = { name = "Three", values = {3} },
			[5] = { name = "Four", values = {4} },
			[6] = { name = "Five", values = {5} },
			[7] = { name = "Six", values = {6} },
			[8] = { name = "Seven", values = {7} },
			[9] = { name = "Eight", values = {8} },
			[10] = { name = "Random", values = "keys" },
		}
	},
	{ name = "Islands", keys = { "islandNumber", "tinyIslandTarget" }, default = 3,
	values = {
			[1] = { name = "None", values = {0, 0} },
			[2] = { name = "Few", values = {2, 3} },
			[3] = { name = "Some", values = {4, 7} },
			[4] = { name = "Many", values = {8, 13} },
			[5] = { name = "Tons", values = {16, 21} },
			[6] = { name = "Ridiculous", values = {32, 33} },
			[7] = { name = "Random", values = "keys" },
		}
	},
	{ name = "Sea Level", keys = { "openWaterRatio", "coastalExpansionPercent", "coastalPolygonChance", "astronomyBlobsMustConnectToOcean", "astronomyBlobNumber", "astronomyBlobMinPolygons", "astronomyBlobMaxPolygons" }, default = 3,
	values = {
			[1] = { name = "Very Low", values = {0.00, 85, 3, true, 0} },
			[2] = { name = "Low", values = {0.05, 75, 2, true, 0} },
			[3] = { name = "Standard", values = {0.1, 67, 1, true, 1, 1, 1} },
			[4] = { name = "High", values = {0.15, 60, 1, true, 2, 1, 1} },
			[5] = { name = "Very High", values = {0.2, 50, 0, false, 2, 2, 4} },
			[6] = { name = "Random", values = "keys" },
		}
	},
	{ name = "Inland Water Bodies", keys = { "inlandSeasMax", "inlandSeaContinentRatio", "lakeMinRatio" }, default = 2,
	values = {
			[1] = { name = "None", values = {0, 0, 0} },
			[2] = { name = "Some Lakes", values = {1, 0.01, 0.0065} },
			[3] = { name = "Many Lakes", values = {2, 0.01, 0.02} },
			[4] = { name = "Seas", values = {3, 0.04, 0.01} },
			[5] = { name = "One Big Sea", values = {1, 0.4, 0.0065} },
			[6] = { name = "Random", values = "values", lowValues = {0, 0, 0}, highValues = {3, 0.1, 0.02} },
		}
	},
	{ name = "Land at Poles", keys = { "polarMaxLandRatio" }, default = 1,
	values = {
			[1] = { name = "Yes", values = {0.4} },
			[2] = { name = "No", values = {0} },
			[3] = { name = "Random", values = "keys" },
 		}
	},
	{ name = "Climate Realism", keys = { "useMapLatitudes" }, default = 1,
	values = {
			[1] = { name = "Off", values = {false},
				description = "Climate does not follow latitudes. Nothing prevents poles from being hot and equator from being cold, or snow occuring next to tropical rainforest." },
			[2] = { name = "On", values = {true},
				description = "Climate follows latitudes, like a standard map." },
			[3] = { name = "Random", values = "keys",
				description = "Flip a coin to decide if the climate follows latitudes." },
 		}
	},
	{ name = "Granularity", keys = { "polygonCount" }, default = 2,
	values = {
			[1] = { name = "Low", values = {100},
				description = "Larger climactic regions, wider ocean rifts, pointier continents, and fewer islands" },
			[2] = { name = "Standard", values = {200},
				description = "A balance between global nonuniformity and local nonuniformity." },
			[3] = { name = "High", values = {300},
				description = "Smaller climactic regions, skinnier ocean rifts, round and snaky continents, and more islands." },
			[4] = { name = "Random", values = "values", lowValues = {100}, highValues = {300},
				description = "A random polygonal density." },
		}
	},
	{ name = "World Age", keys = { "mountainRatio" }, default = 4,
	values = {
			[1] = { name = "Newest", values = {0.25},
				description = "A quarter of the land is mountainous." },
			[2] = { name = "Newer", values = {0.17},
				description = "Large quantities of mountains and hills." },
			[3] = { name = "New", values = {0.1},
				description = "More mountains and hills." },
			[4] = { name = "Standard", values = {0.06},
				description = "Similar to Earth." },
			[5] = { name = "Old", values = {0.03},
				description = "Fewer mountains and hills." },
			[6] = { name = "Older", values = {0.005},
				description = "Almost no mountains or hills." },
			[7] = { name = "Random", values = "keys",
				description = "A random amount of mountains and hills." },
		}
	},
	{ name = "Temperature", keys = { "polarExponent", "temperatureMin", "temperatureMax", "freezingTemperature" }, default = 4,
	values = {
			[1] = { name = "Snowball", values = {1.8, 0, 15, 16},
				description = "No grassland, and very little plains. Ice sheets cover much of the oceans." },
			[2] = { name = "Ice Age", values = {1.6, 0, 39},
				description = "Very little grassland. Larger oceanic ice sheets than standard." },
			[3] = { name = "Cold", values = {1.4, 0, 67}, 
				description = "Less grassland than standard." },
			[4] = { name = "Standard", values = {1.2, 0, 99},
				description = "Similar to Earth." },
			[5] = { name = "Warm", values = {1.1, 8, 99},
				description = "Very little snow, and less tundra than standard." },
			[6] = { name = "Hot", values = {0.9, 26, 99},
				description = "No snow, and very little tundra." },
			[7] = { name = "Jurassic", values = {0.7, 43, 99},
				description = "No snow or tundra, and less plains than standard." },
			[8] = { name = "Random", values = "keys",
				description = "A random temperature." },
		}
	},
	{ name = "Rainfall", keys = { "rainfallMidpoint" }, default = 5,
	values = {
			[1] = { name = "Arrakis", values = {2},
				description = "No forest, rainforest, grassland, or plains." },
			[2] = { name = "Parched", values = {16},
				description = "No forest, rainforest, or grassland." },
			[3] = { name = "Treeless", values = {29},
				description = "No forest or rainforest." },
			[4] = { name = "Arid", values = {42},
				description = "Less forest and rainforest." },
			[5] = { name = "Standard", values = {49.5},
				description = "Similar to Earth." },
			[6] = { name = "Damp", values = {56},
				description = "Less desert; more forest and rainforest." },
			[7] = { name = "Wet", values = {62},
				description = "No desert; more forest and rainforest." },
			[8] = { name = "Drenched", values = {79},
				description = "No desert; lots of forest and rainforest." },
			[9] = { name = "Arboria", values = {92},
				description = "Almost entirely forest and rainforest." },
			[10] = { name = "Random", values = "keys",
				description = "A random rainfall." },
		}
	},
	{ name = "Ancient Roads", keys = { "ancientCitiesCount" }, default = 1,
	values = {
			[1] = { name = "None", values = {0},
				description = "No roads from previous civilizations." },
			[2] = { name = "Some", values = {4},
				description = "Ancient roads connect the ruins of four cities." },
			[3] = { name = "Many", values = {8},
				description = "Ancient roads connect the ruins of eight cities." },
		}
	},
}

local baseIndent = "\t\t"

local function RowToXML(row, noNewLines)
	local seperator = "\n"
	local indent = baseIndent .. "\t"
	if noNewLines then
		seperator = " "
		indent = ""
	end
	local refTbl = {}
	for k, v in pairs(row) do
		table.insert(refTbl, k)
	end
	table.sort(refTbl)
	local xml = baseIndent .. "<Row"
	for i, k in ipairs(refTbl) do
		local v = row[k]
		xml = xml .. seperator .. indent .. k .. "=\"" .. v .. "\""
	end
	xml = xml .. seperator
	if not noNewLines then
		xml = xml .. baseIndent
	end
	xml = xml .. "/>"
	return xml
end

local function OptionDictionaryToXML(optDict)
	local prefix = "FNTSTCL"
	local xml = ""
	-- parameters first
	for i, opt in ipairs(OptionDictionary) do
		local underscoredName = string.gsub(opt.name, " ", "_")
		local lowerName = string.lower(underscoredName)
		local row = {
			ParameterId = prefix .. "_" .. underscoredName,
			Name = opt.name,
			Description = opt.description or "",
			Domain = prefix .. "Domain_" .. underscoredName,
			ConfigurationId = lowerName,
			DefaultValue = opt.default,
			SortIndex = 300 + (10 * i),
			Key1 = "Map",
			Key2 = "Fantastical.lua",
			ConfigurationGroup = "Map",
			GroupId = "MapOptions",
			Hash = 0,
		}
		xml = xml .. RowToXML(row) .. "\n\n"
		-- print(RowToXML(row))
	end
	-- then domain values
	for i, opt in ipairs(OptionDictionary) do
		local underscoredName = string.gsub(opt.name, " ", "_")
		local lowerName = string.lower(underscoredName)
		for ii, value in ipairs(opt.values) do
			local row = {
				Domain = prefix .. "Domain_" .. underscoredName,
				Value = ii,
				Name = value.name,
				Description = value.description or "",
				SortIndex = 9 + ii,
			}
			xml = xml .. RowToXML(row, true) .. "\n"
			-- print(RowToXML(row))
		end
		xml = xml .. "\n"
	end
	return xml
end

function love.load()
   local success = love.filesystem.write( "thing.xml", OptionDictionaryToXML(OptionDictionary) )
	if success then print('written') end
end