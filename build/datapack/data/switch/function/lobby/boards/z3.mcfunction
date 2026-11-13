
#> switch:lobby/boards/z3
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.mlg_a_coudre.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-117000000001 run scoreboard players set #display_all.modes.mlg_a_coudre.total_games switch.data 0
execute if score #display_all.modes.mlg_a_coudre.total_games switch.data matches 1 positioned 2 70.5 102.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-117000000001
execute unless score #display_all.modes.mlg_a_coudre.total_games switch.data matches 1 positioned 2 70.5 102.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.mlg_a_coudre.total_games",label:"MLG à Coudre",uuid:"20180612-2024-2025-2026-117000000001",mode:2}
execute if score #display_all.modes.mlg_a_coudre.played switch.data matches 1 unless entity 20180612-2024-2025-2026-117000000002 run scoreboard players set #display_all.modes.mlg_a_coudre.played switch.data 0
execute if score #display_all.modes.mlg_a_coudre.played switch.data matches 1 positioned 6 70.5 101 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-117000000002
execute unless score #display_all.modes.mlg_a_coudre.played switch.data matches 1 positioned 6 70.5 101 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.mlg_a_coudre.played",label:"Games played",uuid:"20180612-2024-2025-2026-117000000002",mode:1}
execute if score #display_all.modes.mlg_a_coudre.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-117000000003 run scoreboard players set #display_all.modes.mlg_a_coudre.wins switch.data 0
execute if score #display_all.modes.mlg_a_coudre.wins switch.data matches 1 positioned 6 70.5 104 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-117000000003
execute unless score #display_all.modes.mlg_a_coudre.wins switch.data matches 1 positioned 6 70.5 104 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.mlg_a_coudre.wins",label:"Victories",uuid:"20180612-2024-2025-2026-117000000003",mode:1}
execute if score #display_all.modes.fish_fight.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-118000000001 run scoreboard players set #display_all.modes.fish_fight.total_games switch.data 0
execute if score #display_all.modes.fish_fight.total_games switch.data matches 1 positioned 2 70.5 113.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-118000000001
execute unless score #display_all.modes.fish_fight.total_games switch.data matches 1 positioned 2 70.5 113.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.fish_fight.total_games",label:"Fish Fight",uuid:"20180612-2024-2025-2026-118000000001",mode:2}
execute if score #display_all.modes.fish_fight.played switch.data matches 1 unless entity 20180612-2024-2025-2026-118000000002 run scoreboard players set #display_all.modes.fish_fight.played switch.data 0
execute if score #display_all.modes.fish_fight.played switch.data matches 1 positioned 6 70.5 112 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-118000000002
execute unless score #display_all.modes.fish_fight.played switch.data matches 1 positioned 6 70.5 112 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fish_fight.played",label:"Games played",uuid:"20180612-2024-2025-2026-118000000002",mode:1}
execute if score #display_all.modes.fish_fight.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-118000000003 run scoreboard players set #display_all.modes.fish_fight.wins switch.data 0
execute if score #display_all.modes.fish_fight.wins switch.data matches 1 positioned 6 70.5 115 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-118000000003
execute unless score #display_all.modes.fish_fight.wins switch.data matches 1 positioned 6 70.5 115 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fish_fight.wins",label:"Victories",uuid:"20180612-2024-2025-2026-118000000003",mode:1}
execute if score #display_all.modes.fireblast.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-119000000001 run scoreboard players set #display_all.modes.fireblast.total_games switch.data 0
execute if score #display_all.modes.fireblast.total_games switch.data matches 1 positioned 2 70.5 124.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-119000000001
execute unless score #display_all.modes.fireblast.total_games switch.data matches 1 positioned 2 70.5 124.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.fireblast.total_games",label:"Fireblast",uuid:"20180612-2024-2025-2026-119000000001",mode:2}
execute if score #display_all.modes.fireblast.played switch.data matches 1 unless entity 20180612-2024-2025-2026-119000000002 run scoreboard players set #display_all.modes.fireblast.played switch.data 0
execute if score #display_all.modes.fireblast.played switch.data matches 1 positioned 6 70.5 123 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-119000000002
execute unless score #display_all.modes.fireblast.played switch.data matches 1 positioned 6 70.5 123 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fireblast.played",label:"Games played",uuid:"20180612-2024-2025-2026-119000000002",mode:1}
execute if score #display_all.modes.fireblast.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-119000000003 run scoreboard players set #display_all.modes.fireblast.wins switch.data 0
execute if score #display_all.modes.fireblast.wins switch.data matches 1 positioned 6 70.5 126 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-119000000003
execute unless score #display_all.modes.fireblast.wins switch.data matches 1 positioned 6 70.5 126 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fireblast.wins",label:"Victories",uuid:"20180612-2024-2025-2026-119000000003",mode:1}
execute if score #display_all.modes.pillars_of_fortune.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-122000000001 run scoreboard players set #display_all.modes.pillars_of_fortune.total_games switch.data 0
execute if score #display_all.modes.pillars_of_fortune.total_games switch.data matches 1 positioned -2 70.5 124.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-122000000001
execute unless score #display_all.modes.pillars_of_fortune.total_games switch.data matches 1 positioned -2 70.5 124.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.pillars_of_fortune.total_games",label:" Pillars of Fortune ",uuid:"20180612-2024-2025-2026-122000000001",mode:2}
execute if score #display_all.modes.pillars_of_fortune.played switch.data matches 1 unless entity 20180612-2024-2025-2026-122000000002 run scoreboard players set #display_all.modes.pillars_of_fortune.played switch.data 0
execute if score #display_all.modes.pillars_of_fortune.played switch.data matches 1 positioned -6 70.5 126 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-122000000002
execute unless score #display_all.modes.pillars_of_fortune.played switch.data matches 1 positioned -6 70.5 126 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pillars_of_fortune.played",label:"Games played",uuid:"20180612-2024-2025-2026-122000000002",mode:1}
execute if score #display_all.modes.pillars_of_fortune.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-122000000003 run scoreboard players set #display_all.modes.pillars_of_fortune.wins switch.data 0
execute if score #display_all.modes.pillars_of_fortune.wins switch.data matches 1 positioned -6 70.5 123 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-122000000003
execute unless score #display_all.modes.pillars_of_fortune.wins switch.data matches 1 positioned -6 70.5 123 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pillars_of_fortune.wins",label:"Victories",uuid:"20180612-2024-2025-2026-122000000003",mode:1}
execute if score #display_all.modes.memory_mine.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-123000000001 run scoreboard players set #display_all.modes.memory_mine.total_games switch.data 0
execute if score #display_all.modes.memory_mine.total_games switch.data matches 1 positioned -2 70.5 113.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-123000000001
execute unless score #display_all.modes.memory_mine.total_games switch.data matches 1 positioned -2 70.5 113.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.memory_mine.total_games",label:"Memory Mine",uuid:"20180612-2024-2025-2026-123000000001",mode:2}
execute if score #display_all.modes.memory_mine.played switch.data matches 1 unless entity 20180612-2024-2025-2026-123000000002 run scoreboard players set #display_all.modes.memory_mine.played switch.data 0
execute if score #display_all.modes.memory_mine.played switch.data matches 1 positioned -6 70.5 115 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-123000000002
execute unless score #display_all.modes.memory_mine.played switch.data matches 1 positioned -6 70.5 115 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.memory_mine.played",label:"Games played",uuid:"20180612-2024-2025-2026-123000000002",mode:1}
execute if score #display_all.modes.memory_mine.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-123000000003 run scoreboard players set #display_all.modes.memory_mine.wins switch.data 0
execute if score #display_all.modes.memory_mine.wins switch.data matches 1 positioned -6 70.5 112 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-123000000003
execute unless score #display_all.modes.memory_mine.wins switch.data matches 1 positioned -6 70.5 112 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.memory_mine.wins",label:"Victories",uuid:"20180612-2024-2025-2026-123000000003",mode:1}
execute if score #display_all.modes.cigogne.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-124000000001 run scoreboard players set #display_all.modes.cigogne.total_games switch.data 0
execute if score #display_all.modes.cigogne.total_games switch.data matches 1 positioned -2 70.5 102.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-124000000001
execute unless score #display_all.modes.cigogne.total_games switch.data matches 1 positioned -2 70.5 102.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.cigogne.total_games",label:"Cigogne",uuid:"20180612-2024-2025-2026-124000000001",mode:2}
execute if score #display_all.modes.cigogne.played switch.data matches 1 unless entity 20180612-2024-2025-2026-124000000002 run scoreboard players set #display_all.modes.cigogne.played switch.data 0
execute if score #display_all.modes.cigogne.played switch.data matches 1 positioned -6 70.5 104 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-124000000002
execute unless score #display_all.modes.cigogne.played switch.data matches 1 positioned -6 70.5 104 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.cigogne.played",label:"Games played",uuid:"20180612-2024-2025-2026-124000000002",mode:1}
execute if score #display_all.modes.cigogne.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-124000000003 run scoreboard players set #display_all.modes.cigogne.wins switch.data 0
execute if score #display_all.modes.cigogne.wins switch.data matches 1 positioned -6 70.5 101 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-124000000003
execute unless score #display_all.modes.cigogne.wins switch.data matches 1 positioned -6 70.5 101 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.cigogne.wins",label:"Victories",uuid:"20180612-2024-2025-2026-124000000003",mode:1}

