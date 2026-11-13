
#> switch:lobby/boards/z2
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.coin_chaser.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-114000000001 run scoreboard players set #display_all.modes.coin_chaser.total_games switch.data 0
execute if score #display_all.modes.coin_chaser.total_games switch.data matches 1 positioned 2 70.5 69.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-114000000001
execute unless score #display_all.modes.coin_chaser.total_games switch.data matches 1 positioned 2 70.5 69.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.coin_chaser.total_games",label:"Coin Chaser",uuid:"20180612-2024-2025-2026-114000000001",mode:2}
execute if score #display_all.modes.coin_chaser.played switch.data matches 1 unless entity 20180612-2024-2025-2026-114000000002 run scoreboard players set #display_all.modes.coin_chaser.played switch.data 0
execute if score #display_all.modes.coin_chaser.played switch.data matches 1 positioned 6 70.5 68 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-114000000002
execute unless score #display_all.modes.coin_chaser.played switch.data matches 1 positioned 6 70.5 68 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.coin_chaser.played",label:"Games played",uuid:"20180612-2024-2025-2026-114000000002",mode:1}
execute if score #display_all.modes.coin_chaser.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-114000000003 run scoreboard players set #display_all.modes.coin_chaser.wins switch.data 0
execute if score #display_all.modes.coin_chaser.wins switch.data matches 1 positioned 6 70.5 71 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-114000000003
execute unless score #display_all.modes.coin_chaser.wins switch.data matches 1 positioned 6 70.5 71 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.coin_chaser.wins",label:"Victories",uuid:"20180612-2024-2025-2026-114000000003",mode:1}
execute if score #display_all.modes.bombardement.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-115000000001 run scoreboard players set #display_all.modes.bombardement.total_games switch.data 0
execute if score #display_all.modes.bombardement.total_games switch.data matches 1 positioned 2 70.5 80.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-115000000001
execute unless score #display_all.modes.bombardement.total_games switch.data matches 1 positioned 2 70.5 80.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.bombardement.total_games",label:"Bombardement",uuid:"20180612-2024-2025-2026-115000000001",mode:2}
execute if score #display_all.modes.bombardement.played switch.data matches 1 unless entity 20180612-2024-2025-2026-115000000002 run scoreboard players set #display_all.modes.bombardement.played switch.data 0
execute if score #display_all.modes.bombardement.played switch.data matches 1 positioned 6 70.5 79 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-115000000002
execute unless score #display_all.modes.bombardement.played switch.data matches 1 positioned 6 70.5 79 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.bombardement.played",label:"Games played",uuid:"20180612-2024-2025-2026-115000000002",mode:1}
execute if score #display_all.modes.bombardement.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-115000000003 run scoreboard players set #display_all.modes.bombardement.wins switch.data 0
execute if score #display_all.modes.bombardement.wins switch.data matches 1 positioned 6 70.5 82 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-115000000003
execute unless score #display_all.modes.bombardement.wins switch.data matches 1 positioned 6 70.5 82 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.bombardement.wins",label:"Victories",uuid:"20180612-2024-2025-2026-115000000003",mode:1}
execute if score #display_all.modes.minigolf.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-116000000001 run scoreboard players set #display_all.modes.minigolf.total_games switch.data 0
execute if score #display_all.modes.minigolf.total_games switch.data matches 1 positioned 2 70.5 91.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-116000000001
execute unless score #display_all.modes.minigolf.total_games switch.data matches 1 positioned 2 70.5 91.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.minigolf.total_games",label:"MiniGolf",uuid:"20180612-2024-2025-2026-116000000001",mode:2}
execute if score #display_all.modes.minigolf.played switch.data matches 1 unless entity 20180612-2024-2025-2026-116000000002 run scoreboard players set #display_all.modes.minigolf.played switch.data 0
execute if score #display_all.modes.minigolf.played switch.data matches 1 positioned 6 70.5 90 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-116000000002
execute unless score #display_all.modes.minigolf.played switch.data matches 1 positioned 6 70.5 90 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.minigolf.played",label:"Games played",uuid:"20180612-2024-2025-2026-116000000002",mode:1}
execute if score #display_all.modes.minigolf.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-116000000003 run scoreboard players set #display_all.modes.minigolf.wins switch.data 0
execute if score #display_all.modes.minigolf.wins switch.data matches 1 positioned 6 70.5 93 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-116000000003
execute unless score #display_all.modes.minigolf.wins switch.data matches 1 positioned 6 70.5 93 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.minigolf.wins",label:"Victories",uuid:"20180612-2024-2025-2026-116000000003",mode:1}
execute if score #display_all.modes.shoot_da_sheep.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-125000000001 run scoreboard players set #display_all.modes.shoot_da_sheep.total_games switch.data 0
execute if score #display_all.modes.shoot_da_sheep.total_games switch.data matches 1 positioned -2 70.5 91.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-125000000001
execute unless score #display_all.modes.shoot_da_sheep.total_games switch.data matches 1 positioned -2 70.5 91.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.shoot_da_sheep.total_games",label:"Shoot Da\'Sheep",uuid:"20180612-2024-2025-2026-125000000001",mode:2}
execute if score #display_all.modes.shoot_da_sheep.played switch.data matches 1 unless entity 20180612-2024-2025-2026-125000000002 run scoreboard players set #display_all.modes.shoot_da_sheep.played switch.data 0
execute if score #display_all.modes.shoot_da_sheep.played switch.data matches 1 positioned -6 70.5 93 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-125000000002
execute unless score #display_all.modes.shoot_da_sheep.played switch.data matches 1 positioned -6 70.5 93 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.shoot_da_sheep.played",label:"Games played",uuid:"20180612-2024-2025-2026-125000000002",mode:1}
execute if score #display_all.modes.shoot_da_sheep.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-125000000003 run scoreboard players set #display_all.modes.shoot_da_sheep.wins switch.data 0
execute if score #display_all.modes.shoot_da_sheep.wins switch.data matches 1 positioned -6 70.5 90 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-125000000003
execute unless score #display_all.modes.shoot_da_sheep.wins switch.data matches 1 positioned -6 70.5 90 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.shoot_da_sheep.wins",label:"Victories",uuid:"20180612-2024-2025-2026-125000000003",mode:1}
execute if score #display_all.modes.simultaneous_jump.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-126000000001 run scoreboard players set #display_all.modes.simultaneous_jump.total_games switch.data 0
execute if score #display_all.modes.simultaneous_jump.total_games switch.data matches 1 positioned -2 70.5 80.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-126000000001
execute unless score #display_all.modes.simultaneous_jump.total_games switch.data matches 1 positioned -2 70.5 80.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.simultaneous_jump.total_games",label:"Simultaneous Jump",uuid:"20180612-2024-2025-2026-126000000001",mode:2}
execute if score #display_all.modes.simultaneous_jump.played switch.data matches 1 unless entity 20180612-2024-2025-2026-126000000002 run scoreboard players set #display_all.modes.simultaneous_jump.played switch.data 0
execute if score #display_all.modes.simultaneous_jump.played switch.data matches 1 positioned -6 70.5 82 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-126000000002
execute unless score #display_all.modes.simultaneous_jump.played switch.data matches 1 positioned -6 70.5 82 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.simultaneous_jump.played",label:"Games played",uuid:"20180612-2024-2025-2026-126000000002",mode:1}
execute if score #display_all.modes.simultaneous_jump.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-126000000003 run scoreboard players set #display_all.modes.simultaneous_jump.wins switch.data 0
execute if score #display_all.modes.simultaneous_jump.wins switch.data matches 1 positioned -6 70.5 79 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-126000000003
execute unless score #display_all.modes.simultaneous_jump.wins switch.data matches 1 positioned -6 70.5 79 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.simultaneous_jump.wins",label:"Victories",uuid:"20180612-2024-2025-2026-126000000003",mode:1}
execute if score #display_all.modes.build_battle.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-127000000001 run scoreboard players set #display_all.modes.build_battle.total_games switch.data 0
execute if score #display_all.modes.build_battle.total_games switch.data matches 1 positioned -2 70.5 69.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-127000000001
execute unless score #display_all.modes.build_battle.total_games switch.data matches 1 positioned -2 70.5 69.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.build_battle.total_games",label:"Build Battle",uuid:"20180612-2024-2025-2026-127000000001",mode:2}
execute if score #display_all.modes.build_battle.played switch.data matches 1 unless entity 20180612-2024-2025-2026-127000000002 run scoreboard players set #display_all.modes.build_battle.played switch.data 0
execute if score #display_all.modes.build_battle.played switch.data matches 1 positioned -6 70.5 71 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-127000000002
execute unless score #display_all.modes.build_battle.played switch.data matches 1 positioned -6 70.5 71 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.build_battle.played",label:"Games played",uuid:"20180612-2024-2025-2026-127000000002",mode:1}
execute if score #display_all.modes.build_battle.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-127000000003 run scoreboard players set #display_all.modes.build_battle.wins switch.data 0
execute if score #display_all.modes.build_battle.wins switch.data matches 1 positioned -6 70.5 68 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-127000000003
execute unless score #display_all.modes.build_battle.wins switch.data matches 1 positioned -6 70.5 68 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.build_battle.wins",label:"Victories",uuid:"20180612-2024-2025-2026-127000000003",mode:1}

