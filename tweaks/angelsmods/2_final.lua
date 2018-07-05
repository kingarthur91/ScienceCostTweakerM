-- remove angels bio token from lab
if mods["angelsbioprocessing"] then
	if data.raw.tool["token-bio"] or data.raw.recipe["token-bio"] then
		for _i, lab in pairs(data.raw["lab"]) do
			sctm.lab_input_remove(_i, "token-bio")
		end
		if data.raw.tool["token-bio"] then
			data.raw.tool["token-bio"].order = "d_a[bio]-e[token-bio]"
			data.raw.tool["token-bio"].subgroup = "sct-science-pack-bio"
		end
		if data.raw.recipe["token-bio"] then
			data.raw.recipe["token-bio"].order = "d_a[bio]-e[token-bio]"
			data.raw.recipe["token-bio"].subgroup = "sct-science-pack-bio"
		end
		-- replace token-bio with bio science pack
		for i, tech in pairs(data.raw.technology) do
			sctm.tech_pack_replace(tech.name, "token-bio", "sct-science-pack-bio")
		end
	end
end
	