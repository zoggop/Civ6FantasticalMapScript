local OptionDictionary = {
	-- { name = "Landmass Type", keys = { "wrapX", "oceanNumber", "majorContinentNumber", "islandNumber", "tinyIslandTarget", "coastalPolygonChance", "astronomyBlobNumber", "astronomyBlobMinPolygons", "astronomyBlobMaxPolygons", "astronomyBlobsMustConnectToOcean" }, default = 6,
	-- values = {
	-- 		[1] = { name = "Land All Around", values = {
	-- 			oceanNumber = -1,
	-- 		}},
	-- 		[2] = { name = "Low Seas", values = {
	-- 			oceanNumber = 0,
	-- 			majorContinentNumber = 3,
	-- 			astronomyBlobNumber = 1,
	-- 			astronomyBlobMinPolygons = 1,
	-- 			astronomyBlobMaxPolygons = 1,
	-- 		}},
	-- 		[3] = { name = "Archipelago", values = {
	-- 			oceanNumber = 0,
	-- 			majorContinentNumber = 0,
	-- 			coastalPolygonChance = 2,
	-- 			islandNumber = 24,
	-- 			tinyIslandTarget = 16,
	-- 			astronomyBlobNumber = 2,
	-- 			astronomyBlobMinPolygons = 1,
	-- 			astronomyBlobMaxPolygons = 3,
	-- 		}},
	-- 		[4] = { name = "Pangaea", values = {
	-- 			oceanNumber = 1,
	-- 			majorContinentNumber = 1,
	-- 			islandNumber = 2,
	-- 			tinyIslandTarget = 5,
	-- 			astronomyBlobNumber = 1,
	-- 			astronomyBlobMinPolygons = 3,
	-- 			astronomyBlobMaxPolygons = 7,
	-- 			astronomyBlobsMustConnectToOcean = 	true,
	-- 		}},
	-- 		[5] = { name = "Alpha Centaurish", values = {
	-- 			oceanNumber = 1,
	-- 			majorContinentNumber = 3,
	-- 		}},
	-- 		[6] = { name = "Two Continents", values = {
	-- 			-- all defaults
	-- 		}},
	-- 		[7] = { name = "Earthish", values = {
	-- 			majorContinentNumber = 5,
	-- 			islandNumber = 4,
	-- 		}},
	-- 		[8] = { name = "Earthseaish", values = {
	-- 			oceanNumber = 3,
	-- 			majorContinentNumber = 9,
	-- 			coastalPolygonChance = 2,
	-- 			islandNumber = 10,
	-- 			tinyIslandTarget = 11,
	-- 		}},
	-- 		[9] = { name = "Lonely Oceans", values = {
	-- 			oceanNumber = 0,
	-- 			majorContinentNumber = 0,
	-- 			islandNumber = 20,
	-- 			tinyIslandTarget = 14,
	-- 			astronomyBlobNumber = 5,
	-- 		}},
	-- 		[10] = { name = "Every Civilization a Continent", values = {
	-- 			oceanNumber = 0,
	-- 			majorContinentNumber = ".iNumCivs",
	-- 			islandNumber = 0,
	-- 			tinyIslandTarget = ".iNumCivsDouble",
	-- 		}},
	-- 		[11] = { name = "Random Globe", values = "keys", randomKeys = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10} },
	-- 		-- [10] = { name = "Random Globe", values = "values",
	-- 			-- lowValues = { true, -1, 1, 1, 1, 1, 0, 1, 1, false },
	-- 			-- highValues = { true, 3, 8, 9, 13, 3, 3, 10, 20, true }
	-- 		-- },
	-- 		[12] = { name = "Dry Land", values = {
	-- 			wrapX = false,
	-- 			oceanNumber = -1,
	-- 		}},
	-- 		[13] = { name = "Estuary", values = {
	-- 			wrapX = false,
	-- 			oceanNumber = 0,
	-- 			majorContinentNumber = 3,
	-- 		}},
	-- 		[14] = { name = "Coastline", values = {
	-- 			wrapX = false,
	-- 			oceanNumber = 1,
	-- 			majorContinentNumber = 1,
	-- 			coastalPolygonChance = 2,
	-- 			islandNumber = 1,
	-- 		}},
	-- 		[15] = { name = "Coast", values = {
	-- 			wrapX = false,
	-- 			oceanNumber = 2,
	-- 			majorContinentNumber = 1,
	-- 			coastalPolygonChance = 2,
	-- 			islandNumber = 1,
	-- 		}},
	-- 		[16] = { name = "Peninsula", values = {
	-- 			wrapX = false,
	-- 			oceanNumber = 3,
	-- 			majorContinentNumber = 1,
	-- 			coastalPolygonChance = 2,
	-- 			islandNumber = 2,
	-- 		}},
	-- 		[17] = { name = "Continent", values = {
	-- 			wrapX = false,
	-- 			oceanNumber = 4,
	-- 			majorContinentNumber = 1,
	-- 			coastalPolygonChance = 3,
	-- 			islandNumber = 2,
	-- 			astronomyBlobNumber = 1,
	-- 			astronomyBlobMinPolygons = 3,
	-- 			astronomyBlobMaxPolygons = 7,
	-- 			astronomyBlobsMustConnectToOcean = true,
	-- 		}},
	-- 		[18] = { name = "Island Chain", values = {
	-- 			wrapX = false,
	-- 			oceanNumber = 4,
	-- 			majorContinentNumber = 7,
	-- 			coastalPolygonChance = 2,
	-- 			islandNumber = 10,
	-- 			astronomyBlobNumber = 2,
	-- 		}},
	-- 		[19] = { name = "Random Realm", values = "keys", randomKeys = {12, 13, 14, 15, 16, 17, 18} },
	-- 	}
	-- },
	{ name = "Wrapping", keys = { "wrapX" }, default = 1,
	values = {
			[1] = { name = "On", values = {true} },
			[2] = { name = "Off", values = {false} },
 		}
	},
	{ name = "Ocean Rifts", keys = { "oceanNumber" }, default = 4,
	values = {
			[1] = { name = "Dry World", values = {-1} },
			[2] = { name = "None", values = {0} },
			[3] = { name = "One", values = {1} },
			[4] = { name = "Two", values = {2} },
			[5] = { name = "Three", values = {3} },
			[6] = { name = "Four", values = {4} },
			[7] = { name = "Five", values = {oceanNumber=0, astronomyBlobNumber=5, astronomyBlobMinPolygons=12, astronomyBlobMaxPolygons=18} },
			[8] = { name = "Random", values = "keys" },
		}
	},
	{ name = "Continents", keys = { "majorContinentNumber" }, default = 3,
	values = {
			[1] = { name = "Only Islands", values = {0} },
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
			[4] = { name = "Many", values = {6, 13} },
			[5] = { name = "Tons", values = {8, 21} },
			[6] = { name = "No Continents", values = {16, 33} },
			[7] = { name = "Random", values = "values", lowValues = {0, 0}, highValues = {9, 15} },
		}
	},
	{ name = "Sea Level", keys = { "openWaterRatio", "coastalExpansionPercent", "coastalPolygonChance", "astronomyBlobsMustConnectToOcean", "astronomyBlobNumber", "astronomyBlobMinPolygons", "astronomyBlobMaxPolygons" }, default = 3,
	values = {
			[1] = { name = "Very Shallow", values = {0.00, 85, 3, true, 0} },
			[2] = { name = "Shallow", values = {0.05, 75, 2, true, 0} },
			[3] = { name = "Fair", values = {0.1, 67, 1, true, 1, 1, 1} },
			[4] = { name = "Deep", values = {0.15, 60, 1, true, 2, 1, 1} },
			[5] = { name = "Very Deep", values = {0.2, 50, 0, false, 2, 2, 4} },
			[6] = { name = "Random", values = "keys" },
		}
	},
	{ name = "Inland Water Bodies", keys = { "inlandSeasMax", "inlandSeaContinentRatio", "lakeMinRatio" }, default = 2,
	values = {
			[1] = { name = "None", values = {0, 0, 0} },
			[2] = { name = "Some Lakes", values = {1, 0.015, 0.0065} },
			[3] = { name = "Many Lakes", values = {2, 0.015, 0.02} },
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
			[1] = { name = "Off", values = {false} },
			[2] = { name = "On", values = {true} },
			[3] = { name = "Random", values = "keys" },
 		}
	},
	{ name = "Granularity", keys = { "polygonCount" }, default = 2,
	values = {
			[1] = { name = "Low", values = {100} },
			[2] = { name = "Fair", values = {200} },
			[3] = { name = "High", values = {300} },
			[4] = { name = "Random", values = "values", lowValues = {100}, highValues = {300} },
		}
	},
	{ name = "World Age", keys = { "mountainRatio" }, default = 4,
	values = {
			[1] = { name = "1 Billion Years", values = {0.25} },
			[2] = { name = "2 Billion Years", values = {0.17} },
			[3] = { name = "3 Billion Years", values = {0.1} },
			[4] = { name = "4 Billion Years", values = {0.06} },
			[5] = { name = "5 Billion Years", values = {0.03} },
			[6] = { name = "6 Billion Years", values = {0.005} },
			[7] = { name = "Random", values = "keys" },
		}
	},
	{ name = "Temperature", keys = { "polarExponent", "temperatureMin", "temperatureMax", "freezingTemperature" }, default = 4,
	values = {
			[1] = { name = "Snowball", values = {1.8, 0, 13, 16} },
			[2] = { name = "Ice Age", values = {1.6, 0, 33} },
			[3] = { name = "Cool", values = {1.4, 0, 71} },
			[4] = { name = "Temperate", values = {1.2, 0, 99} },
			[5] = { name = "Warm", values = {1.1, 6, 99} },
			[6] = { name = "Hot", values = {0.9, 26, 99} },
			[7] = { name = "Jurassic", values = {0.7, 50, 99} },
			[8] = { name = "Random", values = "keys" },
		}
	},
	{ name = "Rainfall", keys = { "rainfallMidpoint" }, default = 4,
	values = {
			[1] = { name = "Arrakis", values = {3} },
			[2] = { name = "Very Arid", values = {28} },
			[3] = { name = "Arid", values = {38} },
			[4] = { name = "Normal", values = {49.5} },
			[5] = { name = "Wet", values = {57} },
			[6] = { name = "Very Wet", values = {67} },
			[7] = { name = "Arboria", values = {84} },
			[8] = { name = "Random", values = "values", lowValues = {3}, highValues = {84} },
		}
	},
	{ name = "Ancient Roads", keys = { "ancientCitiesCount" }, default = 1,
	values = {
			[1] = { name = "None", values = {0} },
			[2] = { name = "Some", values = {4} },
			[3] = { name = "Many", values = {8} },
		}
	},
	-- { name = "Doomsday Age", keys = { "falloutEnabled", "contaminatedWater", "contaminatedSoil", "postApocalyptic", "ancientCitiesCount" }, default = 1,
	-- values = {
	-- 		[1] = { name = "Not Yet (No Ruins or Roads)", values = {false, false, false, false, 0} },
	-- 		[2] = { name = "Legend (Ruins & Roads)", values = {false, false, false, false, 4} },
	-- 		[3] = { name = "History (Fallout around Ruins)", values = {false, false, false, true, 4} },
	-- 		[4] = { name = "Memory (More Fallout)", values = {true, false, false, true, 4} },
	-- 		[5] = { name = "A Long While (Fallout in Mountains)", values = {true, false, true, true, 4} },
	-- 		[6] = { name = "A While (Fallout in Rivers)", values = {true, true, false, true, 4} },
	-- 		[7] = { name = "Yesterday (Fallout Everywhere)", values = {true, true, true, true, 4} },
	-- 		[8] = { name = "Random", values = "keys" },
	-- 	}
	-- },
}


local function RowToXML(row, noNewLines)
	local seperator = "\n"
	local indent = "\t"
	if noNewLines then
		seperator = " "
		indent = ""
	end
	local refTbl = {}
	for k, v in pairs(row) do
		table.insert(refTbl, k)
	end
	table.sort(refTbl)
	local xml = "<Row"
	for i, k in ipairs(refTbl) do
		local v = row[k]
		xml = xml .. seperator .. indent .. k .. "=\"" .. v .. "\""
	end
	xml = xml .. seperator .. "/>"
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