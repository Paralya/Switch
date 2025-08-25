
#> switch:stats/display/tick_adv
#
# @executed	positioned -8 81.5 -22
#
# @within	switch:lobby_second {adv_path:"all[{id:\\\"jump_green\\\"}].players",path:"jump_green",label:"Completion Order"} [ positioned -8 81.5 -22 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_white\\\"}].players",path:"jump_white",label:"Completion Order"} [ positioned 22 88.5 0 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_blue\\\"}].players",path:"jump_blue",label:"Completion Order"} [ positioned 0 81.5 -39 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_dripstone\\\"}].players",path:"jump_dripstone",label:"Completion Order"} [ positioned 33 83.5 47 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_yellow\\\"}].players",path:"jump_yellow",label:"Completion Order"} [ positioned 63 88.5 10 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_red\\\"}].players",path:"jump_red",label:"Completion Order"} [ positioned -26 91.5 15 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_duality\\\"}].players",path:"jump_duality",label:"Completion Order"} [ positioned 44 86.5 82 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_pink\\\"}].players",path:"jump_pink",label:"Completion Order"} [ positioned -44 93.5 27 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_brown\\\"}].players",path:"jump_brown",label:"Completion Order"} [ positioned -20 75.5 -78 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_purple\\\"}].players",path:"jump_purple",label:"Completion Order"} [ positioned -42 94.5 32 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_bricks\\\"}].players",path:"jump_bricks",label:"Completion Order"} [ positioned -123 79.5 -11 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_graviglitch\\\"}].players",path:"jump_graviglitch",label:"Completion Order"} [ positioned -83 100.5 71 ]
#			switch:lobby_second {adv_path:"all[{id:\\\"jump_obsidian\\\"}].players",path:"jump_obsidian",label:"Completion Order"} [ positioned 36 83.5 -73 ]
#			switch:stats/display/tick_adv {adv_path:"all[{id:\"jump_bricks\"}].players",path:"jump_bricks",label:"Ordre de Complétion"}
#

## Input macro: path = "jump_brown", label = "Ordre de complétion"
## Ex: execute positioned ~ 70.5 ~ run function switch:stats/display/tick_adv {adv_path:"all[{id:\"jump_bricks\"}].players",path:"jump_bricks",label:"Ordre de Complétion"}
#
# scoreboard value "#display_$(path) switch.data" is set to 1 if the display has been summoned, and set to 0 if it has been killed (to prevent ticking @e again)
# scoreboard value "#player_nearby switch.data" is set to 1 if there is a player nearby, and set to 0 if there is no player nearby
# scoreboard value "#display_nearby switch.data" is set to 1 if there is a display nearby, and set to 0 if there is no display nearby

# Set scoreboard values
scoreboard players set #player_nearby switch.data 0
scoreboard players set #display_nearby switch.data 0
execute if entity @a[distance=..64] run scoreboard players set #player_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if entity @e[tag=$(path),limit=1,distance=..1] run scoreboard players set #display_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if score #display_nearby switch.data matches 0 run scoreboard players set #display_$(path) switch.data 0

# If there is no player nearby and the display is alive, kill it
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run kill @e[tag=$(path),limit=1,distance=..1]
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run scoreboard players set #display_$(path) switch.data 0

# If there is a player nearby and the display is dead, summon it
$execute if score #player_nearby switch.data matches 1 if score #display_nearby switch.data matches 0 run function switch:stats/display/adv_summon {path:"$(path)",label:"$(label)",adv_path:"$(adv_path)"}

