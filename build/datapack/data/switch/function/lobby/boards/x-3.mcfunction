
#> switch:lobby/boards/x-3
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.TODO.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-101000000003 run scoreboard players set #display_all.modes.TODO.total_games switch.data 0
execute if score #display_all.modes.TODO.total_games switch.data matches 1 positioned -80.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-101000000003
execute unless score #display_all.modes.TODO.total_games switch.data matches 1 positioned -80.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.TODO.total_games",label:"???",uuid:"20180612-2024-2025-2026-101000000003",mode:2}
execute if score #display_all.modes.beat_the_kings.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-138000000001 run scoreboard players set #display_all.modes.beat_the_kings.total_games switch.data 0
execute if score #display_all.modes.beat_the_kings.total_games switch.data matches 1 positioned -69.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-138000000001
execute unless score #display_all.modes.beat_the_kings.total_games switch.data matches 1 positioned -69.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.beat_the_kings.total_games",label:"Beat The Kings",uuid:"20180612-2024-2025-2026-138000000001",mode:2}
execute if score #display_all.modes.beat_the_kings.played switch.data matches 1 unless entity 20180612-2024-2025-2026-138000000002 run scoreboard players set #display_all.modes.beat_the_kings.played switch.data 0
execute if score #display_all.modes.beat_the_kings.played switch.data matches 1 positioned -68 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-138000000002
execute unless score #display_all.modes.beat_the_kings.played switch.data matches 1 positioned -68 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.beat_the_kings.played",label:"Games played",uuid:"20180612-2024-2025-2026-138000000002",mode:1}
execute if score #display_all.modes.beat_the_kings.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-138000000003 run scoreboard players set #display_all.modes.beat_the_kings.wins switch.data 0
execute if score #display_all.modes.beat_the_kings.wins switch.data matches 1 positioned -71 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-138000000003
execute unless score #display_all.modes.beat_the_kings.wins switch.data matches 1 positioned -71 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.beat_the_kings.wins",label:"Victories",uuid:"20180612-2024-2025-2026-138000000003",mode:1}
execute if score #display_all.modes.glassrunner.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-139000000001 run scoreboard players set #display_all.modes.glassrunner.total_games switch.data 0
execute if score #display_all.modes.glassrunner.total_games switch.data matches 1 positioned -80.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-139000000001
execute unless score #display_all.modes.glassrunner.total_games switch.data matches 1 positioned -80.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.glassrunner.total_games",label:"GlassRunner",uuid:"20180612-2024-2025-2026-139000000001",mode:2}
execute if score #display_all.modes.glassrunner.played switch.data matches 1 unless entity 20180612-2024-2025-2026-139000000002 run scoreboard players set #display_all.modes.glassrunner.played switch.data 0
execute if score #display_all.modes.glassrunner.played switch.data matches 1 positioned -79 70.5 7 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-139000000002
execute unless score #display_all.modes.glassrunner.played switch.data matches 1 positioned -79 70.5 7 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.glassrunner.played",label:"Games played",uuid:"20180612-2024-2025-2026-139000000002",mode:1}
execute if score #display_all.modes.glassrunner.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-139000000003 run scoreboard players set #display_all.modes.glassrunner.wins switch.data 0
execute if score #display_all.modes.glassrunner.wins switch.data matches 1 positioned -82 70.5 7 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-139000000003
execute unless score #display_all.modes.glassrunner.wins switch.data matches 1 positioned -82 70.5 7 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.glassrunner.wins",label:"Victories",uuid:"20180612-2024-2025-2026-139000000003",mode:1}
execute if score #display_all.modes.laser_game.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-140000000001 run scoreboard players set #display_all.modes.laser_game.total_games switch.data 0
execute if score #display_all.modes.laser_game.total_games switch.data matches 1 positioned -69.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-140000000001
execute unless score #display_all.modes.laser_game.total_games switch.data matches 1 positioned -69.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.laser_game.total_games",label:"Laser Game",uuid:"20180612-2024-2025-2026-140000000001",mode:2}
execute if score #display_all.modes.laser_game.played switch.data matches 1 unless entity 20180612-2024-2025-2026-140000000002 run scoreboard players set #display_all.modes.laser_game.played switch.data 0
execute if score #display_all.modes.laser_game.played switch.data matches 1 positioned -71 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-140000000002
execute unless score #display_all.modes.laser_game.played switch.data matches 1 positioned -71 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.laser_game.played",label:"Games played",uuid:"20180612-2024-2025-2026-140000000002",mode:1}
execute if score #display_all.modes.laser_game.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-140000000003 run scoreboard players set #display_all.modes.laser_game.wins switch.data 0
execute if score #display_all.modes.laser_game.wins switch.data matches 1 positioned -68 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-140000000003
execute unless score #display_all.modes.laser_game.wins switch.data matches 1 positioned -68 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.laser_game.wins",label:"Victories",uuid:"20180612-2024-2025-2026-140000000003",mode:1}

