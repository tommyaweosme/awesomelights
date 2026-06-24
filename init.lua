local b = {{"black","white","Black/White"},{"black","green","Black/Green"},{"black","orange","Black/Orange"},{"white","black","White/Black"},{"red","green","Red/Green"}}
for i = 1,#b do
	minetest.register_node("awesomelights:"..b[i][1]..b[i][2].."_off", {
			description = b[i][3].." Mesecon Light",
			tiles = {"awesomelights_"..b[i][1]..".png"},
			groups = {cracky = 3},
			mesecons = {
				effector = {
					action_on = function(pos, node)
						node.name = "awesomelights:"..b[i][1]..b[i][2].."_on"
						minetest.swap_node(pos, node)
					end,
					action_off = function(pos, node)
						node.name = "awesomelights:"..b[i][1]..b[i][2].."_off"
						minetest.swap_node(pos, node)
					end,
				}
			}
		})

	minetest.register_node("awesomelights:"..b[i][1]..b[i][2].."_on", {
			description = b[i][3].." Mesecon Light (ON)",
			tiles = {"awesomelights_"..b[i][2]..".png"},
			groups = {cracky = 3, not_in_creative_inventory = 1},
			drop = "awesomelights:"..b[i][1]..b[i][2].."_off",
			mesecons = {
				effector = {
					action_on = function(pos, node)
						node.name = "awesomelights:"..b[i][1]..b[i][2].."_on"
						minetest.swap_node(pos, node)
					end,
					action_off = function(pos, node)
						node.name = "awesomelights:"..b[i][1]..b[i][2].."_off"
						minetest.swap_node(pos, node)
					end,
				}
			}
		})
end