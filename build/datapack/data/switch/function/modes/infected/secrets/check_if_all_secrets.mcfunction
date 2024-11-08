
#> switch:modes/infected/secrets/check_if_all_secrets
#
# @within	switch:modes/infected/secrets/ancienne_egypte/next_state
#			switch:modes/infected/secrets/area_51/next_state
#			switch:modes/infected/secrets/lost_graveyard/next_state
#			switch:modes/infected/secrets/old_japan_apocalypse/next_state
#

execute unless score #test_mode switch.data matches 1 run advancement grant @s[advancements={switch:visible/50=true,switch:visible/51=true,switch:visible/52=true,switch:visible/53=true}] only switch:visible/54

