
#> switch:lobby/boards/z1
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.tnt_run.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-111000000001 run scoreboard players set #display_all.modes.tnt_run.total_games switch.data 0
execute if score #display_all.modes.tnt_run.total_games switch.data matches 1 positioned 2 70.5 36.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-111000000001
execute unless score #display_all.modes.tnt_run.total_games switch.data matches 1 positioned 2 70.5 36.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.tnt_run.total_games",label:"TNT Run",uuid:"20180612-2024-2025-2026-111000000001",mode:2}
execute if score #display_all.modes.tnt_run.played switch.data matches 1 unless entity 20180612-2024-2025-2026-111000000002 run scoreboard players set #display_all.modes.tnt_run.played switch.data 0
execute if score #display_all.modes.tnt_run.played switch.data matches 1 positioned 6 70.5 35 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-111000000002
execute unless score #display_all.modes.tnt_run.played switch.data matches 1 positioned 6 70.5 35 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.tnt_run.played",label:"Games played",uuid:"20180612-2024-2025-2026-111000000002",mode:1}
execute if score #display_all.modes.tnt_run.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-111000000003 run scoreboard players set #display_all.modes.tnt_run.wins switch.data 0
execute if score #display_all.modes.tnt_run.wins switch.data matches 1 positioned 6 70.5 38 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-111000000003
execute unless score #display_all.modes.tnt_run.wins switch.data matches 1 positioned 6 70.5 38 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.tnt_run.wins",label:"Victories",uuid:"20180612-2024-2025-2026-111000000003",mode:1}
execute if score #display_all.modes.block_party.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-112000000001 run scoreboard players set #display_all.modes.block_party.total_games switch.data 0
execute if score #display_all.modes.block_party.total_games switch.data matches 1 positioned 2 70.5 47.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-112000000001
execute unless score #display_all.modes.block_party.total_games switch.data matches 1 positioned 2 70.5 47.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.block_party.total_games",label:"Block Party",uuid:"20180612-2024-2025-2026-112000000001",mode:2}
execute if score #display_all.modes.block_party.played switch.data matches 1 unless entity 20180612-2024-2025-2026-112000000002 run scoreboard players set #display_all.modes.block_party.played switch.data 0
execute if score #display_all.modes.block_party.played switch.data matches 1 positioned 6 70.5 46 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-112000000002
execute unless score #display_all.modes.block_party.played switch.data matches 1 positioned 6 70.5 46 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.block_party.played",label:"Games played",uuid:"20180612-2024-2025-2026-112000000002",mode:1}
execute if score #display_all.modes.block_party.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-112000000003 run scoreboard players set #display_all.modes.block_party.wins switch.data 0
execute if score #display_all.modes.block_party.wins switch.data matches 1 positioned 6 70.5 49 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-112000000003
execute unless score #display_all.modes.block_party.wins switch.data matches 1 positioned 6 70.5 49 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.block_party.wins",label:"Victories",uuid:"20180612-2024-2025-2026-112000000003",mode:1}
execute if score #display_all.modes.snowball_painter.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-113000000001 run scoreboard players set #display_all.modes.snowball_painter.total_games switch.data 0
execute if score #display_all.modes.snowball_painter.total_games switch.data matches 1 positioned 2 70.5 58.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-113000000001
execute unless score #display_all.modes.snowball_painter.total_games switch.data matches 1 positioned 2 70.5 58.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.snowball_painter.total_games",label:"Snowball Painter",uuid:"20180612-2024-2025-2026-113000000001",mode:2}
execute if score #display_all.modes.snowball_painter.played switch.data matches 1 unless entity 20180612-2024-2025-2026-113000000002 run scoreboard players set #display_all.modes.snowball_painter.played switch.data 0
execute if score #display_all.modes.snowball_painter.played switch.data matches 1 positioned 6 70.5 57 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-113000000002
execute unless score #display_all.modes.snowball_painter.played switch.data matches 1 positioned 6 70.5 57 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.snowball_painter.played",label:"Games played",uuid:"20180612-2024-2025-2026-113000000002",mode:1}
execute if score #display_all.modes.snowball_painter.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-113000000003 run scoreboard players set #display_all.modes.snowball_painter.wins switch.data 0
execute if score #display_all.modes.snowball_painter.wins switch.data matches 1 positioned 6 70.5 60 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-113000000003
execute unless score #display_all.modes.snowball_painter.wins switch.data matches 1 positioned 6 70.5 60 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.snowball_painter.wins",label:"Victories",uuid:"20180612-2024-2025-2026-113000000003",mode:1}
execute if score #display_all.modes.moutron.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-128000000001 run scoreboard players set #display_all.modes.moutron.total_games switch.data 0
execute if score #display_all.modes.moutron.total_games switch.data matches 1 positioned -2 70.5 58.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-128000000001
execute unless score #display_all.modes.moutron.total_games switch.data matches 1 positioned -2 70.5 58.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.moutron.total_games",label:"Moutron",uuid:"20180612-2024-2025-2026-128000000001",mode:2}
execute if score #display_all.modes.moutron.played switch.data matches 1 unless entity 20180612-2024-2025-2026-128000000002 run scoreboard players set #display_all.modes.moutron.played switch.data 0
execute if score #display_all.modes.moutron.played switch.data matches 1 positioned -6 70.5 60 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-128000000002
execute unless score #display_all.modes.moutron.played switch.data matches 1 positioned -6 70.5 60 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.moutron.played",label:"Games played",uuid:"20180612-2024-2025-2026-128000000002",mode:1}
execute if score #display_all.modes.moutron.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-128000000003 run scoreboard players set #display_all.modes.moutron.wins switch.data 0
execute if score #display_all.modes.moutron.wins switch.data matches 1 positioned -6 70.5 57 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-128000000003
execute unless score #display_all.modes.moutron.wins switch.data matches 1 positioned -6 70.5 57 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.moutron.wins",label:"Victories",uuid:"20180612-2024-2025-2026-128000000003",mode:1}
execute if score #display_all.modes.thunder_spear.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-129000000001 run scoreboard players set #display_all.modes.thunder_spear.total_games switch.data 0
execute if score #display_all.modes.thunder_spear.total_games switch.data matches 1 positioned -2 70.5 47.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-129000000001
execute unless score #display_all.modes.thunder_spear.total_games switch.data matches 1 positioned -2 70.5 47.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.thunder_spear.total_games",label:"Thunder Spear",uuid:"20180612-2024-2025-2026-129000000001",mode:2}
execute if score #display_all.modes.thunder_spear.played switch.data matches 1 unless entity 20180612-2024-2025-2026-129000000002 run scoreboard players set #display_all.modes.thunder_spear.played switch.data 0
execute if score #display_all.modes.thunder_spear.played switch.data matches 1 positioned -6 70.5 49 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-129000000002
execute unless score #display_all.modes.thunder_spear.played switch.data matches 1 positioned -6 70.5 49 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.thunder_spear.played",label:"Games played",uuid:"20180612-2024-2025-2026-129000000002",mode:1}
execute if score #display_all.modes.thunder_spear.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-129000000003 run scoreboard players set #display_all.modes.thunder_spear.wins switch.data 0
execute if score #display_all.modes.thunder_spear.wins switch.data matches 1 positioned -6 70.5 46 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-129000000003
execute unless score #display_all.modes.thunder_spear.wins switch.data matches 1 positioned -6 70.5 46 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.thunder_spear.wins",label:"Victories",uuid:"20180612-2024-2025-2026-129000000003",mode:1}
execute if score #display_all.modes.castagne.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-130000000001 run scoreboard players set #display_all.modes.castagne.total_games switch.data 0
execute if score #display_all.modes.castagne.total_games switch.data matches 1 positioned -2 70.5 36.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-130000000001
execute unless score #display_all.modes.castagne.total_games switch.data matches 1 positioned -2 70.5 36.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.castagne.total_games",label:"Castagne",uuid:"20180612-2024-2025-2026-130000000001",mode:2}
execute if score #display_all.modes.castagne.played switch.data matches 1 unless entity 20180612-2024-2025-2026-130000000002 run scoreboard players set #display_all.modes.castagne.played switch.data 0
execute if score #display_all.modes.castagne.played switch.data matches 1 positioned -6 70.5 38 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-130000000002
execute unless score #display_all.modes.castagne.played switch.data matches 1 positioned -6 70.5 38 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.castagne.played",label:"Games played",uuid:"20180612-2024-2025-2026-130000000002",mode:1}
execute if score #display_all.modes.castagne.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-130000000003 run scoreboard players set #display_all.modes.castagne.wins switch.data 0
execute if score #display_all.modes.castagne.wins switch.data matches 1 positioned -6 70.5 35 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-130000000003
execute unless score #display_all.modes.castagne.wins switch.data matches 1 positioned -6 70.5 35 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.castagne.wins",label:"Victories",uuid:"20180612-2024-2025-2026-130000000003",mode:1}

