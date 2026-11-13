
#> switch:lobby/boards/x-2
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.rush_the_flag.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-135000000001 run scoreboard players set #display_all.modes.rush_the_flag.total_games switch.data 0
execute if score #display_all.modes.rush_the_flag.total_games switch.data matches 1 positioned -36.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-135000000001
execute unless score #display_all.modes.rush_the_flag.total_games switch.data matches 1 positioned -36.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.rush_the_flag.total_games",label:"Rush The Flag",uuid:"20180612-2024-2025-2026-135000000001",mode:2}
execute if score #display_all.modes.rush_the_flag.played switch.data matches 1 unless entity 20180612-2024-2025-2026-135000000002 run scoreboard players set #display_all.modes.rush_the_flag.played switch.data 0
execute if score #display_all.modes.rush_the_flag.played switch.data matches 1 positioned -35 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-135000000002
execute unless score #display_all.modes.rush_the_flag.played switch.data matches 1 positioned -35 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_flag.played",label:"Games played",uuid:"20180612-2024-2025-2026-135000000002",mode:1}
execute if score #display_all.modes.rush_the_flag.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-135000000003 run scoreboard players set #display_all.modes.rush_the_flag.wins switch.data 0
execute if score #display_all.modes.rush_the_flag.wins switch.data matches 1 positioned -38 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-135000000003
execute unless score #display_all.modes.rush_the_flag.wins switch.data matches 1 positioned -38 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_flag.wins",label:"Victories",uuid:"20180612-2024-2025-2026-135000000003",mode:1}
execute if score #display_all.modes.gay_shooter.played switch.data matches 1 unless entity 20180612-2024-2025-2026-136000000001 run scoreboard players set #display_all.modes.gay_shooter.played switch.data 0
execute if score #display_all.modes.gay_shooter.played switch.data matches 1 positioned -46 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-136000000001
execute unless score #display_all.modes.gay_shooter.played switch.data matches 1 positioned -46 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.gay_shooter.played",label:"Games played",uuid:"20180612-2024-2025-2026-136000000001",mode:1}
execute if score #display_all.modes.gay_shooter.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-136000000002 run scoreboard players set #display_all.modes.gay_shooter.total_games switch.data 0
execute if score #display_all.modes.gay_shooter.total_games switch.data matches 1 positioned -47.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-136000000002
execute unless score #display_all.modes.gay_shooter.total_games switch.data matches 1 positioned -47.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.gay_shooter.total_games",label:"Guy Shooter",uuid:"20180612-2024-2025-2026-136000000002",mode:2}
execute if score #display_all.modes.gay_shooter.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-136000000003 run scoreboard players set #display_all.modes.gay_shooter.wins switch.data 0
execute if score #display_all.modes.gay_shooter.wins switch.data matches 1 positioned -49 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-136000000003
execute unless score #display_all.modes.gay_shooter.wins switch.data matches 1 positioned -49 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.gay_shooter.wins",label:"Victories",uuid:"20180612-2024-2025-2026-136000000003",mode:1}
execute if score #display_all.modes.layers_4_teams.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-137000000001 run scoreboard players set #display_all.modes.layers_4_teams.total_games switch.data 0
execute if score #display_all.modes.layers_4_teams.total_games switch.data matches 1 positioned -58.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-137000000001
execute unless score #display_all.modes.layers_4_teams.total_games switch.data matches 1 positioned -58.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.layers_4_teams.total_games",label:"Layers 4 Teams",uuid:"20180612-2024-2025-2026-137000000001",mode:2}
execute if score #display_all.modes.layers_4_teams.played switch.data matches 1 unless entity 20180612-2024-2025-2026-137000000002 run scoreboard players set #display_all.modes.layers_4_teams.played switch.data 0
execute if score #display_all.modes.layers_4_teams.played switch.data matches 1 positioned -57 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-137000000002
execute unless score #display_all.modes.layers_4_teams.played switch.data matches 1 positioned -57 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_4_teams.played",label:"Games played",uuid:"20180612-2024-2025-2026-137000000002",mode:1}
execute if score #display_all.modes.layers_4_teams.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-137000000003 run scoreboard players set #display_all.modes.layers_4_teams.wins switch.data 0
execute if score #display_all.modes.layers_4_teams.wins switch.data matches 1 positioned -60 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-137000000003
execute unless score #display_all.modes.layers_4_teams.wins switch.data matches 1 positioned -60 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_4_teams.wins",label:"Victories",uuid:"20180612-2024-2025-2026-137000000003",mode:1}
execute if score #display_all.modes.layers_2_teams.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-141000000001 run scoreboard players set #display_all.modes.layers_2_teams.total_games switch.data 0
execute if score #display_all.modes.layers_2_teams.total_games switch.data matches 1 positioned -58.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-141000000001
execute unless score #display_all.modes.layers_2_teams.total_games switch.data matches 1 positioned -58.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.layers_2_teams.total_games",label:"Layers 2 Teams",uuid:"20180612-2024-2025-2026-141000000001",mode:2}
execute if score #display_all.modes.layers_2_teams.played switch.data matches 1 unless entity 20180612-2024-2025-2026-141000000002 run scoreboard players set #display_all.modes.layers_2_teams.played switch.data 0
execute if score #display_all.modes.layers_2_teams.played switch.data matches 1 positioned -60 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-141000000002
execute unless score #display_all.modes.layers_2_teams.played switch.data matches 1 positioned -60 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_2_teams.played",label:"Games played",uuid:"20180612-2024-2025-2026-141000000002",mode:1}
execute if score #display_all.modes.layers_2_teams.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-141000000003 run scoreboard players set #display_all.modes.layers_2_teams.wins switch.data 0
execute if score #display_all.modes.layers_2_teams.wins switch.data matches 1 positioned -57 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-141000000003
execute unless score #display_all.modes.layers_2_teams.wins switch.data matches 1 positioned -57 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_2_teams.wins",label:"Victories",uuid:"20180612-2024-2025-2026-141000000003",mode:1}
execute if score #display_all.modes.protect_the_king.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-142000000001 run scoreboard players set #display_all.modes.protect_the_king.total_games switch.data 0
execute if score #display_all.modes.protect_the_king.total_games switch.data matches 1 positioned -47.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-142000000001
execute unless score #display_all.modes.protect_the_king.total_games switch.data matches 1 positioned -47.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.protect_the_king.total_games",label:"Protect The King",uuid:"20180612-2024-2025-2026-142000000001",mode:2}
execute if score #display_all.modes.protect_the_king.played switch.data matches 1 unless entity 20180612-2024-2025-2026-142000000002 run scoreboard players set #display_all.modes.protect_the_king.played switch.data 0
execute if score #display_all.modes.protect_the_king.played switch.data matches 1 positioned -49 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-142000000002
execute unless score #display_all.modes.protect_the_king.played switch.data matches 1 positioned -49 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.protect_the_king.played",label:"Games played",uuid:"20180612-2024-2025-2026-142000000002",mode:1}
execute if score #display_all.modes.protect_the_king.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-142000000003 run scoreboard players set #display_all.modes.protect_the_king.wins switch.data 0
execute if score #display_all.modes.protect_the_king.wins switch.data matches 1 positioned -46 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-142000000003
execute unless score #display_all.modes.protect_the_king.wins switch.data matches 1 positioned -46 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.protect_the_king.wins",label:"Victories",uuid:"20180612-2024-2025-2026-142000000003",mode:1}
execute if score #display_all.modes.rush_the_point.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-143000000001 run scoreboard players set #display_all.modes.rush_the_point.total_games switch.data 0
execute if score #display_all.modes.rush_the_point.total_games switch.data matches 1 positioned -36.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-143000000001
execute unless score #display_all.modes.rush_the_point.total_games switch.data matches 1 positioned -36.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.rush_the_point.total_games",label:"Rush The Point",uuid:"20180612-2024-2025-2026-143000000001",mode:2}
execute if score #display_all.modes.rush_the_point.played switch.data matches 1 unless entity 20180612-2024-2025-2026-143000000002 run scoreboard players set #display_all.modes.rush_the_point.played switch.data 0
execute if score #display_all.modes.rush_the_point.played switch.data matches 1 positioned -38 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-143000000002
execute unless score #display_all.modes.rush_the_point.played switch.data matches 1 positioned -38 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_point.played",label:"Games played",uuid:"20180612-2024-2025-2026-143000000002",mode:1}
execute if score #display_all.modes.rush_the_point.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-143000000003 run scoreboard players set #display_all.modes.rush_the_point.wins switch.data 0
execute if score #display_all.modes.rush_the_point.wins switch.data matches 1 positioned -35 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-143000000003
execute unless score #display_all.modes.rush_the_point.wins switch.data matches 1 positioned -35 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_point.wins",label:"Victories",uuid:"20180612-2024-2025-2026-143000000003",mode:1}

