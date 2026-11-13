
#> switch:lobby/boards/x0
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:lobby/second
#

execute if score #display_all.modes.murder_mystery.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-103000000001 run scoreboard players set #display_all.modes.murder_mystery.total_games switch.data 0
execute if score #display_all.modes.murder_mystery.total_games switch.data matches 1 positioned 14.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-103000000001
execute unless score #display_all.modes.murder_mystery.total_games switch.data matches 1 positioned 14.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.murder_mystery.total_games",label:"Murder Mystery",uuid:"20180612-2024-2025-2026-103000000001",mode:2}
execute if score #display_all.modes.murder_mystery.played switch.data matches 1 unless entity 20180612-2024-2025-2026-103000000002 run scoreboard players set #display_all.modes.murder_mystery.played switch.data 0
execute if score #display_all.modes.murder_mystery.played switch.data matches 1 positioned 13 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-103000000002
execute unless score #display_all.modes.murder_mystery.played switch.data matches 1 positioned 13 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.murder_mystery.played",label:"Games played",uuid:"20180612-2024-2025-2026-103000000002",mode:1}
execute if score #display_all.modes.murder_mystery.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-103000000003 run scoreboard players set #display_all.modes.murder_mystery.wins switch.data 0
execute if score #display_all.modes.murder_mystery.wins switch.data matches 1 positioned 16 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-103000000003
execute unless score #display_all.modes.murder_mystery.wins switch.data matches 1 positioned 16 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.murder_mystery.wins",label:"Victories",uuid:"20180612-2024-2025-2026-103000000003",mode:1}
execute if score #display_all.modes.pitch_creep.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-104000000001 run scoreboard players set #display_all.modes.pitch_creep.total_games switch.data 0
execute if score #display_all.modes.pitch_creep.total_games switch.data matches 1 positioned 25.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-104000000001
execute unless score #display_all.modes.pitch_creep.total_games switch.data matches 1 positioned 25.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.pitch_creep.total_games",label:"Pitch Creep",uuid:"20180612-2024-2025-2026-104000000001",mode:2}
execute if score #display_all.modes.pitch_creep.played switch.data matches 1 unless entity 20180612-2024-2025-2026-104000000002 run scoreboard players set #display_all.modes.pitch_creep.played switch.data 0
execute if score #display_all.modes.pitch_creep.played switch.data matches 1 positioned 24 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-104000000002
execute unless score #display_all.modes.pitch_creep.played switch.data matches 1 positioned 24 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitch_creep.played",label:"Games played",uuid:"20180612-2024-2025-2026-104000000002",mode:1}
execute if score #display_all.modes.pitch_creep.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-104000000003 run scoreboard players set #display_all.modes.pitch_creep.wins switch.data 0
execute if score #display_all.modes.pitch_creep.wins switch.data matches 1 positioned 27 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-104000000003
execute unless score #display_all.modes.pitch_creep.wins switch.data matches 1 positioned 27 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitch_creep.wins",label:"Victories",uuid:"20180612-2024-2025-2026-104000000003",mode:1}
execute if score #display_all.modes.creeper_apocalypse.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-107000000001 run scoreboard players set #display_all.modes.creeper_apocalypse.total_games switch.data 0
execute if score #display_all.modes.creeper_apocalypse.total_games switch.data matches 1 positioned 25.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-107000000001
execute unless score #display_all.modes.creeper_apocalypse.total_games switch.data matches 1 positioned 25.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.creeper_apocalypse.total_games",label:"Creeper Apocalypse",uuid:"20180612-2024-2025-2026-107000000001",mode:2}
execute if score #display_all.modes.creeper_apocalypse.played switch.data matches 1 unless entity 20180612-2024-2025-2026-107000000002 run scoreboard players set #display_all.modes.creeper_apocalypse.played switch.data 0
execute if score #display_all.modes.creeper_apocalypse.played switch.data matches 1 positioned 27 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-107000000002
execute unless score #display_all.modes.creeper_apocalypse.played switch.data matches 1 positioned 27 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.creeper_apocalypse.played",label:"Games played",uuid:"20180612-2024-2025-2026-107000000002",mode:1}
execute if score #display_all.modes.creeper_apocalypse.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-107000000003 run scoreboard players set #display_all.modes.creeper_apocalypse.wins switch.data 0
execute if score #display_all.modes.creeper_apocalypse.wins switch.data matches 1 positioned 24 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-107000000003
execute unless score #display_all.modes.creeper_apocalypse.wins switch.data matches 1 positioned 24 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.creeper_apocalypse.wins",label:"Victories",uuid:"20180612-2024-2025-2026-107000000003",mode:1}
execute if score #display_all.modes.infected.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-108000000001 run scoreboard players set #display_all.modes.infected.total_games switch.data 0
execute if score #display_all.modes.infected.total_games switch.data matches 1 positioned 14.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-108000000001
execute unless score #display_all.modes.infected.total_games switch.data matches 1 positioned 14.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.infected.total_games",label:"Infected",uuid:"20180612-2024-2025-2026-108000000001",mode:2}
execute if score #display_all.modes.infected.played switch.data matches 1 unless entity 20180612-2024-2025-2026-108000000002 run scoreboard players set #display_all.modes.infected.played switch.data 0
execute if score #display_all.modes.infected.played switch.data matches 1 positioned 16 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-108000000002
execute unless score #display_all.modes.infected.played switch.data matches 1 positioned 16 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.infected.played",label:"Games played",uuid:"20180612-2024-2025-2026-108000000002",mode:1}
execute if score #display_all.modes.infected.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-108000000003 run scoreboard players set #display_all.modes.infected.wins switch.data 0
execute if score #display_all.modes.infected.wins switch.data matches 1 positioned 13 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-108000000003
execute unless score #display_all.modes.infected.wins switch.data matches 1 positioned 13 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.infected.wins",label:"Victories",uuid:"20180612-2024-2025-2026-108000000003",mode:1}

