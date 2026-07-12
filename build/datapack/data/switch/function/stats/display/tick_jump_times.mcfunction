
#> switch:stats/display/tick_jump_times
#
# @executed	positioned -8 81.5 -22
#
# @within	switch:lobby_second {jump:"green",path:"jump_green",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000001"} [ positioned -8 81.5 -22 ]
#			switch:lobby_second {jump:"white",path:"jump_white",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000002"} [ positioned 22 88.5 0 ]
#			switch:lobby_second {jump:"blue",path:"jump_blue",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000003"} [ positioned 0 81.5 -39 ]
#			switch:lobby_second {jump:"dripstone",path:"jump_dripstone",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000004"} [ positioned 33 83.5 47 ]
#			switch:lobby_second {jump:"yellow",path:"jump_yellow",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000005"} [ positioned 63 88.5 10 ]
#			switch:lobby_second {jump:"red",path:"jump_red",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000006"} [ positioned -26 91.5 15 ]
#			switch:lobby_second {jump:"duality",path:"jump_duality",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000007"} [ positioned 44 86.5 82 ]
#			switch:lobby_second {jump:"pink",path:"jump_pink",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000008"} [ positioned -44 93.5 27 ]
#			switch:lobby_second {jump:"brown",path:"jump_brown",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000009"} [ positioned -20 75.5 -78 ]
#			switch:lobby_second {jump:"purple",path:"jump_purple",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000010"} [ positioned -42 94.5 32 ]
#			switch:lobby_second {jump:"bricks",path:"jump_bricks",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000011"} [ positioned -123 79.5 -11 ]
#			switch:lobby_second {jump:"graviglitch",path:"jump_graviglitch",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000012"} [ positioned -83 100.5 71 ]
#			switch:lobby_second {jump:"obsidian",path:"jump_obsidian",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000013"} [ positioned 36 83.5 -73 ]
#			switch:stats/display/tick_jump_times {jump:"bricks",path:"jump_bricks",label:"Best Times",uuid:"..."}
#
# @args		path (string)
#			uuid (string)
#			jump (string)
#			label (string)
#

## Input macro: jump = "brown", path = "jump_brown", label = "Best Times"
## Ex: execute positioned ~ 70.5 ~ run function switch:stats/display/tick_jump_times {jump:"bricks",path:"jump_bricks",label:"Best Times",uuid:"..."}
#
# scoreboard value "#display_$(path) switch.data" is set to 1 if the display has been summoned, and set to 0 if it has been killed (to prevent ticking @e again)
# scoreboard value "#player_nearby switch.data" is set to 1 if there is a player nearby, and set to 0 if there is no player nearby
# scoreboard value "#display_nearby switch.data" is set to 1 if there is a display nearby, and set to 0 if there is no display nearby

# Set scoreboard values
scoreboard players set #player_nearby switch.data 0
scoreboard players set #display_nearby switch.data 0
execute if entity @a[distance=..64] run scoreboard players set #player_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if entity $(uuid) run scoreboard players set #display_nearby switch.data 1
$execute if score #display_$(path) switch.data matches 1 if score #display_nearby switch.data matches 0 run scoreboard players set #display_$(path) switch.data 0

# If there is no player nearby and the display is alive, kill it
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run kill $(uuid)
$execute if score #player_nearby switch.data matches 0 if score #display_nearby switch.data matches 1 run scoreboard players set #display_$(path) switch.data 0

# If there is a player nearby and the display is dead, summon it
$execute if score #player_nearby switch.data matches 1 if score #display_nearby switch.data matches 0 run function switch:stats/display/jump_times_summon {jump:"$(jump)",path:"$(path)",label:"$(label)",uuid:"$(uuid)"}

