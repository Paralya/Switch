
#> switch:lobby/boards/z4
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.race.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-120000000001 run scoreboard players set #display_all.modes.race.total_games switch.data 0
execute if score #display_all.modes.race.total_games switch.data matches 1 positioned 2 70.5 135.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-120000000001
execute unless score #display_all.modes.race.total_games switch.data matches 1 positioned 2 70.5 135.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.race.total_games",label:"Race",uuid:"20180612-2024-2025-2026-120000000001",mode:2}
execute if score #display_all.modes.race.played switch.data matches 1 unless entity 20180612-2024-2025-2026-120000000002 run scoreboard players set #display_all.modes.race.played switch.data 0
execute if score #display_all.modes.race.played switch.data matches 1 positioned 6 70.5 134 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-120000000002
execute unless score #display_all.modes.race.played switch.data matches 1 positioned 6 70.5 134 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.race.played",label:"Games played",uuid:"20180612-2024-2025-2026-120000000002",mode:1}
execute if score #display_all.modes.race.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-120000000003 run scoreboard players set #display_all.modes.race.wins switch.data 0
execute if score #display_all.modes.race.wins switch.data matches 1 positioned 6 70.5 137 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-120000000003
execute unless score #display_all.modes.race.wins switch.data matches 1 positioned 6 70.5 137 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.race.wins",label:"Victories",uuid:"20180612-2024-2025-2026-120000000003",mode:1}
execute if score #display_all.modes.one_shot.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-121000000001 run scoreboard players set #display_all.modes.one_shot.total_games switch.data 0
execute if score #display_all.modes.one_shot.total_games switch.data matches 1 positioned -2 70.5 135.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-121000000001
execute unless score #display_all.modes.one_shot.total_games switch.data matches 1 positioned -2 70.5 135.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.one_shot.total_games",label:"One Shot",uuid:"20180612-2024-2025-2026-121000000001",mode:2}
execute if score #display_all.modes.one_shot.played switch.data matches 1 unless entity 20180612-2024-2025-2026-121000000002 run scoreboard players set #display_all.modes.one_shot.played switch.data 0
execute if score #display_all.modes.one_shot.played switch.data matches 1 positioned -6 70.5 137 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-121000000002
execute unless score #display_all.modes.one_shot.played switch.data matches 1 positioned -6 70.5 137 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.one_shot.played",label:"Games played",uuid:"20180612-2024-2025-2026-121000000002",mode:1}
execute if score #display_all.modes.one_shot.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-121000000003 run scoreboard players set #display_all.modes.one_shot.wins switch.data 0
execute if score #display_all.modes.one_shot.wins switch.data matches 1 positioned -6 70.5 134 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-121000000003
execute unless score #display_all.modes.one_shot.wins switch.data matches 1 positioned -6 70.5 134 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.one_shot.wins",label:"Victories",uuid:"20180612-2024-2025-2026-121000000003",mode:1}

