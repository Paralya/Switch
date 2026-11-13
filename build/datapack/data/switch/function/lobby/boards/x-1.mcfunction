
#> switch:lobby/boards/x-1
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.spectres_game.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-133000000001 run scoreboard players set #display_all.modes.spectres_game.total_games switch.data 0
execute if score #display_all.modes.spectres_game.total_games switch.data matches 1 positioned -14.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-133000000001
execute unless score #display_all.modes.spectres_game.total_games switch.data matches 1 positioned -14.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.spectres_game.total_games",label:"Spectres Game",uuid:"20180612-2024-2025-2026-133000000001",mode:2}
execute if score #display_all.modes.spectres_game.played switch.data matches 1 unless entity 20180612-2024-2025-2026-133000000002 run scoreboard players set #display_all.modes.spectres_game.played switch.data 0
execute if score #display_all.modes.spectres_game.played switch.data matches 1 positioned -13 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-133000000002
execute unless score #display_all.modes.spectres_game.played switch.data matches 1 positioned -13 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spectres_game.played",label:"Games played",uuid:"20180612-2024-2025-2026-133000000002",mode:1}
execute if score #display_all.modes.spectres_game.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-133000000003 run scoreboard players set #display_all.modes.spectres_game.wins switch.data 0
execute if score #display_all.modes.spectres_game.wins switch.data matches 1 positioned -16 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-133000000003
execute unless score #display_all.modes.spectres_game.wins switch.data matches 1 positioned -16 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spectres_game.wins",label:"Victories",uuid:"20180612-2024-2025-2026-133000000003",mode:1}
execute if score #display_all.modes.sheepwars.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-134000000001 run scoreboard players set #display_all.modes.sheepwars.total_games switch.data 0
execute if score #display_all.modes.sheepwars.total_games switch.data matches 1 positioned -25.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-134000000001
execute unless score #display_all.modes.sheepwars.total_games switch.data matches 1 positioned -25.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.sheepwars.total_games",label:"SheepWars",uuid:"20180612-2024-2025-2026-134000000001",mode:2}
execute if score #display_all.modes.sheepwars.played switch.data matches 1 unless entity 20180612-2024-2025-2026-134000000002 run scoreboard players set #display_all.modes.sheepwars.played switch.data 0
execute if score #display_all.modes.sheepwars.played switch.data matches 1 positioned -24 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-134000000002
execute unless score #display_all.modes.sheepwars.played switch.data matches 1 positioned -24 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.sheepwars.played",label:"Games played",uuid:"20180612-2024-2025-2026-134000000002",mode:1}
execute if score #display_all.modes.sheepwars.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-134000000003 run scoreboard players set #display_all.modes.sheepwars.wins switch.data 0
execute if score #display_all.modes.sheepwars.wins switch.data matches 1 positioned -27 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-134000000003
execute unless score #display_all.modes.sheepwars.wins switch.data matches 1 positioned -27 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.sheepwars.wins",label:"Victories",uuid:"20180612-2024-2025-2026-134000000003",mode:1}
execute if score #display_all.modes.capture_the_flag.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-144000000001 run scoreboard players set #display_all.modes.capture_the_flag.total_games switch.data 0
execute if score #display_all.modes.capture_the_flag.total_games switch.data matches 1 positioned -25.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-144000000001
execute unless score #display_all.modes.capture_the_flag.total_games switch.data matches 1 positioned -25.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.capture_the_flag.total_games",label:"Capture The Flag",uuid:"20180612-2024-2025-2026-144000000001",mode:2}
execute if score #display_all.modes.capture_the_flag.played switch.data matches 1 unless entity 20180612-2024-2025-2026-144000000002 run scoreboard players set #display_all.modes.capture_the_flag.played switch.data 0
execute if score #display_all.modes.capture_the_flag.played switch.data matches 1 positioned -27 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-144000000002
execute unless score #display_all.modes.capture_the_flag.played switch.data matches 1 positioned -27 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.capture_the_flag.played",label:"Games played",uuid:"20180612-2024-2025-2026-144000000002",mode:1}
execute if score #display_all.modes.capture_the_flag.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-144000000003 run scoreboard players set #display_all.modes.capture_the_flag.wins switch.data 0
execute if score #display_all.modes.capture_the_flag.wins switch.data matches 1 positioned -24 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-144000000003
execute unless score #display_all.modes.capture_the_flag.wins switch.data matches 1 positioned -24 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.capture_the_flag.wins",label:"Victories",uuid:"20180612-2024-2025-2026-144000000003",mode:1}
execute if score #display_all.modes.traitors_game.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-145000000001 run scoreboard players set #display_all.modes.traitors_game.total_games switch.data 0
execute if score #display_all.modes.traitors_game.total_games switch.data matches 1 positioned -14.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-145000000001
execute unless score #display_all.modes.traitors_game.total_games switch.data matches 1 positioned -14.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.traitors_game.total_games",label:"Traitors Game",uuid:"20180612-2024-2025-2026-145000000001",mode:2}
execute if score #display_all.modes.traitors_game.played switch.data matches 1 unless entity 20180612-2024-2025-2026-145000000002 run scoreboard players set #display_all.modes.traitors_game.played switch.data 0
execute if score #display_all.modes.traitors_game.played switch.data matches 1 positioned -16 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-145000000002
execute unless score #display_all.modes.traitors_game.played switch.data matches 1 positioned -16 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.traitors_game.played",label:"Games played",uuid:"20180612-2024-2025-2026-145000000002",mode:1}
execute if score #display_all.modes.traitors_game.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-145000000003 run scoreboard players set #display_all.modes.traitors_game.wins switch.data 0
execute if score #display_all.modes.traitors_game.wins switch.data matches 1 positioned -13 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-145000000003
execute unless score #display_all.modes.traitors_game.wins switch.data matches 1 positioned -13 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.traitors_game.wins",label:"Victories",uuid:"20180612-2024-2025-2026-145000000003",mode:1}

