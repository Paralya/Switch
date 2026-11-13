
#> switch:lobby/boards/x1
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.TODO2.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-101000000001 run scoreboard players set #display_all.modes.TODO2.total_games switch.data 0
execute if score #display_all.modes.TODO2.total_games switch.data matches 1 positioned 47.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-101000000001
execute unless score #display_all.modes.TODO2.total_games switch.data matches 1 positioned 47.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.TODO2.total_games",label:"???",uuid:"20180612-2024-2025-2026-101000000001",mode:2}
execute if score #display_all.modes.TODOO.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-101000000002 run scoreboard players set #display_all.modes.TODOO.total_games switch.data 0
execute if score #display_all.modes.TODOO.total_games switch.data matches 1 positioned 36.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-101000000002
execute unless score #display_all.modes.TODOO.total_games switch.data matches 1 positioned 36.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.TODOO.total_games",label:"???",uuid:"20180612-2024-2025-2026-101000000002",mode:2}
execute if score #display_all.modes.warden_escape.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-105000000001 run scoreboard players set #display_all.modes.warden_escape.total_games switch.data 0
execute if score #display_all.modes.warden_escape.total_games switch.data matches 1 positioned 36.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-105000000001
execute unless score #display_all.modes.warden_escape.total_games switch.data matches 1 positioned 36.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.warden_escape.total_games",label:"Warden Escape",uuid:"20180612-2024-2025-2026-105000000001",mode:2}
execute if score #display_all.modes.warden_escape.played switch.data matches 1 unless entity 20180612-2024-2025-2026-105000000002 run scoreboard players set #display_all.modes.warden_escape.played switch.data 0
execute if score #display_all.modes.warden_escape.played switch.data matches 1 positioned 35 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-105000000002
execute unless score #display_all.modes.warden_escape.played switch.data matches 1 positioned 35 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.warden_escape.played",label:"Games played",uuid:"20180612-2024-2025-2026-105000000002",mode:1}
execute if score #display_all.modes.warden_escape.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-105000000003 run scoreboard players set #display_all.modes.warden_escape.wins switch.data 0
execute if score #display_all.modes.warden_escape.wins switch.data matches 1 positioned 38 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-105000000003
execute unless score #display_all.modes.warden_escape.wins switch.data matches 1 positioned 38 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.warden_escape.wins",label:"Victories",uuid:"20180612-2024-2025-2026-105000000003",mode:1}
execute if score #display_all.modes.panic_chase.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-106000000001 run scoreboard players set #display_all.modes.panic_chase.total_games switch.data 0
execute if score #display_all.modes.panic_chase.total_games switch.data matches 1 positioned 47.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-106000000001
execute unless score #display_all.modes.panic_chase.total_games switch.data matches 1 positioned 47.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.panic_chase.total_games",label:"Panic Chase",uuid:"20180612-2024-2025-2026-106000000001",mode:2}
execute if score #display_all.modes.panic_chase.played switch.data matches 1 unless entity 20180612-2024-2025-2026-106000000002 run scoreboard players set #display_all.modes.panic_chase.played switch.data 0
execute if score #display_all.modes.panic_chase.played switch.data matches 1 positioned 49 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-106000000002
execute unless score #display_all.modes.panic_chase.played switch.data matches 1 positioned 49 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.panic_chase.played",label:"Games played",uuid:"20180612-2024-2025-2026-106000000002",mode:1}
execute if score #display_all.modes.panic_chase.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-106000000003 run scoreboard players set #display_all.modes.panic_chase.wins switch.data 0
execute if score #display_all.modes.panic_chase.wins switch.data matches 1 positioned 46 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-106000000003
execute unless score #display_all.modes.panic_chase.wins switch.data matches 1 positioned 46 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.panic_chase.wins",label:"Victories",uuid:"20180612-2024-2025-2026-106000000003",mode:1}

