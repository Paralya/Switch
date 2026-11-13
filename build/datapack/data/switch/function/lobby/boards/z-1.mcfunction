
#> switch:lobby/boards/z-1
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.player.total_deaths switch.data matches 1 unless entity 20180612-2024-2025-2026-102000000001 run scoreboard players set #display_all.player.total_deaths switch.data 0
execute if score #display_all.player.total_deaths switch.data matches 1 positioned -5 71.5 -15 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-102000000001
execute unless score #display_all.player.total_deaths switch.data matches 1 positioned -5 71.5 -15 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.player.total_deaths",label:"Deaths",uuid:"20180612-2024-2025-2026-102000000001",mode:1}
execute if score #display_all.player.total_kills switch.data matches 1 unless entity 20180612-2024-2025-2026-102000000002 run scoreboard players set #display_all.player.total_kills switch.data 0
execute if score #display_all.player.total_kills switch.data matches 1 positioned -5 71.5 -18 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-102000000002
execute unless score #display_all.player.total_kills switch.data matches 1 positioned -5 71.5 -18 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.player.total_kills",label:"Kills",uuid:"20180612-2024-2025-2026-102000000002",mode:1}
execute if score #display_all.player.total_wins switch.data matches 1 unless entity 20180612-2024-2025-2026-102000000003 run scoreboard players set #display_all.player.total_wins switch.data 0
execute if score #display_all.player.total_wins switch.data matches 1 positioned -3 71.5 -20 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-102000000003
execute unless score #display_all.player.total_wins switch.data matches 1 positioned -3 71.5 -20 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.player.total_wins",label:"Victories",uuid:"20180612-2024-2025-2026-102000000003",mode:1}
execute if score #display_all.player.played_win_ratio switch.data matches 1 unless entity 20180612-2024-2025-2026-102000000004 run scoreboard players set #display_all.player.played_win_ratio switch.data 0
execute if score #display_all.player.played_win_ratio switch.data matches 1 positioned 0 71.5 -21 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-102000000004
execute unless score #display_all.player.played_win_ratio switch.data matches 1 positioned 0 71.5 -21 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.player.played_win_ratio",label:"Win rate",uuid:"20180612-2024-2025-2026-102000000004",mode:1}
execute if score #display_all.player.total_played switch.data matches 1 unless entity 20180612-2024-2025-2026-102000000005 run scoreboard players set #display_all.player.total_played switch.data 0
execute if score #display_all.player.total_played switch.data matches 1 positioned 3 71.5 -20 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-102000000005
execute unless score #display_all.player.total_played switch.data matches 1 positioned 3 71.5 -20 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.player.total_played",label:"Games played",uuid:"20180612-2024-2025-2026-102000000005",mode:1}
execute if score #display_all.player.advancement_count switch.data matches 1 unless entity 20180612-2024-2025-2026-102000000006 run scoreboard players set #display_all.player.advancement_count switch.data 0
execute if score #display_all.player.advancement_count switch.data matches 1 positioned 5 71.5 -18 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-102000000006
execute unless score #display_all.player.advancement_count switch.data matches 1 positioned 5 71.5 -18 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.player.advancement_count",label:"Advancements",uuid:"20180612-2024-2025-2026-102000000006",mode:1}
execute if score #display_all.player.total_money switch.data matches 1 unless entity 20180612-2024-2025-2026-102000000007 run scoreboard players set #display_all.player.total_money switch.data 0
execute if score #display_all.player.total_money switch.data matches 1 positioned 5 71.5 -15 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-102000000007
execute unless score #display_all.player.total_money switch.data matches 1 positioned 5 71.5 -15 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.player.total_money",label:"Current money",uuid:"20180612-2024-2025-2026-102000000007",mode:1}

