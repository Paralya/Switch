
#> switch:lobby/boards/z0
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.spleef.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-109000000001 run scoreboard players set #display_all.modes.spleef.total_games switch.data 0
execute if score #display_all.modes.spleef.total_games switch.data matches 1 positioned 2 70.5 14.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-109000000001
execute unless score #display_all.modes.spleef.total_games switch.data matches 1 positioned 2 70.5 14.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.spleef.total_games",label:"Spleef",uuid:"20180612-2024-2025-2026-109000000001",mode:2}
execute if score #display_all.modes.spleef.played switch.data matches 1 unless entity 20180612-2024-2025-2026-109000000002 run scoreboard players set #display_all.modes.spleef.played switch.data 0
execute if score #display_all.modes.spleef.played switch.data matches 1 positioned 6 70.5 13 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-109000000002
execute unless score #display_all.modes.spleef.played switch.data matches 1 positioned 6 70.5 13 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spleef.played",label:"Games played",uuid:"20180612-2024-2025-2026-109000000002",mode:1}
execute if score #display_all.modes.spleef.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-109000000003 run scoreboard players set #display_all.modes.spleef.wins switch.data 0
execute if score #display_all.modes.spleef.wins switch.data matches 1 positioned 6 70.5 16 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-109000000003
execute unless score #display_all.modes.spleef.wins switch.data matches 1 positioned 6 70.5 16 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spleef.wins",label:"Victories",uuid:"20180612-2024-2025-2026-109000000003",mode:1}
execute if score #display_all.modes.de_a_coudre.played switch.data matches 1 unless entity 20180612-2024-2025-2026-110000000001 run scoreboard players set #display_all.modes.de_a_coudre.played switch.data 0
execute if score #display_all.modes.de_a_coudre.played switch.data matches 1 positioned 6 70.5 24 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-110000000001
execute unless score #display_all.modes.de_a_coudre.played switch.data matches 1 positioned 6 70.5 24 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.de_a_coudre.played",label:"Games played",uuid:"20180612-2024-2025-2026-110000000001",mode:1}
execute if score #display_all.modes.de_a_coudre.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-110000000002 run scoreboard players set #display_all.modes.de_a_coudre.total_games switch.data 0
execute if score #display_all.modes.de_a_coudre.total_games switch.data matches 1 positioned 2 70.5 25.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-110000000002
execute unless score #display_all.modes.de_a_coudre.total_games switch.data matches 1 positioned 2 70.5 25.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.de_a_coudre.total_games",label:"Dé à Coudre",uuid:"20180612-2024-2025-2026-110000000002",mode:2}
execute if score #display_all.modes.de_a_coudre.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-110000000003 run scoreboard players set #display_all.modes.de_a_coudre.wins switch.data 0
execute if score #display_all.modes.de_a_coudre.wins switch.data matches 1 positioned 6 70.5 27 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-110000000003
execute unless score #display_all.modes.de_a_coudre.wins switch.data matches 1 positioned 6 70.5 27 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.de_a_coudre.wins",label:"Victories",uuid:"20180612-2024-2025-2026-110000000003",mode:1}
execute if score #display_all.modes.feed_fast.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-131000000001 run scoreboard players set #display_all.modes.feed_fast.total_games switch.data 0
execute if score #display_all.modes.feed_fast.total_games switch.data matches 1 positioned -2 70.5 25.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-131000000001
execute unless score #display_all.modes.feed_fast.total_games switch.data matches 1 positioned -2 70.5 25.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.feed_fast.total_games",label:"Feed Fast",uuid:"20180612-2024-2025-2026-131000000001",mode:2}
execute if score #display_all.modes.feed_fast.played switch.data matches 1 unless entity 20180612-2024-2025-2026-131000000002 run scoreboard players set #display_all.modes.feed_fast.played switch.data 0
execute if score #display_all.modes.feed_fast.played switch.data matches 1 positioned -6 70.5 27 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-131000000002
execute unless score #display_all.modes.feed_fast.played switch.data matches 1 positioned -6 70.5 27 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.feed_fast.played",label:"Games played",uuid:"20180612-2024-2025-2026-131000000002",mode:1}
execute if score #display_all.modes.feed_fast.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-131000000003 run scoreboard players set #display_all.modes.feed_fast.wins switch.data 0
execute if score #display_all.modes.feed_fast.wins switch.data matches 1 positioned -6 70.5 24 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-131000000003
execute unless score #display_all.modes.feed_fast.wins switch.data matches 1 positioned -6 70.5 24 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.feed_fast.wins",label:"Victories",uuid:"20180612-2024-2025-2026-131000000003",mode:1}
execute if score #display_all.modes.pitchout.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-132000000001 run scoreboard players set #display_all.modes.pitchout.total_games switch.data 0
execute if score #display_all.modes.pitchout.total_games switch.data matches 1 positioned -2 70.5 14.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-132000000001
execute unless score #display_all.modes.pitchout.total_games switch.data matches 1 positioned -2 70.5 14.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.pitchout.total_games",label:"Pitchout",uuid:"20180612-2024-2025-2026-132000000001",mode:2}
execute if score #display_all.modes.pitchout.played switch.data matches 1 unless entity 20180612-2024-2025-2026-132000000002 run scoreboard players set #display_all.modes.pitchout.played switch.data 0
execute if score #display_all.modes.pitchout.played switch.data matches 1 positioned -6 70.5 16 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-132000000002
execute unless score #display_all.modes.pitchout.played switch.data matches 1 positioned -6 70.5 16 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitchout.played",label:"Games played",uuid:"20180612-2024-2025-2026-132000000002",mode:1}
execute if score #display_all.modes.pitchout.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-132000000003 run scoreboard players set #display_all.modes.pitchout.wins switch.data 0
execute if score #display_all.modes.pitchout.wins switch.data matches 1 positioned -6 70.5 13 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-132000000003
execute unless score #display_all.modes.pitchout.wins switch.data matches 1 positioned -6 70.5 13 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitchout.wins",label:"Victories",uuid:"20180612-2024-2025-2026-132000000003",mode:1}

