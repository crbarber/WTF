
WeakAurasSaved = {
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -97.9996337890625,
		["yOffset"] = -305.999450683594,
		["height"] = 492,
		["width"] = 629.999938964844,
	},
	["tempIconCache"] = {
		["Nithramus"] = "Interface\\Icons\\inv_jewelry_ring_89",
		["Maelstrom Weapon"] = "Interface\\Icons\\Spell_Shaman_MaelstromWeapon",
		["Tiger Power"] = "Interface\\Icons\\ability_monk_tigerpalm",
		["Resolve"] = "Interface\\Icons\\Spell_Shadow_Charm",
		["Lightning Shield"] = "Interface\\Icons\\Spell_Nature_LightningShield",
		["Etheralus"] = "Interface\\Icons\\inv_jewelry_ring_89",
	},
	["displays"] = {
		["LS3"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["xOffset"] = -105,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "3",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["id"] = "LS3",
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "LS Tracker",
		},
		["HFC Arch M P3 Soaking Positions"] = {
			["outline"] = true,
			["fontSize"] = 56,
			["xOffset"] = -143.999694824219,
			["displayText"] = "HELP SOAK: %c",
			["customText"] = "function()\n    WA_NNOGGA_SSOAKINGPOS = WA_NNOGGA_SSOAKINGPOS or \"??\"\n    if WA_NNOGGA_SSOAKINGPOS == 1 then\n        return \"RANGE MIDDLE (\"..WA_NNOGGA_SSOAKINGPOS..\")\"\n    end\n    if WA_NNOGGA_SSOAKINGPOS == 2 then\n        return \"MELEE LEFT (\"..WA_NNOGGA_SSOAKINGPOS..\")\"    \n    end\n    if WA_NNOGGA_SSOAKINGPOS == 3 then\n        return \"RANGE RIGHT (\"..WA_NNOGGA_SSOAKINGPOS..\")\"\n    end\n    if WA_NNOGGA_SSOAKINGPOS == 4 then\n        return \"MELEE RIGHT (\"..WA_NNOGGA_SSOAKINGPOS..\")\"\n    end\n    \nend\n\n\n\n\n",
			["yOffset"] = 91.0001831054688,
			["regionType"] = "text",
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
					["do_custom"] = true,
					["custom"] = "WA_NNOGGA_SSOAKINGPOS = WA_NNOGGA_SSOAKINGPOS or \"??\"\nC_Timer.After(0.15, function() \n        local freeMembers = {}\n        local freeMembersIdx = 1\n        --put all raidmembers who dont have Mark in List\n        for i = 1,MAX_RAID_MEMBERS do\n            if UnitExists(\"raid\" .. i) then\n                --unitaura\n                if not UnitDebuff(\"raid\" .. i, \"Mark of the Legion\") then\n                    freeMembers[freeMembersIdx] = 'raid' .. i\n                    freeMembersIdx = freeMembersIdx + 1\n                end\n            end    \n        end\n        \n        local playerName = UnitName(\"Player\")\n        --4,2,1,3\n        for i = 1,#freeMembers do\n            print(UnitName(freeMembers[i])..\" \"..i)\n            if 1<=i and i<=4 then\n                local name,_ = UnitName(freeMembers[i])\n                if name == playerName then \n                    WA_NNOGGA_SSOAKINGPOS = 4\n                    return\n                end\n            end\n            if 5<=i and i<=8 then\n                local name,_ = UnitName(freeMembers[i])\n                if name == playerName then \n                    WA_NNOGGA_SSOAKINGPOS = 2\n                    return\n                end\n            end\n            if 9<=i and i<=12 then\n                local name,_ = UnitName(freeMembers[i])\n                if name == playerName then \n                    WA_NNOGGA_SSOAKINGPOS = 3\n                    return\n                end\n            end\n            if 13<=i and i<=16 then\n                local name,_ = UnitName(freeMembers[i])\n                if name == playerName then \n                    WA_NNOGGA_SSOAKINGPOS = 1\n                    return\n                end\n            end\n        end\n        \nend)",
				},
				["finish"] = {
					["do_custom"] = true,
					["custom"] = "WA_NNOGGA_SSOAKINGPOS = \"??\"",
				},
				["init"] = {
				},
			},
			["untrigger"] = {
			},
			["trigger"] = {
				["type"] = "event",
				["unevent"] = "timed",
				["spellName"] = "Mark of the Legion",
				["duration"] = "10",
				["event"] = "Combat Log",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["custom_type"] = "event",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["inverse"] = true,
						["names"] = {
							"Mark of the Legion", -- [1]
							"Touch of the Legion", -- [2]
						},
						["unit"] = "player",
						["spellIds"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["width"] = 357.000030517578,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["anchorPoint"] = "CENTER",
			["height"] = 56.0000228881836,
			["id"] = "HFC Arch M P3 Soaking Positions",
			["load"] = {
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "HFC - Arch M P3 Mark of the Legion Group",
		},
		["LS11"] = {
			["xOffset"] = 7,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "LS11",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "11",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "LS Tracker",
		},
		["New 3"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 9,
			["displayStacks"] = "%s",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -272,
			["anchorPoint"] = "CENTER",
			["id"] = "New 3",
			["yOffset"] = -92.0000305175781,
			["regionType"] = "icon",
			["icon"] = true,
			["inverse"] = false,
			["additional_triggers"] = {
			},
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Action Usable",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 13750,
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["width"] = 64,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["preset"] = "bounceDecay",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
			},
			["height"] = 64,
			["untrigger"] = {
				["spellName"] = 13750,
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Sanctus ring"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 124637,
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124637,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_remaining"] = false,
				["event"] = "Cooldown Progress (Item)",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["use_itemName"] = true,
				["showOn"] = "showOnReady",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124637,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["type"] = "status",
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124637,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 75,
			["yOffset"] = 0,
			["inverse"] = true,
			["numTriggers"] = 2,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["id"] = "Sanctus ring",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS2"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "LS2",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "2",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -119,
		},
		["HFC - Arch M P3 Mark of the Legion Group"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"HFC Arch M P3 Mark of the Legion Icon", -- [1]
				"HFC Arch M P3 Mark of the Legion Core", -- [2]
				"HFC Arch M P3 Soaking Positions", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -43.0006103515625,
			["border"] = false,
			["yOffset"] = 118.000183105469,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = true,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["id"] = "HFC - Arch M P3 Mark of the Legion Group",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["NewChi3"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Chi",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["advance"] = false,
			["model_path"] = "SPELLS/Druid_Wrath_Impact_V2.m2",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["use_unit"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["power"] = "3",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["mirror"] = false,
			["untrigger"] = {
			},
			["height"] = 70,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["sequence"] = 1,
			["displayStacks"] = "%s",
			["scale"] = 1,
			["discrete_rotation"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["blendMode"] = "BLEND",
			["xOffset"] = 60,
			["inverse"] = false,
			["borderOffset"] = 5,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["model_z"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "NewChi3",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 70,
			["zoom"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["BasMael"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["countOperator"] = ">=",
				["names"] = {
					"Maelstrom Weapon", -- [1]
				},
				["useCount"] = true,
				["count"] = "1",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "Basic Mael",
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["additional_triggers"] = {
			},
			["id"] = "BasMael",
			["xOffset"] = 196.000061035156,
			["frameStrata"] = 1,
			["width"] = 100,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = -193.999877929688,
			["stickyDuration"] = false,
			["displayIcon"] = "Interface\\Icons\\Spell_Shaman_MaelstromWeapon",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Maalus ring"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 124636,
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124636,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["type"] = "status",
				["use_itemName"] = true,
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["event"] = "Cooldown Progress (Item)",
				["showOn"] = "showOnReady",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "Maalus ring",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 75,
			["yOffset"] = 0,
			["numTriggers"] = 2,
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["itemName"] = 124636,
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124636,
					},
				}, -- [1]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Nithramus CD"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "custom",
					["colorR"] = 1,
					["scaley"] = 1,
					["duration"] = "20",
					["x"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["alphaType"] = "straight",
					["rotate"] = 0,
					["scalex"] = 1,
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124635,
				["use_inverse"] = false,
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_remaining"] = true,
				["event"] = "Cooldown Progress (Item)",
				["remaining_operator"] = "<",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellIds"] = {
				},
				["use_itemName"] = true,
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = true,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124635,
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["type"] = "status",
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124635,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["itemName"] = 124635,
				["spellName"] = 115176,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 2,
			["inverse"] = true,
			["stickyDuration"] = false,
			["id"] = "Nithramus CD",
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Chi"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"NewChi1", -- [1]
				"NewChi4", -- [2]
				"NewChi5", -- [3]
				"NewChi6", -- [4]
				"NewChi3", -- [5]
				"NewChi2", -- [6]
				"Resolve", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -65.9996337890625,
			["border"] = false,
			["yOffset"] = -69.9998474121094,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["frameStrata"] = 1,
			["expanded"] = false,
			["untrigger"] = {
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderEdge"] = "None",
			["id"] = "Chi",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "group",
		},
		["Tiger Power 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 3.4884033203125,
			["stacksFlags"] = "None",
			["yOffset"] = -443.310745239258,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.596078431372549, -- [1]
				1, -- [2]
				0.607843137254902, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Exige",
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				0, -- [2]
				0.0509803921568627, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Aluminium",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 0.87,
			["borderInset"] = 11,
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "Tiger Power",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["names"] = {
					"Tiger Power", -- [1]
				},
			},
			["text"] = true,
			["stickyDuration"] = false,
			["textSize"] = 12,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["icon"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkWidth"] = 10,
			["displayStacks"] = "%s",
			["height"] = 21.9998092651367,
			["numTriggers"] = 1,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["border"] = false,
			["borderEdge"] = "None",
			["barInFront"] = true,
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["icon_side"] = "LEFT",
			["customTextUpdate"] = "update",
			["sparkRotation"] = 0,
			["sparkHeight"] = 30,
			["id"] = "Tiger Power 2",
			["stacksContainment"] = "INSIDE",
			["stacksColor"] = {
				1, -- [1]
				0, -- [2]
				0.0509803921568627, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["displayTextRight"] = "%p",
			["frameStrata"] = 1,
			["width"] = 308.999755859375,
			["borderBackdrop"] = "Blizzard Tooltip",
			["spark"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["stacksFont"] = "Friz Quadrata TT",
		},
		["Blademaster CD"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124224,
				["remaining_operator"] = "<=",
				["unit"] = "player",
				["remaining"] = "40",
				["custom_hide"] = "timed",
				["use_remaining"] = true,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["event"] = "Cooldown Progress (Item)",
				["use_itemName"] = true,
				["sourceunit"] = "player",
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["spellIds"] = {
				},
				["use_sourceunit"] = true,
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
			},
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 50,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["use_spec"] = true,
				["use_name"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Blademaster Trinket",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 50,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Blademaster CD",
			["untrigger"] = {
				["itemName"] = 124224,
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS8"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["xOffset"] = -35,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "8",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["id"] = "LS8",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "LS Tracker",
		},
		["HFC13: Chaos Mythic v15"] = {
			["outline"] = true,
			["color"] = {
				0.619607843137255, -- [1]
				0.611764705882353, -- [2]
				0.63921568627451, -- [3]
				0, -- [4]
			},
			["displayText"] = "Hello %c\n",
			["customText"] = "function()\n    \n    local f = WeakAuras[\"regions\"][aura_env.id][\"region\"]\n    f:SetWidth(max(f:GetWidth(), f:GetHeight()))\n    f:SetHeight(f:GetWidth())\n    local scale = f:GetWidth()/100\n    \n    f.bg = f.bg or f:CreateTexture(nil, \"BACKGROUND\", nil, 0)\n    f.bg:SetTexture(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\Circle_White_Border\")\n    f.bg:SetAllPoints(f)\n    f.bg:SetVertexColor(.3, .3, .3, .7)\n    \n    f.player = f.player or  f:CreateTexture(nil, \"BACKGROUND\", nil, 4)\n    f.player:SetTexture(\"Interface\\\\Addons\\\\WeakAuras\\\\PowerAurasMedia\\\\Auras\\\\Aura118\")\n    f.player:SetPoint(\"CENTER\", f, \"CENTER\", 0, 0)\n    f.player:SetWidth(10*scale)\n    f.player:SetHeight(10*scale)\n    \n    f.players = f.players or {}\n    f.lines = f.lines or {}\n    for i=1,20 do\n        f.lines[i] = f.lines[i] or  f:CreateTexture(nil,\"BACKGROUND\", nil, 2)\n        f.lines[i]:SetTexture(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\Square_White\")\n        f.lines[i]:SetVertexColor(0,1,0,1)\n        f.lines[i]:Hide()        \n        \n        f.players[i] = f.players[i] or f:CreateTexture(nil, \"BACKGROUND\", nil, 3)\n        f.players[i]:SetTexture(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\Circle_Smooth_Border\")\n        f.players[i]:SetWidth(4*scale)\n        f.players[i]:SetHeight(4*scale)\n        f.players[i]:Hide()\n        \n    end\n    \n    f.shackles = f.shackles or {}\n    f.shackletext = f.shackletext or {}\n    \n    for i=1,3 do\n        f.shackles[i] = f.shackles[i] or f:CreateTexture(nil, \"BACKGROUND\", nil, 2)\n        f.shackles[i]:SetTexture(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\Circle_White\")\n        f.shackles[i]:SetVertexColor(0,0,0.7,.5)\n        f.shackles[i]:Hide()\n        \n        f.shackletext[i] = f.shackletext[i] or  f:CreateFontString(nil, \"BACKGROUND\")\n        f.shackletext[i]:SetFont(\"Fonts\\\\FRIZQT__.TTF\", 6*scale, \"OUTLINE\")\n        f.shackletext[i]:Hide()\n    end\n    \n    f.shackleself = f.shackleself or f:CreateTexture(nil, \"BACKGROUND\", nil, 1)\n    f.shackleself:SetTexture(\"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\Circle_White\")\n    f.shackleself:SetVertexColor(0,0,0.7,.5)\n    f.shackleself:Hide()\n    \n    \n    local zoom = 1\n    \n    \n    --[[\n    f.sa = f.sa or  f:CreateFontString(nil, \"BACKGROUND\")\n    f.sa:SetFont(\"Fonts\\\\FRIZQT__.TTF\", 6*scale, \"OUTLINE\");\n    \n    f.sb = f.sb or  f:CreateFontString(nil, \"BACKGROUND\")    \n    f.sb:SetFont(\"Fonts\\\\FRIZQT__.TTF\", 6*scale, \"OUTLINE\")\n    ]]\n    \n    \n    for i=1,20 do\n        \n        local ax, ay, bx, by, da, db\n        local px, py = UnitPosition(\"player\")\n        \n        if UnitDebuff(\"raid\"..i, \"Focused Chaos\") then\n            \n            local focused = UnitName(\"raid\"..i)\n            local wrought = UnitName(select(8, UnitDebuff(\"raid\"..i, \"Focused Chaos\")))\n            \n            if focused then\n                ax, ay = UnitPosition(focused)\n                da = ((px-ax)^2+(py-ay)^2)^(1/2)\n                if da == 0 then zoom = zoom or 1 else zoom = min(2, 1/(da/50), zoom)  end\n            end\n            \n            if wrought then\n                bx, by = UnitPosition(wrought)\n                db = ((px-bx)^2+(py-by)^2)^(1/2)\n                if db == 0 then zoom = min(2, zoom) else zoom = min(2, zoom, 1/(db/50), zoom)  end\n            end\n        end\n        \n        if UnitDebuff(\"raid\"..i, \"Shackled Torment\") then\n            local name =  UnitName(\"raid\"..i)\n            if not aura_env.shackles[name] then\n                print(\"WA Chaos Error (1): \" .. name .. \" has Shackles, but no Coords stored!\")\n                \n            else\n                \n                local ax, ay = aura_env.shackles[name].x, aura_env.shackles[name].y\n                local da = ((px-ax)^2+(py-ay)^2)^(1/2)  + 26\n                if da == 0 then zoom = zoom or 1 else zoom = min(2, 1/(da/50), zoom)  end\n            end\n        end\n    end\n    \n    \n    \n    local lineidx = 0\n    for i=1,20 do\n        \n        local ax, ay, bx, by, da, db\n        local px, py = UnitPosition(\"player\")\n        \n        if UnitDebuff(\"raid\"..i, \"Focused Chaos\") then\n            lineidx = lineidx + 1\n            \n            local focused = UnitName(\"raid\"..i)\n            local wrought = UnitName(select(8, UnitDebuff(\"raid\"..i, \"Focused Chaos\")))\n            \n            if focused then\n                ax, ay = UnitPosition(focused)\n                da = ((px-ax)^2+(py-ay)^2)^(1/2)\n            end\n            \n            if wrought then\n                bx, by = UnitPosition(wrought)\n                db = ((px-bx)^2+(py-by)^2)^(1/2)\n            end\n            \n            --[[\n            if focused then      \n                local colors = RAID_CLASS_COLORS[select(2, UnitClass(focused))]\n                f.sa:SetVertexColor(colors.r, colors.g, colors.b, 1)\n                local radian = math.atan2((py - ay), (px - ax)) - GetPlayerFacing()\n                local ox = scale * zoom * da * math.cos(radian)  \n                local oy = scale * zoom * da * math.sin(radian)  \n                f.sa:SetPoint(\"CENTER\", f, \"CENTER\", oy, -ox)\n                f.sa:SetText(skull..focused)\n                f.sa:Show()\n            else\n                f.sa:Hide()\n                f.line:Hide()\n            end\n            \n            \n            if wrought then\n                local colors = RAID_CLASS_COLORS[select(2, UnitClass(wrought))]\n                f.sb:SetVertexColor(colors.r, colors.g, colors.b, 1)\n                local radian = math.atan2((py - by), (px - bx)) - GetPlayerFacing()\n                local ox =  scale * zoom * db * math.cos(radian)  \n                local oy =  scale * zoom * db * math.sin(radian)  \n                f.sb:SetPoint(\"CENTER\", f, \"CENTER\", oy, -ox)\n                f.sb:SetText(cross..wrought)\n                f.sb:Show()\n            else\n                f.sb:Hide()\n                f.line:Hide()\n            end\n            ]]\n            \n            if focused and wrought and (ax~=bx or ay~=by) then\n                --extend line beyond focused\n                do\n                    local x1 = (px-ax)*(zoom/2)\n                    local x2 = (px-bx)*(zoom/2)\n                    local y1 = (py-ay)*(zoom/2)\n                    local y2 = (py-by)*(zoom/2)\n                    local dx = x2-x1\n                    local dy = y2-y1\n                    local dr = math.sqrt(dx^2 + dy^2)\n                    --local dr = max(80, math.sqrt(dx^2 + dy^2))\n                    local D =  x1*y2 - x2*y1\n                    \n                    local t =  ((25)^2) * dr^2 - D^2\n                    if t >= 0 then\n                        local x1 = ( D*dy - dx*math.sqrt(t))/dr^2\n                        local y1 = (-D*dx - dy*math.sqrt(t))/dr^2\n                        ax= (px-(x1/(zoom/2)))\n                        ay= (py-(y1/(zoom/2)))\n                    end\n                end\n                \n                --color\n                local u = ((px-ax)*(bx-ax) + (py-ay)*(by-ay)) / ((bx-ax)^2 + (by-ay)^2)\n                local pdist = 10\n                \n                --[[if u < 0 then\n                    cx = ax\n                    cy = ay\n                end\n                if u > 1 then\n                    cx = bx\n                    cy = by\n                end--]] \n                \n                if u <= 1  then\n                    local cx = ax + u*(bx-ax)\n                    local cy = ay + u*(by-ay) \n                    pdist = sqrt((px-cx)^2+(py-cy)^2)\n                end\n                \n                if focused == UnitName(\"player\") or wrought == UnitName(\"player\") then\n                    f.lines[lineidx]:SetVertexColor(0,1,1,1)\n                elseif (pdist < 2.1  or (da == 0 and u == 1/0))  then\n                    f.lines[lineidx]:SetVertexColor(1,0,0,1)\n                    f.bg:SetVertexColor(.5, .3, .3, .7)\n                    if GetTime()  > (aura_env.lastWarn or 0) + 1 then\n                        aura_env.lastWarn = GetTime() \n                        PlaySoundFile(WeakAuras.PowerAurasSoundPath..\"sonar.ogg\", \"master\")\n                    end\n                    --[[\n                    if not aura_env.warned then\n                        PlaySoundFile(WeakAuras.PowerAurasSoundPath..\"sonar.ogg\", \"master\")\n                        aura_env.warned = true\n                    end\n                    ]]\n                    --else\n                    --    f.lines[i]:SetVertexColor(0,1,0,1)\n                    --aura_env.warned = nil\n                end\n                \n                --f.height = f.height or {}\n                --f.width = f.width or {}\n                \n                local height = scale * zoom * 3\n                local width =  scale * zoom * ((ax-bx)^2 + (ay-by)^2)^(0.5)\n                \n                \n                \n                \n                \n                if width == 0 then\n                    f.lines[lineidx]:Hide()\n                else            \n                    --translate\n                    local mx, my = (ax+bx)/2, (ay+by)/2\n                    local radian = math.atan2((py - my), (px - mx)) - GetPlayerFacing()\n                    local dm = ((px-mx)^2+(py-my)^2)^(1/2)\n                    local ox =  scale * zoom * dm * math.cos(radian)  \n                    local oy =  scale * zoom * dm * math.sin(radian)  \n                    f.lines[lineidx]:SetPoint(\"CENTER\", f, \"CENTER\", oy, -ox)\n                    \n                    --rotation angle\n                    local radian = math.atan2((ax - bx), (ay - by)) + GetPlayerFacing()\n                    radian = radian % (2 * math.pi)\n                    local angle = radian % (math.pi / 2)\n                    \n                    local left, top, right, bottom = 0, 0, 1, 1\n                    \n                    local dy = width * math.cos(angle) * math.sin(angle) * (bottom-top) / height\n                    local dx = height * math.cos(angle) * math.sin(angle) * (right - left) / width\n                    local ox = math.cos(angle) * math.cos(angle) * (right-left)\n                    local oy = math.cos(angle) * math.cos(angle) * (bottom-top)\n                    \n                    local newWidth = width*math.cos(angle) + height*math.sin(angle)\n                    local newHeight = width*math.sin(angle) + height*math.cos(angle)\n                    \n                    local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy\n                    \n                    if radian < math.pi / 2 then -- 0 ~ 90\n                        ULx = left - dx     ULy = bottom - oy\n                        LLx = right - ox    LLy = bottom + dy\n                        URx = left + ox     URy = top - dy\n                        LRx = right + dx    LRy = top + oy\n                    elseif radian < math.pi then -- 90 ~ 180\n                        URx = left - dx     URy = bottom - oy\n                        ULx = right - ox    ULy = bottom + dy\n                        LRx = left + ox     LRy = top - dy\n                        LLx = right + dx    LLy = top + oy\n                        newHeight, newWidth = newWidth, newHeight\n                    elseif radian < 3 * math.pi / 2 then -- 180 ~ 270\n                        LRx = left - dx     LRy = bottom - oy\n                        URx = right - ox    URy = bottom + dy\n                        LLx = left + ox     LLy = top - dy\n                        ULx = right + dx    ULy = top + oy\n                    else -- 270 ~ 360                \n                        LLx = left - dx     LLy = bottom - oy\n                        LRx = right - ox    LRy = bottom + dy\n                        ULx = left + ox     ULy = top - dy\n                        URx = right + dx    URy = top + oy\n                        newHeight, newWidth = newWidth, newHeight\n                    end\n                    \n                    f.lines[lineidx]:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)\n                    f.lines[lineidx]:SetWidth(newWidth)\n                    f.lines[lineidx]:SetHeight(newHeight)\n                    f.lines[lineidx]:Show()\n                end\n            end\n        end\n    end\n    \n    \n    local i = 0    \n    local px, py = UnitPosition(\"player\")\n    \n    for j = 1,20 do\n        if UnitExists(\"raid\"..j) and not UnitIsDead(\"raid\"..j) and UnitName(\"raid\"..j) ~= UnitName(\"player\") then\n            \n            local ax, ay = UnitPosition(\"raid\"..j)\n            local da = ((px-ax)^2+(py-ay)^2)^(1/2)\n            \n            if da <  48 / zoom then\n                local radian = math.atan2((py - ay), (px - ax)) - GetPlayerFacing()\n                local ox = scale * zoom * da * math.cos(radian)  \n                local oy = scale * zoom * da * math.sin(radian)  \n                local colors = RAID_CLASS_COLORS[select(2, UnitClass(\"raid\"..j))]\n                \n                f.players[j]:SetPoint(\"CENTER\", f, \"CENTER\", oy, -ox)\n                f.players[j]:SetVertexColor(colors.r, colors.g, colors.b, 1)\n                f.players[j]:Show()\n            end\n        end\n        \n        if UnitExists(\"raid\"..j) and UnitDebuff(\"raid\"..j, \"Shackled Torment\") then\n            i = i + 1\n            local name = UnitName(\"raid\"..j)\n            \n            \n            if not aura_env.shackles[name] then\n                print(\"WA Chaos Error (2): \" .. name .. \" has Shackles, but no Coords stored!\")\n            else\n                \n                local ax, ay = aura_env.shackles[name].x, aura_env.shackles[name].y\n                \n                local da = ((px-ax)^2+(py-ay)^2)^(1/2)\n                local radian = math.atan2((py - ay), (px - ax)) - GetPlayerFacing()\n                local ox = scale * zoom * da * math.cos(radian)  \n                local oy = scale * zoom * da * math.sin(radian)  \n                f.shackles[i]:SetPoint(\"CENTER\", f, \"CENTER\", oy, -ox)\n                f.shackletext[i]:SetPoint(\"CENTER\", f, \"CENTER\", oy, -ox)\n                \n                f.shackles[i]:SetWidth(51*scale*zoom)\n                f.shackles[i]:SetHeight(51*scale*zoom)\n                \n                f.shackletext[i]:SetVertexColor(1,1,1,.7)\n                if name == UnitName(\"player\") then\n                    f.shackles[i]:SetVertexColor(0,0,.7,.5)\n                    f.shackletext[i]:SetVertexColor(1,0,0,1)\n                    f.shackleself:SetVertexColor(.7, 0, .7, .5)\n                    f.shackleself:SetPoint(\"CENTER\", f, \"CENTER\", oy, -ox)\n                    \n                    f.shackleself:SetWidth(61*scale*zoom)\n                    f.shackleself:SetHeight(61*scale*zoom)\n                    f.shackleself:Show()\n                elseif da < 25.5  then\n                    f.shackles[i]:SetVertexColor(.7,0,0,.5)\n                else\n                    f.shackles[i]:SetVertexColor(0,0.7,0,.5)\n                end\n                \n                local count = 0\n                local count2 = 0\n                for k=1, 20 do\n                    local x, y = UnitPosition(\"raid\"..k)\n                    if not UnitIsDead(\"raid\"..k) and ((x-ax)^2 + (y-ay)^2)^(1/2) < 25.5 then\n                        if UnitDebuff(\"raid\"..k, \"Shackled Torment\") then\n                            count2 = count2 + 1\n                        else            \n                            count = count + 1\n                        end\n                    end\n                end\n                \n                \n                --f.shackletext[i]:SetText(count .. \"/\" .. count2)\n                f.shackletext[i]:SetText(count)\n                f.shackletext[i]:Show()\n                f.shackles[i]:Show()\n            end\n        end\n        \n    end\n    \n    return \"\"\nend",
			["untrigger"] = {
				["custom"] = "\n\n",
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "aura_env.focused = nil\naura_env.wrought = nil",
					["do_sound"] = false,
				},
				["init"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
				["finish"] = {
					["message"] = "",
					["custom"] = "aura_env.focused = nil\naura_env.wrought = nil\n\nprint(\"Hide\")",
					["do_sound"] = false,
					["do_custom"] = false,
					["do_message"] = false,
					["sound"] = " custom",
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "100",
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = true,
					["use_alpha"] = false,
					["type"] = "none",
					["translateFunc"] = "return function(progress, startX, startY, deltaX, deltaY)\n    --Hello World\n    return startX + (progress * deltaX), startY + (progress * deltaY)\nend\n\n\n",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["translateType"] = "custom",
					["scalex"] = 1,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["translateType"] = "circle",
					["type"] = "none",
					["use_translate"] = false,
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["custom_type"] = "event",
				["duration"] = "30",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Mark of the Wild", -- [1]
				},
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START",
				["custom"] = "function(event, ...)\n    local timeStamp, subevent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool, extraSpellID, extraSpellName, extraSchool = ...\n    \n    if event == \"ENCOUNTER_START\" then\n        aura_env.shackles = {} \n    end\n    \n    \n    if subevent == \"SPELL_CAST_SUCCESS\" and spellName == \"Wrought Chaos\" then\n        return true\n    end\n    \n    \n    if spellName == \"Shackled Torment\" then\n        \n        if subevent == \"SPELL_AURA_APPLIED\"  then\n            \n            local x, y = UnitPosition(destName)\n            \n            --table.insert(aura_env.shackles,  {[\"name\"]=destName, [\"x\"]=x, [\"y\"]=y})\n            aura_env.shackles[destName] = {[\"x\"]=x, [\"y\"]=y}\n            \n            \n            \n            return true\n        end\n        \n    end    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["unit"] = "player",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["desc"] = "pottm 07-24",
			["discrete_rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 240.767333984375,
			["rotate"] = true,
			["load"] = {
				["use_never"] = false,
				["zone"] = "",
				["encounterid"] = "1799",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
						["normal"] = true,
						["challenge"] = true,
						["heroic"] = true,
						["lfr"] = true,
						["none"] = true,
					},
				},
				["use_zone"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 11,
			["displayStacks"] = "%c",
			["mirror"] = false,
			["icon"] = true,
			["regionType"] = "icon",
			["desaturate"] = true,
			["blendMode"] = "BLEND",
			["stacksPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["texture"] = " ",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["numTriggers"] = 1,
			["id"] = "HFC13: Chaos Mythic v15",
			["yOffset"] = 292.559936523438,
			["frameStrata"] = 1,
			["width"] = 240.767547607422,
			["xOffset"] = 324.230590820313,
			["stickyDuration"] = false,
			["inverse"] = false,
			["justify"] = "LEFT",
			["rotation"] = 0,
			["displayIcon"] = "Interface\\Icons\\Spell_Fire_FelFlameRing",
			["cooldown"] = false,
			["textColor"] = {
				0.686274509803922, -- [1]
				0.686274509803922, -- [2]
				0.686274509803922, -- [3]
				0.584336638450623, -- [4]
			},
		},
		["Essence Tracker"] = {
			["outline"] = true,
			["fontSize"] = 30,
			["xOffset"] = 520,
			["displayText"] = "%c",
			["customText"] = "function()\n    local final_str = \"\"\n    for k, v in pairs(aura_env.essTable) do\n        local hp_abs, end_ts = unpack(v)\n        local hp_pc = hp_abs / 994821 * 100\n        local time_left = end_ts - GetTime()\n        local hp_colour\n        if hp_pc < 50.0 then\n            hp_colour = \"\\124cFFFF0000\"\n        elseif hp_pc < 80 then\n            hp_colour = \"\\124cFFFFA500\"\n        else\n            hp_colour = \"\\124cFF00FF00\"\n        end\n        final_str = final_str .. string.format(\"\\124nHP: %s%.1f\\124r Time: %.1f\", hp_colour, hp_pc, time_left)\n        if time_left < 0 then\n            aura_env.essTable[k] = nil\n            aura_env.essSeenTable[k] = true\n        end\n    end\n    return final_str\nend",
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n",
			},
			["regionType"] = "text",
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "-- I DONT KNOW WHAT aura_env IS BUT IT WORKS?\naura_env.essTable = {}\naura_env.essSeenTable = {}",
				},
				["finish"] = {
					["do_glow"] = false,
					["do_custom"] = false,
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "custom",
				["spellIds"] = {
				},
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
				["custom"] = "function(e, ts, se, hc, sGUID, sName, sFlags, sRFlags, dGUID, dName, dFlags, dRFlags, spellId, spellName, spellSchool, ...)\n    if dName == \"Tortured Essence\" then\n        if aura_env.essSeenTable[dGUID] == nil and not aura_env.essTable[dGUID] then\n            -- New Essence\n            aura_env.essTable[dGUID] = {198964, GetTime() + 15}\n        else\n            -- An event on an Essence we've seen\n            if se == \"SPELL_HEAL\" or se == \"SPELL_PERIODIC_HEAL\" then\n                -- Get the varargs\n                amount, overhealing = select(1, ...)\n                if overhealing > 0 then\n                    aura_env.essTable[dGUID] = nil\n                    aura_env.essSeenTable[dGUID] = true\n                else\n                    if amount ~= nil then\n                        aura_env.essTable[dGUID][1] = aura_env.essTable[dGUID][1] + amount\n                    end\n                end\n            end\n        end\n    end\n    return true\nend",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
			},
			["id"] = "Essence Tracker",
			["frameStrata"] = 1,
			["width"] = 1.00000751018524,
			["anchorPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["yOffset"] = 340,
			["height"] = 1.00000751018524,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1783",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["role"] = {
					["single"] = "HEALER",
					["multi"] = {
						["HEALER"] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS16"] = {
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.615686274509804, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LS16",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "16",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 77,
		},
		["Recently Moved"] = {
			["outline"] = true,
			["color"] = {
				0.101960784313725, -- [1]
				0.792156862745098, -- [2]
				0.180392156862745, -- [3]
				1, -- [4]
			},
			["displayText"] = "%p\n",
			["yOffset"] = -0.74859619140625,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Sniper Training: Recently Moved", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Accidental Presidency",
			["height"] = 73.9999542236328,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 37,
			["displayStacks"] = "%c",
			["regionType"] = "text",
			["untrigger"] = {
			},
			["cooldown"] = true,
			["parent"] = "Sniper Training 1",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "Recently Moved",
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["width"] = 2.3125171661377,
			["inverse"] = false,
			["xOffset"] = -56.888916015625,
			["numTriggers"] = 1,
			["justify"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.133333333333333, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Nithramus buff"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["colorR"] = 1,
					["scalex"] = 1,
					["duration_type"] = "seconds",
					["alphaType"] = "straight",
					["scaley"] = 1,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorA"] = 1,
					["rotate"] = 0,
					["duration"] = "20",
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124635,
				["remaining_operator"] = "<",
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_remaining"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
					"Nithramus", -- [1]
				},
				["event"] = "Cooldown Progress (Item)",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_inverse"] = false,
				["spellIds"] = {
				},
				["type"] = "aura",
				["showOn"] = "showOnCooldown",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "Nithramus buff",
			["untrigger"] = {
				["spellName"] = 115176,
				["itemName"] = 124635,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["stickyDuration"] = false,
			["numTriggers"] = 2,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["use_unit"] = true,
						["itemName"] = 124635,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124635,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["TimerText"] = {
			["outline"] = false,
			["fontSize"] = 30,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    if wa_cm_inprogress == true then\n        local _, timeCM = GetWorldElapsedTime(1)\n        timeMin = math.floor(timeCM / 60)\n        timeSec = math.floor(timeCM - (timeMin*60))\n        if timeMin < 10 then\n            timeMin = (\"0%d\"):format(timeMin)\n        end\n        if timeSec < 10 then\n            timeSec = (\"0%d\"):format(timeSec)\n        end\n        wa_cm_time_current = (\"%s:%s\"):format(timeMin, timeSec)\n    end\n    return wa_cm_time_current or \"00:00\"\nend\n\n\n\n",
			["untrigger"] = {
				["unit"] = "player",
			},
			["regionType"] = "text",
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["parent"] = "Challenge Mode",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
			},
			["id"] = "TimerText",
			["frameStrata"] = 1,
			["width"] = 86.9999923706055,
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["use_hostility"] = false,
				["unevent"] = "auto",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["use_character"] = false,
				["names"] = {
				},
				["use_class"] = false,
				["character"] = "player",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["event"] = "Unit Characteristics",
				["custom_type"] = "event",
				["custom_hide"] = "timed",
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 30.0000915527344,
			["xOffset"] = 0,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
					},
				},
			},
			["yOffset"] = 37.9997230316802,
		},
		["Ring"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Blademaster Ready 2", -- [1]
				"Blademaster Duration 2", -- [2]
				"Blademaster CD 2", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 332.000122070313,
			["border"] = false,
			["yOffset"] = 341.000061035156,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Ring",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Sanctus buff"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["colorR"] = 1,
					["scaley"] = 1,
					["duration"] = "20",
					["colorA"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["alphaType"] = "straight",
					["x"] = 0,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["y"] = 0,
					["rotate"] = 0,
					["scalex"] = 1,
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124637,
				["use_inverse"] = false,
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_remaining"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
					"Sanctus", -- [1]
				},
				["event"] = "Cooldown Progress (Item)",
				["use_itemName"] = true,
				["unit"] = "player",
				["remaining_operator"] = "<",
				["spellIds"] = {
				},
				["type"] = "aura",
				["showOn"] = "showOnCooldown",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "Sanctus buff",
			["untrigger"] = {
				["itemName"] = 124637,
				["spellName"] = 115176,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["stickyDuration"] = false,
			["numTriggers"] = 2,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124637,
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["type"] = "status",
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124637,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Blademaster CD 2"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["sourceunit"] = "player",
				["remaining_operator"] = "<=",
				["use_unit"] = true,
				["remaining"] = "40",
				["custom_hide"] = "timed",
				["type"] = "status",
				["unit"] = "player",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["event"] = "Cooldown Progress (Item)",
				["use_itemName"] = true,
				["itemName"] = 124224,
				["subeventSuffix"] = "_CAST_START",
				["use_remaining"] = true,
				["spellIds"] = {
				},
				["use_sourceunit"] = true,
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = true,
			["progressPrecision"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 50,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Ring",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
			},
			["untrigger"] = {
				["itemName"] = 124224,
			},
			["frameStrata"] = 1,
			["width"] = 50,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Blademaster CD 2",
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Blademaster Ready"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["itemName"] = 124224,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124224,
				["custom_hide"] = "timed",
				["unevent"] = "timed",
				["type"] = "event",
				["use_itemName"] = true,
				["event"] = "Cooldown Ready (Item)",
				["names"] = {
				},
				["sourceunit"] = "player",
				["unit"] = "player",
				["spellIds"] = {
				},
				["use_sourceunit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 50,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["use_spec"] = true,
				["use_name"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Blademaster Trinket",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["additional_triggers"] = {
			},
			["yOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Blademaster Ready",
			["icon"] = true,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Digest bar"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.643137254901961, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1783",
				["use_name"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
						["twenty"] = true,
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Minimalist",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Gorefiend Digest Timers",
			["barInFront"] = true,
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "10",
					["colorB"] = 1,
					["colorG"] = 1,
					["use_alpha"] = false,
					["type"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0,
					["scalex"] = 1,
					["y"] = 0,
					["x"] = 0,
					["use_color"] = true,
					["colorType"] = "custom",
					["colorFunc"] = "return function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    -- Set the debuff and threshold time here:\n    local debuff_name, warning_time = \"Digest\", 10\n    \n    local _,_,_,_,_,_,expires, etc = UnitDebuff(\"target\", debuff_name, nil)\n    if expires ~= nil then\n        local time_left = expires - GetTime()\n        if time_left < warning_time then\n            return r2, g2, b2, a2\n        end\n    end\n    return r1,g1,b1, a1\nend",
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "multi",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["subeventPrefix"] = "SPELL",
				["name"] = "Digest",
				["names"] = {
				},
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 24,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["auto"] = false,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayTextLeft"] = " %n",
			["customTextUpdate"] = "update",
			["border"] = false,
			["borderEdge"] = "None",
			["numTriggers"] = 1,
			["borderSize"] = 16,
			["sparkWidth"] = 10,
			["icon_side"] = "LEFT",
			["sparkOffsetX"] = 0,
			["icon"] = true,
			["sparkHeight"] = 30,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Digest bar",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["displayTextRight"] = "%p",
			["frameStrata"] = 1,
			["width"] = 280,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
		},
		["NewChi4"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Chi",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["advance"] = false,
			["model_path"] = "SPELLS/Druid_Wrath_Impact_V2.m2",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["use_unit"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["power"] = "4",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["mirror"] = false,
			["untrigger"] = {
			},
			["height"] = 70,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["sequence"] = 1,
			["displayStacks"] = "%s",
			["scale"] = 1,
			["discrete_rotation"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["blendMode"] = "BLEND",
			["xOffset"] = 100,
			["inverse"] = false,
			["borderOffset"] = 5,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["model_z"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "NewChi4",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 70,
			["zoom"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SND"] = {
			["xOffset"] = -288.999877929688,
			["untrigger"] = {
				["spellName"] = 79140,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["preset"] = "bounceDecay",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["rem"] = "8",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Slice and Dice", -- [1]
				},
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["type"] = "aura",
				["remOperator"] = "<=",
				["unit"] = "player",
				["use_unit"] = true,
				["spellName"] = 79140,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 93.0000381469727,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 10,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 92.0004196166992,
			["stickyDuration"] = false,
			["yOffset"] = 7,
			["inverse"] = false,
			["numTriggers"] = 1,
			["id"] = "SND",
			["icon"] = true,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Blademaster Trinket"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Blademaster Ready", -- [1]
				"Blademaster Duration", -- [2]
				"Blademaster CD", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 332.000122070313,
			["border"] = false,
			["yOffset"] = 341.000061035156,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["regionType"] = "group",
			["frameStrata"] = 1,
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["id"] = "Blademaster Trinket",
		},
		["Thorasus ring"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 124634,
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124634,
				["use_inverse"] = true,
				["unit"] = "player",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["type"] = "status",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["use_itemName"] = true,
				["use_remaining"] = false,
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["event"] = "Cooldown Progress (Item)",
				["showOn"] = "showOnReady",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["use_unit"] = true,
						["itemName"] = 124634,
						["unevent"] = "auto",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124634,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 75,
			["yOffset"] = 0,
			["inverse"] = true,
			["numTriggers"] = 2,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["id"] = "Thorasus ring",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["NewChi6"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Chi",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["advance"] = false,
			["model_path"] = "SPELLS/Druid_Wrath_Impact_V2.m2",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = "==",
				["use_power"] = true,
				["event"] = "Chi Power",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_unit"] = true,
				["power"] = "6",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["height"] = 70,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["sequence"] = 1,
			["discrete_rotation"] = 0,
			["scale"] = 1,
			["icon"] = true,
			["mirror"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["blendMode"] = "BLEND",
			["border"] = false,
			["inverse"] = false,
			["model_z"] = 0,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "NewChi6",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 70,
			["borderOffset"] = 5,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["displayStacks"] = "%s",
			["xOffset"] = 180,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["NewChi1"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -25,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["advance"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_unit"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["power"] = "1",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "bounceDecay",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["parent"] = "Chi",
			["height"] = 70,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = -80,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["desaturate"] = false,
			["scale"] = 1,
			["model_path"] = "SPELLS/Druid_Wrath_Impact_V2.m2",
			["mirror"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["blendMode"] = "BLEND",
			["sequence"] = 1,
			["numTriggers"] = 1,
			["borderOffset"] = 5,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "NewChi1",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 70,
			["model_z"] = 0,
			["borderInset"] = 11,
			["inverse"] = false,
			["border"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["discrete_rotation"] = 0,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Nithramus ring"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 124635,
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124635,
				["use_inverse"] = true,
				["unit"] = "player",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Item)",
				["use_unit"] = true,
				["use_itemName"] = true,
				["type"] = "status",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnReady",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124635,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["use_unit"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124635,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 75,
			["yOffset"] = 0,
			["numTriggers"] = 2,
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["id"] = "Nithramus ring",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Etheralus CD"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "custom",
					["colorR"] = 1,
					["duration"] = "20",
					["scalex"] = 1,
					["y"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["alphaType"] = "straight",
					["x"] = 0,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorA"] = 1,
					["rotate"] = 0,
					["scaley"] = 1,
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124638,
				["use_inverse"] = false,
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["type"] = "status",
				["use_remaining"] = true,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["use_itemName"] = true,
				["remaining_operator"] = "<",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellIds"] = {
				},
				["event"] = "Cooldown Progress (Item)",
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = true,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "Etheralus CD",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124638,
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["use_unit"] = true,
						["type"] = "status",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124638,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["spellName"] = 115176,
				["itemName"] = 124638,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["numTriggers"] = 2,
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS18"] = {
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.603921568627451, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "18",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["id"] = "LS18",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 105,
		},
		["LS1"] = {
			["xOffset"] = -133,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LS1",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "1",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "LS Tracker",
		},
		["LS19"] = {
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.662745098039216, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LS19",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "19",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 119,
		},
		["Blademaster Ready 2"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "event",
				["custom_hide"] = "timed",
				["unevent"] = "timed",
				["itemName"] = 124224,
				["event"] = "Cooldown Ready (Item)",
				["use_itemName"] = true,
				["subeventPrefix"] = "SPELL",
				["sourceunit"] = "player",
				["unit"] = "player",
				["spellIds"] = {
				},
				["use_sourceunit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 50,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Ring",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
			},
			["untrigger"] = {
				["itemName"] = 124224,
			},
			["frameStrata"] = 1,
			["width"] = 50,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Blademaster Ready 2",
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Etheralus ring"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 124638,
				["spellName"] = 115176,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124638,
				["use_inverse"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["use_remaining"] = false,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["type"] = "status",
				["event"] = "Cooldown Progress (Item)",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["use_itemName"] = true,
				["showOn"] = "showOnReady",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124638,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["type"] = "status",
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124638,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 75,
			["yOffset"] = 0,
			["inverse"] = true,
			["numTriggers"] = 2,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["id"] = "Etheralus ring",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Maalus CD"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["type"] = "custom",
					["scaley"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["x"] = 0,
					["rotate"] = 0,
					["duration"] = "20",
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124636,
				["use_inverse"] = false,
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_remaining"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["remaining_operator"] = "<",
				["event"] = "Cooldown Progress (Item)",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["type"] = "status",
				["spellIds"] = {
				},
				["use_itemName"] = true,
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = true,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "Maalus CD",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["use_unit"] = true,
						["itemName"] = 124636,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124636,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["spellName"] = 115176,
				["itemName"] = 124636,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["inverse"] = true,
			["numTriggers"] = 2,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Shock Background"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0.00784313725490196, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["init_completed"] = 1,
			["texture"] = "Smooth",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "LS Tracker",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 8042,
			},
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellName"] = 8042,
				["type"] = "status",
				["use_matchedRune"] = false,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unit"] = "player",
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 23,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["icon"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["barInFront"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = "%c",
			["border"] = false,
			["borderEdge"] = "Square Clean",
			["numTriggers"] = 1,
			["borderSize"] = 16,
			["customTextUpdate"] = "event",
			["icon_side"] = "RIGHT",
			["auto"] = true,
			["timer"] = true,
			["sparkHeight"] = 30,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%c",
			["id"] = "Shock Background",
			["sparkHidden"] = "NEVER",
			["timerSize"] = 12,
			["frameStrata"] = 3,
			["width"] = 280,
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Solid",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
		},
		["TimerTrigger"] = {
			["outline"] = false,
			["fontSize"] = 32,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["customText"] = "\n\n",
			["untrigger"] = {
				["custom"] = "function(event, ...)\n    if event == \"WORLD_STATE_TIMER_STOP\" then \n        WA_CM_TIMER_STOP = false  \n        local _, _, steps = C_Scenario.GetStepInfo()\n        for i=1, steps do\n            WA_CM_COMPLETION[i] = nil\n        end\n        \n        return true\n    else\n        return false\n    end\nend",
			},
			["regionType"] = "text",
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["parent"] = "Challenge Mode",
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "TimerTrigger",
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["events"] = "WORLD_STATE_TIMER_STOP WORLD_STATE_TIMER_START CHALLENGE_MODE_COMPLETED START_TIMER ZONE_CHANGED_NEW_AREA PLAYER_LOGIN",
				["custom"] = "function(event, ...) \n    \n    -- cm timer start/stop\n    if event == \"WORLD_STATE_TIMER_START\" then\n        wa_cm_inprogress = true\n    elseif event == \"WORLD_STATE_TIMER_STOP\" then\n        wa_cm_inprogress = false\n        \n        -- pre timer(5 sec countdown)\n    elseif event == \"START_TIMER\" then\n        local dungeon, _, steps = C_Scenario.GetStepInfo()\n        wa_cm_inprogress = true\n        for i=1, steps do\n            local name, _, status, _, value = C_Scenario.GetCriteriaInfo(i)\n            wa_cm_obj_progress[i] = 0\n            wa_cm_obj_name[i] = name\n            wa_cm_obj_value[i] = value\n            wa_cm_completion[i] = \"\"\n        end\n        \n        -- on completed challenge mode\n    elseif event == \"CHALLENGE_MODE_COMPLETED\" then\n        for  i=1, getn(wa_cm_obj_name) do\n            if wa_cm_completion[i] == \"\" then\n                wa_cm_obj_progress[i] = wa_cm_obj_value[i]\n                wa_cm_completion[i] =   (\"- |c%s%s|r\"):format(\"000ff000\", wa_cm_time_current)\n            end\n            \n        end\n        wa_cm_inprogress = false\n        \n        -- on enter instance or login, get objectives\n    elseif event == \"ZONE_CHANGED_NEW_AREA\" or event == \"PLAYER_LOGIN\" then\n        local _, _, _, difficultyName = GetInstanceInfo()\n        if difficultyName == \"Challenge Mode\" then\n            -- hide blizzard challenge mode frame\n            ObjectiveTrackerFrame:SetScript(\"OnEvent\", nil)\n            ObjectiveTrackerFrame:Hide()\n            \n            wa_cm_obj_progress = {}\n            wa_cm_obj_name = {}\n            wa_cm_obj_value = {}\n            wa_cm_completion = {}\n            local dungeon, _, steps = C_Scenario.GetStepInfo()\n            if steps == 0 then\n                wa_cm_inprogress = false\n            else\n                wa_cm_inprogress = true\n                wa_cm_objective = true\n                -- get objectives\n                for i=1, steps do\n                    local name, _, status, _, value = C_Scenario.GetCriteriaInfo(i)\n                    wa_cm_obj_progress[i] = 1\n                    wa_cm_obj_name[i] = name\n                    wa_cm_obj_value[i] = value\n                    if status ~= true then\n                        wa_cm_completion[i] = \"\"\n                    end\n                end\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["custom_hide"] = "timed",
			},
			["frameStrata"] = 1,
			["width"] = 1.00000751018524,
			["yOffset"] = 0,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 1.00000751018524,
			["xOffset"] = 0,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
		},
		["LS9"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "9",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["id"] = "LS9",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -21,
		},
		["LS7"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LS7",
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "7",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -49,
		},
		["LS5"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["xOffset"] = -77,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "5",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["id"] = "LS5",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "LS Tracker",
		},
		["ES20 Indicator"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.367469549179077, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -4.00021362304688,
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["untrigger"] = {
			},
			["xOffset"] = -0.000244140625,
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\ICONS\\lightningtransparency",
			["animation"] = {
				["start"] = {
					["preset"] = "shrink",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0.25,
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["duration"] = "0.7",
					["rotate"] = 0,
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["countOperator"] = "==",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "20",
				["unit"] = "player",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["id"] = "ES20 Indicator",
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 8042,
					},
					["untrigger"] = {
						["spellName"] = 8042,
					},
				}, -- [1]
			},
			["rotation"] = 0,
			["frameStrata"] = 2,
			["width"] = 279.999694824219,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 2,
			["desaturate"] = false,
			["height"] = 25.0000247955322,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "LS Tracker",
		},
		["BasMael2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["countOperator"] = ">=",
				["names"] = {
					"Maelstrom Weapon", -- [1]
				},
				["useCount"] = true,
				["count"] = "4",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "Basic Mael",
			["selfPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["id"] = "BasMael2",
			["additional_triggers"] = {
			},
			["xOffset"] = 196.000366210938,
			["frameStrata"] = 1,
			["width"] = 100,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:BasMael2",
					["glow_action"] = "show",
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:BasMael2",
					["glow_action"] = "hide",
				},
			},
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = -194.000061035156,
			["stickyDuration"] = false,
			["displayIcon"] = "Interface\\Icons\\Spell_Shaman_MaelstromWeapon",
			["stacksPoint"] = "BOTTOM",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HFC Arch M P3 Mark of the Legion Icon"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Mark of the Legion", -- [1]
				},
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 79.9999389648438,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "HFC - Arch M P3 Mark of the Legion Group",
			["stacksPoint"] = "BOTTOMRIGHT",
			["actions"] = {
				["start"] = {
					["do_sound"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["sound_channel"] = "Master",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0.32,
			["auto"] = false,
			["id"] = "HFC Arch M P3 Mark of the Legion Icon",
			["additional_triggers"] = {
			},
			["yOffset"] = 124.999816894531,
			["frameStrata"] = 1,
			["width"] = 80.0000381469727,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["inverse"] = false,
			["xOffset"] = -383.000366210938,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "Interface\\Icons\\spell_warlock_demonbolt",
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Doom"] = {
			["outline"] = true,
			["fontSize"] = 72,
			["color"] = {
				1, -- [1]
				0.0549019607843137, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "DOOM",
			["yOffset"] = 119.000122070313,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["justify"] = "LEFT",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
					"Touch of Doom", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["unit"] = "player",
			},
			["regionType"] = "text",
			["frameStrata"] = 1,
			["width"] = 117.00008392334,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["font"] = "2002 Bold",
			["numTriggers"] = 1,
			["id"] = "Doom",
			["height"] = 32.0000076293945,
			["xOffset"] = -58.9998168945313,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1783",
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Blademaster Duration"] = {
			["xOffset"] = 0,
			["untrigger"] = {
				["itemName"] = 124224,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124224,
				["remaining_operator"] = ">",
				["unit"] = "player",
				["remaining"] = "40",
				["custom_hide"] = "timed",
				["use_remaining"] = true,
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["use_unit"] = true,
				["use_itemName"] = true,
				["event"] = "Cooldown Progress (Item)",
				["debuffType"] = "HELPFUL",
				["sourceunit"] = "player",
				["spellIds"] = {
				},
				["use_sourceunit"] = true,
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 50,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["use_spec"] = true,
				["use_name"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Blademaster Trinket",
			["stacksPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["additional_triggers"] = {
			},
			["yOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 50,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "Blademaster Duration",
			["icon"] = true,
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Basic Mael"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"BasMael", -- [1]
				"BasMael2", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -182.49169921875,
			["border"] = false,
			["yOffset"] = 405.968322753906,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["anchorPoint"] = "CENTER",
			["borderEdge"] = "None",
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["id"] = "Basic Mael",
		},
		["NewChi2"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Chi",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["advance"] = false,
			["model_path"] = "SPELLS/Druid_Wrath_Impact_V2.m2",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["use_unit"] = true,
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["power"] = "2",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["mirror"] = false,
			["untrigger"] = {
			},
			["height"] = 70,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["sequence"] = 1,
			["displayStacks"] = "%s",
			["scale"] = 1,
			["discrete_rotation"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["blendMode"] = "BLEND",
			["xOffset"] = 20,
			["inverse"] = false,
			["borderOffset"] = 5,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["model_z"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "NewChi2",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 70,
			["zoom"] = 0,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Sniper Training 1"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Recently Moved", -- [1]
				"Buff On", -- [2]
				"Timer", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -161.237487792969,
			["border"] = false,
			["yOffset"] = -53.5953369140625,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = true,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Sniper Training 1",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["SnD2"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 79140,
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["rem"] = "8",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["event"] = "Action Usable",
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unit"] = "player",
				["remOperator"] = "<=",
				["names"] = {
					"Slice and Dice", -- [1]
				},
				["useRem"] = true,
				["spellName"] = 79140,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 114,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["icon"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["cooldown"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SnD2",
			["frameStrata"] = 1,
			["width"] = 118.000350952148,
			["selfPoint"] = "CENTER",
			["xOffset"] = -288.999877929688,
			["inverse"] = false,
			["numTriggers"] = 1,
			["yOffset"] = 7,
			["stickyDuration"] = false,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Etheralus buff"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["colorR"] = 1,
					["scaley"] = 1,
					["scalex"] = 1,
					["y"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["x"] = 0,
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorB"] = 1,
					["rotate"] = 0,
					["duration"] = "20",
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124638,
				["remaining_operator"] = "<",
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_remaining"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
					"Etheralus", -- [1]
				},
				["use_itemName"] = true,
				["event"] = "Cooldown Progress (Item)",
				["unit"] = "player",
				["use_inverse"] = false,
				["spellIds"] = {
				},
				["type"] = "aura",
				["showOn"] = "showOnCooldown",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124638,
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["type"] = "status",
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124638,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["itemName"] = 124638,
				["spellName"] = 115176,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["stickyDuration"] = false,
			["numTriggers"] = 2,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Etheralus buff",
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Progress"] = {
			["outline"] = false,
			["fontSize"] = 17,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    local dungeon, _, steps = C_Scenario.GetStepInfo()\n    local objective = {}\n    \n    if wa_cm_inprogress == true then\n        for i=1, steps do\n            local _, _, status, progress = C_Scenario.GetCriteriaInfo(i)\n            if status and wa_cm_completion[i] == \"\" then\n                wa_cm_completion[i] = (\"- |c%s%s|r\"):format(\"000ff000\", wa_cm_time_current)\n            end\n            wa_cm_obj_progress[i] = progress\n            objective[i] = (\"%s - %d/%d %s\"):format(wa_cm_obj_name[i], wa_cm_obj_progress[i], wa_cm_obj_value[i], wa_cm_completion[i])\n        end\n    else\n        for i=1, getn(wa_cm_obj_name) do\n            objective[i] = (\"%s - %d/%d %s\"):format(wa_cm_obj_name[i], wa_cm_obj_progress[i], wa_cm_obj_value[i], wa_cm_completion[i])\n        end\n    end\n    \n    return table.concat(objective, \"\\n\")\n    \nend",
			["untrigger"] = {
				["custom"] = "function(event, ...)\n    if event == \"WORLD_STATE_TIMER_STOP\" then \n        DEFAULT_CHAT_FRAME:AddMessage(\"Challenge mode ended: \"..StopwatchTickerMinute:GetText()..\":\"..StopwatchTickerSecond:GetText())\n        Stopwatch_Pause()\n        WA_CM_COMPLETION = nil\n        return true\n    else\n        return false\n    end\nend",
			},
			["regionType"] = "text",
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["parent"] = "Challenge Mode",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
			},
			["id"] = "Progress",
			["frameStrata"] = 1,
			["width"] = 283,
			["trigger"] = {
				["unit"] = "player",
				["custom_hide"] = "custom",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["use_health"] = true,
				["custom_type"] = "event",
				["names"] = {
				},
				["unevent"] = "auto",
				["event"] = "Unit Characteristics",
				["subeventSuffix"] = "_CAST_START",
				["events"] = "WORLD_STATE_TIMER_START WORLD_STATE_TIMER_STOP",
				["spellIds"] = {
				},
				["custom"] = "function(event, ...)\n    if event == \"WORLD_STATE_TIMER_START\" then\n        WA_CM_COMPLETION = nil\n        DEFAULT_CHAT_FRAME:AddMessage(\"Challenge Mode Started!\")\n        Stopwatch_Clear()\n        Stopwatch_Play()\n        StopwatchFrame:Hide()\n        return true\n    else\n        return false\n    end\nend",
				["health"] = "0",
				["use_unit"] = true,
				["use_percenthealth"] = false,
				["debuffType"] = "HELPFUL",
				["health_operator"] = ">=",
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 84.9999771118164,
			["xOffset"] = 0,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
			},
			["yOffset"] = -68.0000457763672,
		},
		["Thorasus buff"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["colorR"] = 1,
					["scalex"] = 1,
					["duration"] = "20",
					["colorB"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["alphaType"] = "straight",
					["rotate"] = 0,
					["scaley"] = 1,
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124634,
				["use_inverse"] = false,
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_remaining"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
					"Thorasus", -- [1]
				},
				["use_itemName"] = true,
				["event"] = "Cooldown Progress (Item)",
				["unit"] = "player",
				["remaining_operator"] = "<",
				["spellIds"] = {
				},
				["type"] = "aura",
				["showOn"] = "showOnCooldown",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124634,
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["use_unit"] = true,
						["type"] = "status",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124634,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["spellName"] = 115176,
				["itemName"] = 124634,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["stickyDuration"] = false,
			["numTriggers"] = 2,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Thorasus buff",
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Sanctus CD"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["type"] = "custom",
					["duration"] = "20",
					["scalex"] = 1,
					["x"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["y"] = 0,
					["rotate"] = 0,
					["scaley"] = 1,
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124637,
				["remaining_operator"] = "<",
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["type"] = "status",
				["use_remaining"] = true,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Item)",
				["use_inverse"] = false,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellIds"] = {
				},
				["use_itemName"] = true,
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = true,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["stacksPoint"] = "BOTTOMRIGHT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["id"] = "Sanctus CD",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 124637,
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["use_unit"] = true,
						["type"] = "status",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124637,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["spellName"] = 115176,
				["itemName"] = 124637,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["numTriggers"] = 2,
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS Tracker"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"ES20 Indicator", -- [1]
				"LS1", -- [2]
				"LS10", -- [3]
				"LS11", -- [4]
				"LS12", -- [5]
				"LS13", -- [6]
				"LS14", -- [7]
				"LS15", -- [8]
				"LS16", -- [9]
				"LS17", -- [10]
				"LS18", -- [11]
				"LS19", -- [12]
				"LS2", -- [13]
				"LS20", -- [14]
				"LS3", -- [15]
				"LS4", -- [16]
				"LS5", -- [17]
				"LS6", -- [18]
				"LS7", -- [19]
				"LS8", -- [20]
				"LS9", -- [21]
				"Shock Background", -- [22]
				"Shock CD", -- [23]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = -370.000442504883,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["regionType"] = "group",
			["frameStrata"] = 1,
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["id"] = "LS Tracker",
		},
		["Challenge Mode"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Progress", -- [1]
				"TimerText", -- [2]
				"TimerTrigger", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -628.000061035156,
			["border"] = false,
			["yOffset"] = 261.000122070313,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Challenge Mode",
			["untrigger"] = {
			},
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["borderEdge"] = "None",
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["LS10"] = {
			["xOffset"] = -7,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "LS10",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "10",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["New 4"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fontSize"] = 9,
			["displayStacks"] = "%s",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "ROGUE",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -272.000122070313,
			["anchorPoint"] = "CENTER",
			["id"] = "New 4",
			["untrigger"] = {
				["spellName"] = 51690,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["inverse"] = false,
			["additional_triggers"] = {
			},
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["event"] = "Action Usable",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["spellName"] = 51690,
			},
			["stickyDuration"] = false,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["width"] = 64,
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "bounceDecay",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "fade",
				},
			},
			["height"] = 64,
			["yOffset"] = -165.000091552734,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS12"] = {
			["color"] = {
				1, -- [1]
				0.972549019607843, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "12",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["id"] = "LS12",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 21,
		},
		["Buff On"] = {
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "6",
				["spellId"] = "168811",
				["ownOnly"] = true,
				["names"] = {
					"Sniper Training", -- [1]
				},
				["custom_hide"] = "timed",
				["name_operator"] = "==",
				["subeventSuffix"] = "_CAST_START",
				["fullscan"] = true,
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["unit"] = "player",
				["use_name"] = true,
				["use_spellId"] = true,
				["name"] = "Sniper Training",
				["type"] = "aura",
				["remOperator"] = "<=",
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["useRem"] = true,
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "Sniper Training 1",
			["stacksPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Buff On",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["NewChi5"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Chi",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["advance"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["power_operator"] = ">=",
				["use_power"] = true,
				["event"] = "Chi Power",
				["unit"] = "player",
				["custom_hide"] = "timed",
				["power"] = "5",
				["spellIds"] = {
				},
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "hide",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["rotation"] = 0,
			["height"] = 70,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["sequence"] = 1,
			["untrigger"] = {
			},
			["scale"] = 1,
			["displayStacks"] = "%s",
			["mirror"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["blendMode"] = "BLEND",
			["border"] = false,
			["numTriggers"] = 1,
			["zoom"] = 0,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stacksContainment"] = "INSIDE",
			["borderOffset"] = 5,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "NewChi5",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 70,
			["model_z"] = 0,
			["borderInset"] = 11,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "bounceDecay",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["model_path"] = "SPELLS/Druid_Wrath_Impact_V2.m2",
			["xOffset"] = 140,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS13"] = {
			["xOffset"] = 35,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LS13",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "13",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				0.992156862745098, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["LS14"] = {
			["xOffset"] = 49,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "14",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["id"] = "LS14",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.988235294117647, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
		},
		["Thorasus CD"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["type"] = "custom",
					["duration"] = "20",
					["scaley"] = 1,
					["y"] = 0,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["alphaType"] = "straight",
					["x"] = 0,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorA"] = 1,
					["rotate"] = 0,
					["scalex"] = 1,
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124634,
				["remaining_operator"] = "<",
				["use_unit"] = true,
				["remaining"] = "30",
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["use_remaining"] = true,
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["use_inverse"] = false,
				["use_itemName"] = true,
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["type"] = "status",
				["spellIds"] = {
				},
				["event"] = "Cooldown Progress (Item)",
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = true,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "Thorasus CD",
			["untrigger"] = {
				["itemName"] = 124634,
				["spellName"] = 115176,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = true,
			["numTriggers"] = 2,
			["stickyDuration"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["itemName"] = 124634,
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124634,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LS15"] = {
			["xOffset"] = 63,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LS15",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "15",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.607843137254902, -- [3]
				1, -- [4]
			},
		},
		["LS4"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LS4",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "4",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -91,
		},
		["Gorefiend Digest Timers"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Digest bar", -- [1]
			},
			["animate"] = false,
			["xOffset"] = -297.071228027344,
			["anchorPoint"] = "CENTER",
			["border"] = "None",
			["yOffset"] = 61.2017211914063,
			["regionType"] = "dynamicgroup",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sort"] = "descending",
			["align"] = "CENTER",
			["space"] = 1,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "BOTTOM",
			["borderOffset"] = 16,
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Gorefiend Digest Timers",
			["stagger"] = 0,
			["frameStrata"] = 1,
			["width"] = 280.000061035156,
			["rotation"] = 0,
			["backgroundInset"] = 0,
			["numTriggers"] = 1,
			["additional_triggers"] = {
			},
			["height"] = 24.0000610351563,
			["radius"] = 200,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["LS20"] = {
			["xOffset"] = 133,
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "LS20",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "20",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.427450980392157, -- [3]
				1, -- [4]
			},
		},
		["LS6"] = {
			["color"] = {
				0, -- [1]
				0.67843137254902, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["xOffset"] = -63,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "6",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["selfPoint"] = "CENTER",
			["id"] = "LS6",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "LS Tracker",
		},
		["Maalus buff"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["colorR"] = 1,
					["scalex"] = 1,
					["duration"] = "20",
					["alphaType"] = "straight",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["alphaFunc"] = "    return function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorB"] = 1,
					["rotate"] = 0,
					["scaley"] = 1,
					["use_alpha"] = true,
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 124636,
				["remaining_operator"] = "<",
				["use_unit"] = true,
				["remaining"] = "30",
				["custom_hide"] = "timed",
				["use_remaining"] = true,
				["spellName"] = "Sanctus, Sigil of the Unbroken",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["names"] = {
					"Maalus", -- [1]
				},
				["use_itemName"] = true,
				["event"] = "Cooldown Progress (Item)",
				["unit"] = "player",
				["use_inverse"] = false,
				["spellIds"] = {
				},
				["type"] = "aura",
				["showOn"] = "showOnCooldown",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "ElvUI Font",
			["height"] = 75,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["MONK"] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["init_completed"] = 1,
			["parent"] = "Rink Compacted",
			["cooldown"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "Maalus buff",
			["untrigger"] = {
				["itemName"] = 124636,
				["spellName"] = 115176,
			},
			["frameStrata"] = 1,
			["width"] = 75,
			["stickyDuration"] = false,
			["numTriggers"] = 2,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_inverse"] = false,
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["itemName"] = 124636,
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["itemName"] = 124636,
					},
				}, -- [1]
			},
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HFC Arch M P3 Mark of the Legion Core"] = {
			["outline"] = true,
			["xOffset"] = 118,
			["displayText"] = "%n",
			["customText"] = "function(event, timestamp, message, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, ...)  \n    \n    if WA_NNOGGA_WROUGHT_COUNT>WA_NNOGGA_FOCUSED_COUNT\n    WA_NNOGGA_FOCUSED_COUNT\n    \n    return name\nend",
			["yOffset"] = 122.000061035156,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_custom"] = true,
					["custom"] = "WA_Testcounter = true\nWA_MarkTimer = 8\nif WA_NNOGGA_MYMARKNUMBER ~= nil then\n    WA_MarkTimer = 3 + 2*WA_NNOGGA_MYMARKNUMBER\nend\n\nSendChatMessage(UnitName(\"player\")..\" Exploding in \"..WA_MarkTimer, \"SAY\")\nfor i = 1, WA_MarkTimer do\n    LibStub(\"AceTimer-3.0\"):ScheduleTimer(function (count)\n            local s = (\"%d\"):format(count)\n            if WA_Testcounter then\n                if i < 5 then\n                    SendChatMessage(UnitName(\"player\")..\" Exploding in \"..s, \"SAY\")\n                end\n            end\n    end, WA_MarkTimer - i, i)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["duration"] = "10",
				["names"] = {
					"Power Word: Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["type"] = "custom",
				["unit"] = "player",
				["custom_type"] = "event",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unevent"] = "timed",
				["spellIds"] = {
				},
				["customName"] = "function()\n    \n    WA_NNOGGA_MYMARKNUMBER = WA_NNOGGA_MYMARKNUMBER or \"??\"\n    if WA_NNOGGA_MYMARKNUMBER == 1 then\n        return \"RANGE MIDDLE (\"..WA_NNOGGA_MYMARKNUMBER..\")\"\n    end\n    if WA_NNOGGA_MYMARKNUMBER == 2 then\n        return \"MELEE LEFT (\"..WA_NNOGGA_MYMARKNUMBER..\")\"    \n    end\n    if WA_NNOGGA_MYMARKNUMBER == 3 then\n        return \"RANGE RIGHT (\"..WA_NNOGGA_MYMARKNUMBER..\")\"\n    end\n    if WA_NNOGGA_MYMARKNUMBER == 4 then\n        return \"MELEE RIGHT (\"..WA_NNOGGA_MYMARKNUMBER..\")\"\n    end\n    \nend",
				["custom"] = "function(event, timestamp, message, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, ...)  \n    WA_NNOGGA_MARKLEGION_COUNT = WA_NNOGGA_MARKLEGION_COUNT or 0 \n    \n    if message == \"SPELL_AURA_APPLIED\" then\n        if sourceName == nil then return false end\n        local spellId, spellName, spellSchool = ...\n        if spellName == \"Mark of the Legion\"  then\n            WA_NNOGGA_MARKLEGION_COUNT = WA_NNOGGA_MARKLEGION_COUNT +1\n            C_Timer.After(10, function()WA_NNOGGA_MARKLEGION_COUNT = 0 end)\n            if destName==GetUnitName(\"Player\") then\n                SendChatMessage(WA_NNOGGA_MARKLEGION_COUNT, \"SAY\")\n                WA_NNOGGA_MYMARKNUMBER = WA_NNOGGA_MARKLEGION_COUNT\n                return true\n            end\n            return false\n        end\n    end\n    \n    if (event== 'ENCOUNTER_START') then\n        WA_NNOGGA_MARKLEGION_COUNT = 0      \n    end\nend",
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START",
				["check"] = "event",
				["use_source"] = false,
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "2002 Bold",
			["height"] = 1.00000751018524,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 55,
			["displayStacks"] = "%n",
			["regionType"] = "text",
			["parent"] = "HFC - Arch M P3 Mark of the Legion Group",
			["stacksPoint"] = "CENTER",
			["init_completed"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["stacksContainment"] = "OUTSIDE",
			["zoom"] = 0.34,
			["auto"] = true,
			["id"] = "HFC Arch M P3 Mark of the Legion Core",
			["additional_triggers"] = {
			},
			["inverse"] = false,
			["frameStrata"] = 1,
			["width"] = 1.00000751018524,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["justify"] = "LEFT",
			["stickyDuration"] = true,
			["displayIcon"] = "Interface\\Icons\\spell_misc_zandalari_council_soulswap",
			["cooldown"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Rink Compacted"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Sanctus CD", -- [1]
				"Sanctus buff", -- [2]
				"Thorasus CD", -- [3]
				"Thorasus buff", -- [4]
				"Maalus CD", -- [5]
				"Maalus buff", -- [6]
				"Nithramus CD", -- [7]
				"Nithramus buff", -- [8]
				"Etheralus CD", -- [9]
				"Etheralus buff", -- [10]
				"Sanctus ring", -- [11]
				"Thorasus ring", -- [12]
				"Maalus ring", -- [13]
				"Nithramus ring", -- [14]
				"Etheralus ring", -- [15]
			},
			["animate"] = false,
			["xOffset"] = -159.999328613281,
			["yOffset"] = 203.999694824219,
			["border"] = "None",
			["untrigger"] = {
			},
			["regionType"] = "dynamicgroup",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sort"] = "none",
			["radius"] = 200,
			["space"] = 2,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["borderOffset"] = 16,
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 75.0000610351563,
			["stagger"] = 0,
			["backgroundInset"] = 0,
			["numTriggers"] = 1,
			["id"] = "Rink Compacted",
			["height"] = 1152.99993896484,
			["additional_triggers"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["Shock CD"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0.0117647058823529, -- [3]
				0.640000015497208, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["init_completed"] = 1,
			["texture"] = "Fifths",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "LS Tracker",
			["untrigger"] = {
				["showOn"] = "showOnCooldown",
				["spellName"] = 8042,
			},
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 8042,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["custom_hide"] = "timed",
				["event"] = "Cooldown Progress (Spell)",
				["use_unit"] = true,
				["unit"] = "player",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["showOn"] = "showOnCooldown",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 23,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["barInFront"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = "%c",
			["border"] = false,
			["borderEdge"] = "Square Clean",
			["numTriggers"] = 1,
			["borderSize"] = 16,
			["customTextUpdate"] = "event",
			["icon_side"] = "RIGHT",
			["auto"] = true,
			["timer"] = true,
			["sparkHeight"] = 30,
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["additional_triggers"] = {
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%c",
			["id"] = "Shock CD",
			["sparkHidden"] = "NEVER",
			["timerSize"] = 12,
			["frameStrata"] = 3,
			["width"] = 280,
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Solid",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
		},
		["Chi Brew"] = {
			["xOffset"] = 175.00048828125,
			["customText"] = "function()\n    local currentCharges = GetSpellCharges(\"Chi Brew\")\n    if currentCharges >= 1 then\n        return currentCharges\n    else\n        return 0\n    end\nend",
			["yOffset"] = 98.0003051757813,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["spellName"] = 100,
				["names"] = {
				},
				["type"] = "custom",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["custom_type"] = "status",
				["custom"] = "function()\n    local currentCharges, maxCharges = GetSpellCharges(\"Chi Brew\")\n    if currentCharges < maxCharges then\n        return true\n    end\n    return false\nend",
				["event"] = "Unit Characteristics",
				["customStacks"] = "\n\n",
				["customDuration"] = "function()\n    local _, _, timeLastCast, cooldownDuration = GetSpellCharges(\"Chi Brew\")\n    local timeCurrent = GetTime();\n    if (timeLastCast - cooldownDuration) <= timeCurrent and timeCurrent <= (timeLastCast + cooldownDuration) then\n        return cooldownDuration, timeLastCast + cooldownDuration\n    end\n    return 0, 0\nend",
				["use_spellName"] = true,
				["events"] = "",
				["spellIds"] = {
				},
				["check"] = "update",
				["unevent"] = "auto",
				["unit"] = "player",
				["custom_hide"] = "custom",
			},
			["desaturate"] = false,
			["font"] = "Nimrod MT",
			["height"] = 80,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 17,
			["displayStacks"] = "%c",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["stacksPoint"] = "BOTTOMRIGHT",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
					["do_glow"] = false,
					["sound_channel"] = "SFX",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\shot.ogg",
					["do_sound"] = true,
				},
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["disjunctive"] = "any",
			["id"] = "Chi Brew",
			["untrigger"] = {
				["custom"] = "function()\n    local currentCharges, maxCharges = GetSpellCharges(\"Chi Brew\")\n    if currentCharges == maxCharges then\n        return true\n    end\n    return false\nend",
				["spellName"] = 100,
			},
			["frameStrata"] = 1,
			["width"] = 80,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["additional_triggers"] = {
			},
			["displayIcon"] = "Interface\\Icons\\ability_monk_chibrew",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Death"] = {
			["outline"] = true,
			["fontSize"] = 72,
			["color"] = {
				1, -- [1]
				0.0549019607843137, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "DEATH",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
					"Shadow of Death", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["yOffset"] = 113.000183105469,
			["frameStrata"] = 1,
			["width"] = 112.999923706055,
			["selfPoint"] = "CENTER",
			["font"] = "2002 Bold",
			["numTriggers"] = 1,
			["xOffset"] = -48.9998168945313,
			["height"] = 32.0000076293945,
			["id"] = "Death",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1783",
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "text",
		},
		["Blademaster Duration 2"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["sourceunit"] = "player",
				["remaining_operator"] = ">",
				["use_unit"] = true,
				["remaining"] = "40",
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_remaining"] = true,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["unit"] = "player",
				["use_itemName"] = true,
				["itemName"] = 124224,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Item)",
				["spellIds"] = {
				},
				["use_sourceunit"] = true,
				["showOn"] = "showOnCooldown",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 50,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Naladu",
				["faction"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Ring",
			["stacksPoint"] = "CENTER",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["additional_triggers"] = {
			},
			["untrigger"] = {
				["itemName"] = 124224,
			},
			["frameStrata"] = 1,
			["width"] = 50,
			["stickyDuration"] = false,
			["numTriggers"] = 1,
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "Blademaster Duration 2",
			["selfPoint"] = "CENTER",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Resolve"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 59.1385498046875,
			["stacksFlags"] = "None",
			["yOffset"] = -56.9998474121094,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["class"] = {
					["single"] = "MONK",
					["multi"] = {
						["DEATHKNIGHT"] = true,
						["WARRIOR"] = true,
						["PALADIN"] = true,
						["DRUID"] = true,
						["MONK"] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Exige",
				["faction"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_combat"] = true,
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["displayIcon"] = "Interface\\Icons\\Spell_Shadow_Charm",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Chi",
			["customText"] = "function()\n return UnitName('player');\nend",
			["untrigger"] = {
				["custom"] = "function()    \n    -- Check for missing resolve buff\n    local CurrentResolve = function(spell, index, unit, isDebuff)\n        if not spell or not index then return end\n        if not type(index) == 'number' then return end    \n        unit = unit or 'player'\n        if not UnitExists(unit) then return end    \n        if isDebuff then return select(index, UnitDebuff(unit, spell)) end\n        return select(index, UnitBuff(unit, spell))\n    end\n    return (not CurrentResolve('Resolve', 15, 'player'))\nend\n\n\n\n",
			},
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "Resolve",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["event"] = "Health",
				["names"] = {
					"Resolve", -- [1]
				},
				["customDuration"] = "function ()\n    -- Set default cap value & value by which the cap value will icrease dynamically if you exceed or meet the current cap\n    local ResolveStepSize = 100\n    local CurrentResolveCapValue = ResolveStepSize\n    local ResolveCapValue = ResolveStepSize\n    \n    -- Get your current resolve value\n    local name,_,icon,_,_,_,_,_,_,_,_,_,_,_,CurrentResolve=UnitBuff(\"player\", \"Resolve\")\n    \n    -- Wut if I r has no Resolve?\n    if not CurrentResolve then\n        CurrentResolve = 0\n    end\n    \n    -- Update cap value based on current resolve value\n    while ( CurrentResolve >= CurrentResolveCapValue ) do\n        CurrentResolveCapValue = CurrentResolveCapValue + ResolveStepSize\n        ResolveCapValue = CurrentResolveCapValue\n    end\n    \n    -- Apply cap to bar\n    return CurrentResolve or 0, ResolveCapValue or 0, true\nend\n\n\n\n\n\n\n\n\n\n\n\n",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["custom"] = "function()\n    -- Check if you have the resolve buff\n    local CurrentResolve = function(spell, index, unit, isDebuff)\n        if not spell or not index then return end\n        if not type(index) == 'number' then return end    \n        unit = unit or 'player'\n        if not UnitExists(unit) then return end    \n        if isDebuff then return select(index, UnitDebuff(unit, spell)) end\n        return select(index, UnitBuff(unit, spell))\n    end\n    return (CurrentResolve('Resolve', 15, 'player'))\nend\n\n\n\n\n\n\n\n\n\n",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 20,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["barInFront"] = true,
			["textSize"] = 12,
			["icon"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["numTriggers"] = 1,
			["borderSize"] = 16,
			["timer"] = true,
			["icon_side"] = "LEFT",
			["customTextUpdate"] = "update",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 30,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["id"] = "Resolve",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["displayTextRight"] = "%p%",
			["frameStrata"] = 1,
			["width"] = 170,
			["sparkWidth"] = 10,
			["auto"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0,
		},
		["Timer"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -0.74859619140625,
			["stacksFlags"] = "None",
			["yOffset"] = 90.5731811523438,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.866666666666667, -- [2]
				0.831372549019608, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				0.176470588235294, -- [1]
				1, -- [2]
				0.0392156862745098, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DarkBottom",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				0, -- [1]
				1, -- [2]
				0.137254901960784, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Sniper Training 1",
			["untrigger"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%c",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["rem"] = "0.1",
				["spellId"] = "168811",
				["ownOnly"] = true,
				["unit"] = "player",
				["custom_hide"] = "timed",
				["name_operator"] = "==",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["names"] = {
					"Sniper Training", -- [1]
				},
				["use_name"] = true,
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["remOperator"] = ">",
				["type"] = "aura",
				["name"] = "Sniper Training",
				["useRem"] = true,
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 116.163734436035,
			["timerFlags"] = "None",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 25,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderOffset"] = 5,
			["timer"] = true,
			["barInFront"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["numTriggers"] = 1,
			["borderSize"] = 16,
			["sparkOffsetX"] = 0,
			["icon_side"] = "RIGHT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["sparkHeight"] = 30,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 20,
			["additional_triggers"] = {
			},
			["id"] = "Timer",
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 1,
			["width"] = 50.9298629760742,
			["sparkWidth"] = 10,
			["icon"] = false,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["LS17"] = {
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.592156862745098, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["parent"] = "LS Tracker",
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Smooth_Border2",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "LS17",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["countOperator"] = ">=",
				["names"] = {
					"Lightning Shield", -- [1]
				},
				["custom_hide"] = "timed",
				["useCount"] = true,
				["count"] = "17",
				["spellIds"] = {
					324, -- [1]
				},
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["debuffType"] = "HELPFUL",
			},
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 16,
			["discrete_rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["height"] = 25,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "SHAMAN",
					["multi"] = {
						["SHAMAN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 91,
		},
	},
}
