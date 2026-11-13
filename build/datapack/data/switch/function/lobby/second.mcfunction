
#> switch:lobby/second
#
# @executed	in minecraft:overworld & positioned 0 69 0
#
# @within	switch:second [ in minecraft:overworld & positioned 0 69 0 ]
#

# If players in the lobby, show title action bar with the current game and number of players
function switch:player/detached_action_bar

# Prevent end gateway's beam
data modify block 34 82 47 Age set value 143L

# Jumps best times leaderboards
execute if score #display_jump_green switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000001 run scoreboard players set #display_jump_green switch.data 0
execute if score #display_jump_green switch.data matches 1 positioned -8 81.5 -22 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000001
execute unless score #display_jump_green switch.data matches 1 positioned -8 81.5 -22 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"green",path:"jump_green",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000001"}
execute if score #display_jump_white switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000002 run scoreboard players set #display_jump_white switch.data 0
execute if score #display_jump_white switch.data matches 1 positioned 22 88.5 0 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000002
execute unless score #display_jump_white switch.data matches 1 positioned 22 88.5 0 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"white",path:"jump_white",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000002"}
execute if score #display_jump_blue switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000003 run scoreboard players set #display_jump_blue switch.data 0
execute if score #display_jump_blue switch.data matches 1 positioned 0 81.5 -39 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000003
execute unless score #display_jump_blue switch.data matches 1 positioned 0 81.5 -39 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"blue",path:"jump_blue",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000003"}
execute if score #display_jump_dripstone switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000004 run scoreboard players set #display_jump_dripstone switch.data 0
execute if score #display_jump_dripstone switch.data matches 1 positioned 33 83.5 47 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000004
execute unless score #display_jump_dripstone switch.data matches 1 positioned 33 83.5 47 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"dripstone",path:"jump_dripstone",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000004"}
execute if score #display_jump_yellow switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000005 run scoreboard players set #display_jump_yellow switch.data 0
execute if score #display_jump_yellow switch.data matches 1 positioned 63 88.5 10 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000005
execute unless score #display_jump_yellow switch.data matches 1 positioned 63 88.5 10 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"yellow",path:"jump_yellow",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000005"}
execute if score #display_jump_red switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000006 run scoreboard players set #display_jump_red switch.data 0
execute if score #display_jump_red switch.data matches 1 positioned -26 91.5 15 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000006
execute unless score #display_jump_red switch.data matches 1 positioned -26 91.5 15 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"red",path:"jump_red",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000006"}
execute if score #display_jump_duality switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000007 run scoreboard players set #display_jump_duality switch.data 0
execute if score #display_jump_duality switch.data matches 1 positioned 44 86.5 82 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000007
execute unless score #display_jump_duality switch.data matches 1 positioned 44 86.5 82 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"duality",path:"jump_duality",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000007"}
execute if score #display_jump_pink switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000008 run scoreboard players set #display_jump_pink switch.data 0
execute if score #display_jump_pink switch.data matches 1 positioned -44 93.5 27 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000008
execute unless score #display_jump_pink switch.data matches 1 positioned -44 93.5 27 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"pink",path:"jump_pink",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000008"}
execute if score #display_jump_brown switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000009 run scoreboard players set #display_jump_brown switch.data 0
execute if score #display_jump_brown switch.data matches 1 positioned -20 75.5 -78 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000009
execute unless score #display_jump_brown switch.data matches 1 positioned -20 75.5 -78 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"brown",path:"jump_brown",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000009"}
execute if score #display_jump_purple switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000010 run scoreboard players set #display_jump_purple switch.data 0
execute if score #display_jump_purple switch.data matches 1 positioned -42 94.5 32 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000010
execute unless score #display_jump_purple switch.data matches 1 positioned -42 94.5 32 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"purple",path:"jump_purple",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000010"}
execute if score #display_jump_bricks switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000011 run scoreboard players set #display_jump_bricks switch.data 0
execute if score #display_jump_bricks switch.data matches 1 positioned -123 79.5 -11 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000011
execute unless score #display_jump_bricks switch.data matches 1 positioned -123 79.5 -11 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"bricks",path:"jump_bricks",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000011"}
execute if score #display_jump_graviglitch switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000012 run scoreboard players set #display_jump_graviglitch switch.data 0
execute if score #display_jump_graviglitch switch.data matches 1 positioned -83 100.5 71 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000012
execute unless score #display_jump_graviglitch switch.data matches 1 positioned -83 100.5 71 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"graviglitch",path:"jump_graviglitch",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000012"}
execute if score #display_jump_obsidian switch.data matches 1 unless entity 20180612-2024-2025-2026-201000000013 run scoreboard players set #display_jump_obsidian switch.data 0
execute if score #display_jump_obsidian switch.data matches 1 positioned 36 83.5 -73 unless entity @a[distance=..64] run kill 20180612-2024-2025-2026-201000000013
execute unless score #display_jump_obsidian switch.data matches 1 positioned 36 83.5 -73 if entity @a[distance=..64] run function switch:stats/display/jump_times_summon {jump:"obsidian",path:"jump_obsidian",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000013"}

# Black holes (lobby and tutorial area)
execute positioned 0 69 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000001 run summon item_display ~ ~ ~ {UUID:uuid("20180612-2024-2025-2026-000000000001"),item:{id:"stone",count:1,components:{"item_model":"switch:bg_black_hole"}},Tags:["switch.black_hole_lobby"],transformation:{scale:[-300f,-200f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},view_range:4.0f}
execute positioned -500 69 -500 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000002 run summon item_display ~ ~ ~ {UUID:uuid("20180612-2024-2025-2026-000000000002"),item:{id:"stone",count:1,components:{"item_model":"switch:bg_black_hole"}},Tags:["switch.black_hole_tutorial"],transformation:{scale:[-100f,-100f,-100f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},view_range:4.0f}

### Minigames stats
## None
execute if score #display_all.modes.TODO2.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-101000000001 run scoreboard players set #display_all.modes.TODO2.total_games switch.data 0
execute if score #display_all.modes.TODO2.total_games switch.data matches 1 positioned 47.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-101000000001
execute unless score #display_all.modes.TODO2.total_games switch.data matches 1 positioned 47.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.TODO2.total_games",label:"???",uuid:"20180612-2024-2025-2026-101000000001",mode:2}
execute if score #display_all.modes.TODOO.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-101000000002 run scoreboard players set #display_all.modes.TODOO.total_games switch.data 0
execute if score #display_all.modes.TODOO.total_games switch.data matches 1 positioned 36.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-101000000002
execute unless score #display_all.modes.TODOO.total_games switch.data matches 1 positioned 36.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.TODOO.total_games",label:"???",uuid:"20180612-2024-2025-2026-101000000002",mode:2}
execute if score #display_all.modes.TODO.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-101000000003 run scoreboard players set #display_all.modes.TODO.total_games switch.data 0
execute if score #display_all.modes.TODO.total_games switch.data matches 1 positioned -80.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-101000000003
execute unless score #display_all.modes.TODO.total_games switch.data matches 1 positioned -80.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.TODO.total_games",label:"???",uuid:"20180612-2024-2025-2026-101000000003",mode:2}

## Global
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

## Solo multiple winners
# Murder mystery
execute if score #display_all.modes.murder_mystery.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-103000000001 run scoreboard players set #display_all.modes.murder_mystery.total_games switch.data 0
execute if score #display_all.modes.murder_mystery.total_games switch.data matches 1 positioned 14.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-103000000001
execute unless score #display_all.modes.murder_mystery.total_games switch.data matches 1 positioned 14.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.murder_mystery.total_games",label:"Murder Mystery",uuid:"20180612-2024-2025-2026-103000000001",mode:2}
execute if score #display_all.modes.murder_mystery.played switch.data matches 1 unless entity 20180612-2024-2025-2026-103000000002 run scoreboard players set #display_all.modes.murder_mystery.played switch.data 0
execute if score #display_all.modes.murder_mystery.played switch.data matches 1 positioned 13 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-103000000002
execute unless score #display_all.modes.murder_mystery.played switch.data matches 1 positioned 13 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.murder_mystery.played",label:"Games played",uuid:"20180612-2024-2025-2026-103000000002",mode:1}
execute if score #display_all.modes.murder_mystery.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-103000000003 run scoreboard players set #display_all.modes.murder_mystery.wins switch.data 0
execute if score #display_all.modes.murder_mystery.wins switch.data matches 1 positioned 16 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-103000000003
execute unless score #display_all.modes.murder_mystery.wins switch.data matches 1 positioned 16 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.murder_mystery.wins",label:"Victories",uuid:"20180612-2024-2025-2026-103000000003",mode:1}

# Pitch creep
execute if score #display_all.modes.pitch_creep.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-104000000001 run scoreboard players set #display_all.modes.pitch_creep.total_games switch.data 0
execute if score #display_all.modes.pitch_creep.total_games switch.data matches 1 positioned 25.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-104000000001
execute unless score #display_all.modes.pitch_creep.total_games switch.data matches 1 positioned 25.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.pitch_creep.total_games",label:"Pitch Creep",uuid:"20180612-2024-2025-2026-104000000001",mode:2}
execute if score #display_all.modes.pitch_creep.played switch.data matches 1 unless entity 20180612-2024-2025-2026-104000000002 run scoreboard players set #display_all.modes.pitch_creep.played switch.data 0
execute if score #display_all.modes.pitch_creep.played switch.data matches 1 positioned 24 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-104000000002
execute unless score #display_all.modes.pitch_creep.played switch.data matches 1 positioned 24 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitch_creep.played",label:"Games played",uuid:"20180612-2024-2025-2026-104000000002",mode:1}
execute if score #display_all.modes.pitch_creep.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-104000000003 run scoreboard players set #display_all.modes.pitch_creep.wins switch.data 0
execute if score #display_all.modes.pitch_creep.wins switch.data matches 1 positioned 27 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-104000000003
execute unless score #display_all.modes.pitch_creep.wins switch.data matches 1 positioned 27 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitch_creep.wins",label:"Victories",uuid:"20180612-2024-2025-2026-104000000003",mode:1}

# Warden escape
execute if score #display_all.modes.warden_escape.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-105000000001 run scoreboard players set #display_all.modes.warden_escape.total_games switch.data 0
execute if score #display_all.modes.warden_escape.total_games switch.data matches 1 positioned 36.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-105000000001
execute unless score #display_all.modes.warden_escape.total_games switch.data matches 1 positioned 36.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.warden_escape.total_games",label:"Warden Escape",uuid:"20180612-2024-2025-2026-105000000001",mode:2}
execute if score #display_all.modes.warden_escape.played switch.data matches 1 unless entity 20180612-2024-2025-2026-105000000002 run scoreboard players set #display_all.modes.warden_escape.played switch.data 0
execute if score #display_all.modes.warden_escape.played switch.data matches 1 positioned 35 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-105000000002
execute unless score #display_all.modes.warden_escape.played switch.data matches 1 positioned 35 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.warden_escape.played",label:"Games played",uuid:"20180612-2024-2025-2026-105000000002",mode:1}
execute if score #display_all.modes.warden_escape.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-105000000003 run scoreboard players set #display_all.modes.warden_escape.wins switch.data 0
execute if score #display_all.modes.warden_escape.wins switch.data matches 1 positioned 38 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-105000000003
execute unless score #display_all.modes.warden_escape.wins switch.data matches 1 positioned 38 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.warden_escape.wins",label:"Victories",uuid:"20180612-2024-2025-2026-105000000003",mode:1}

# Panic chase
execute if score #display_all.modes.panic_chase.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-106000000001 run scoreboard players set #display_all.modes.panic_chase.total_games switch.data 0
execute if score #display_all.modes.panic_chase.total_games switch.data matches 1 positioned 47.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-106000000001
execute unless score #display_all.modes.panic_chase.total_games switch.data matches 1 positioned 47.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.panic_chase.total_games",label:"Panic Chase",uuid:"20180612-2024-2025-2026-106000000001",mode:2}
execute if score #display_all.modes.panic_chase.played switch.data matches 1 unless entity 20180612-2024-2025-2026-106000000002 run scoreboard players set #display_all.modes.panic_chase.played switch.data 0
execute if score #display_all.modes.panic_chase.played switch.data matches 1 positioned 49 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-106000000002
execute unless score #display_all.modes.panic_chase.played switch.data matches 1 positioned 49 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.panic_chase.played",label:"Games played",uuid:"20180612-2024-2025-2026-106000000002",mode:1}
execute if score #display_all.modes.panic_chase.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-106000000003 run scoreboard players set #display_all.modes.panic_chase.wins switch.data 0
execute if score #display_all.modes.panic_chase.wins switch.data matches 1 positioned 46 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-106000000003
execute unless score #display_all.modes.panic_chase.wins switch.data matches 1 positioned 46 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.panic_chase.wins",label:"Victories",uuid:"20180612-2024-2025-2026-106000000003",mode:1}

# Creeper apocalypse
execute if score #display_all.modes.creeper_apocalypse.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-107000000001 run scoreboard players set #display_all.modes.creeper_apocalypse.total_games switch.data 0
execute if score #display_all.modes.creeper_apocalypse.total_games switch.data matches 1 positioned 25.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-107000000001
execute unless score #display_all.modes.creeper_apocalypse.total_games switch.data matches 1 positioned 25.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.creeper_apocalypse.total_games",label:"Creeper Apocalypse",uuid:"20180612-2024-2025-2026-107000000001",mode:2}
execute if score #display_all.modes.creeper_apocalypse.played switch.data matches 1 unless entity 20180612-2024-2025-2026-107000000002 run scoreboard players set #display_all.modes.creeper_apocalypse.played switch.data 0
execute if score #display_all.modes.creeper_apocalypse.played switch.data matches 1 positioned 27 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-107000000002
execute unless score #display_all.modes.creeper_apocalypse.played switch.data matches 1 positioned 27 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.creeper_apocalypse.played",label:"Games played",uuid:"20180612-2024-2025-2026-107000000002",mode:1}
execute if score #display_all.modes.creeper_apocalypse.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-107000000003 run scoreboard players set #display_all.modes.creeper_apocalypse.wins switch.data 0
execute if score #display_all.modes.creeper_apocalypse.wins switch.data matches 1 positioned 24 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-107000000003
execute unless score #display_all.modes.creeper_apocalypse.wins switch.data matches 1 positioned 24 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.creeper_apocalypse.wins",label:"Victories",uuid:"20180612-2024-2025-2026-107000000003",mode:1}

# Infected
execute if score #display_all.modes.infected.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-108000000001 run scoreboard players set #display_all.modes.infected.total_games switch.data 0
execute if score #display_all.modes.infected.total_games switch.data matches 1 positioned 14.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-108000000001
execute unless score #display_all.modes.infected.total_games switch.data matches 1 positioned 14.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.infected.total_games",label:"Infected",uuid:"20180612-2024-2025-2026-108000000001",mode:2}
execute if score #display_all.modes.infected.played switch.data matches 1 unless entity 20180612-2024-2025-2026-108000000002 run scoreboard players set #display_all.modes.infected.played switch.data 0
execute if score #display_all.modes.infected.played switch.data matches 1 positioned 16 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-108000000002
execute unless score #display_all.modes.infected.played switch.data matches 1 positioned 16 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.infected.played",label:"Games played",uuid:"20180612-2024-2025-2026-108000000002",mode:1}
execute if score #display_all.modes.infected.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-108000000003 run scoreboard players set #display_all.modes.infected.wins switch.data 0
execute if score #display_all.modes.infected.wins switch.data matches 1 positioned 13 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-108000000003
execute unless score #display_all.modes.infected.wins switch.data matches 1 positioned 13 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.infected.wins",label:"Victories",uuid:"20180612-2024-2025-2026-108000000003",mode:1}

## Solo one winner
# Spleef
execute if score #display_all.modes.spleef.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-109000000001 run scoreboard players set #display_all.modes.spleef.total_games switch.data 0
execute if score #display_all.modes.spleef.total_games switch.data matches 1 positioned 2 70.5 14.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-109000000001
execute unless score #display_all.modes.spleef.total_games switch.data matches 1 positioned 2 70.5 14.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.spleef.total_games",label:"Spleef",uuid:"20180612-2024-2025-2026-109000000001",mode:2}
execute if score #display_all.modes.spleef.played switch.data matches 1 unless entity 20180612-2024-2025-2026-109000000002 run scoreboard players set #display_all.modes.spleef.played switch.data 0
execute if score #display_all.modes.spleef.played switch.data matches 1 positioned 6 70.5 13 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-109000000002
execute unless score #display_all.modes.spleef.played switch.data matches 1 positioned 6 70.5 13 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spleef.played",label:"Games played",uuid:"20180612-2024-2025-2026-109000000002",mode:1}
execute if score #display_all.modes.spleef.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-109000000003 run scoreboard players set #display_all.modes.spleef.wins switch.data 0
execute if score #display_all.modes.spleef.wins switch.data matches 1 positioned 6 70.5 16 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-109000000003
execute unless score #display_all.modes.spleef.wins switch.data matches 1 positioned 6 70.5 16 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spleef.wins",label:"Victories",uuid:"20180612-2024-2025-2026-109000000003",mode:1}

# Dé à coudre
execute if score #display_all.modes.de_a_coudre.played switch.data matches 1 unless entity 20180612-2024-2025-2026-110000000001 run scoreboard players set #display_all.modes.de_a_coudre.played switch.data 0
execute if score #display_all.modes.de_a_coudre.played switch.data matches 1 positioned 6 70.5 24 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-110000000001
execute unless score #display_all.modes.de_a_coudre.played switch.data matches 1 positioned 6 70.5 24 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.de_a_coudre.played",label:"Games played",uuid:"20180612-2024-2025-2026-110000000001",mode:1}
execute if score #display_all.modes.de_a_coudre.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-110000000002 run scoreboard players set #display_all.modes.de_a_coudre.total_games switch.data 0
execute if score #display_all.modes.de_a_coudre.total_games switch.data matches 1 positioned 2 70.5 25.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-110000000002
execute unless score #display_all.modes.de_a_coudre.total_games switch.data matches 1 positioned 2 70.5 25.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.de_a_coudre.total_games",label:"Dé à Coudre",uuid:"20180612-2024-2025-2026-110000000002",mode:2}
execute if score #display_all.modes.de_a_coudre.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-110000000003 run scoreboard players set #display_all.modes.de_a_coudre.wins switch.data 0
execute if score #display_all.modes.de_a_coudre.wins switch.data matches 1 positioned 6 70.5 27 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-110000000003
execute unless score #display_all.modes.de_a_coudre.wins switch.data matches 1 positioned 6 70.5 27 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.de_a_coudre.wins",label:"Victories",uuid:"20180612-2024-2025-2026-110000000003",mode:1}

# TNT run
execute if score #display_all.modes.tnt_run.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-111000000001 run scoreboard players set #display_all.modes.tnt_run.total_games switch.data 0
execute if score #display_all.modes.tnt_run.total_games switch.data matches 1 positioned 2 70.5 36.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-111000000001
execute unless score #display_all.modes.tnt_run.total_games switch.data matches 1 positioned 2 70.5 36.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.tnt_run.total_games",label:"TNT Run",uuid:"20180612-2024-2025-2026-111000000001",mode:2}
execute if score #display_all.modes.tnt_run.played switch.data matches 1 unless entity 20180612-2024-2025-2026-111000000002 run scoreboard players set #display_all.modes.tnt_run.played switch.data 0
execute if score #display_all.modes.tnt_run.played switch.data matches 1 positioned 6 70.5 35 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-111000000002
execute unless score #display_all.modes.tnt_run.played switch.data matches 1 positioned 6 70.5 35 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.tnt_run.played",label:"Games played",uuid:"20180612-2024-2025-2026-111000000002",mode:1}
execute if score #display_all.modes.tnt_run.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-111000000003 run scoreboard players set #display_all.modes.tnt_run.wins switch.data 0
execute if score #display_all.modes.tnt_run.wins switch.data matches 1 positioned 6 70.5 38 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-111000000003
execute unless score #display_all.modes.tnt_run.wins switch.data matches 1 positioned 6 70.5 38 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.tnt_run.wins",label:"Victories",uuid:"20180612-2024-2025-2026-111000000003",mode:1}

# Block party
execute if score #display_all.modes.block_party.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-112000000001 run scoreboard players set #display_all.modes.block_party.total_games switch.data 0
execute if score #display_all.modes.block_party.total_games switch.data matches 1 positioned 2 70.5 47.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-112000000001
execute unless score #display_all.modes.block_party.total_games switch.data matches 1 positioned 2 70.5 47.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.block_party.total_games",label:"Block Party",uuid:"20180612-2024-2025-2026-112000000001",mode:2}
execute if score #display_all.modes.block_party.played switch.data matches 1 unless entity 20180612-2024-2025-2026-112000000002 run scoreboard players set #display_all.modes.block_party.played switch.data 0
execute if score #display_all.modes.block_party.played switch.data matches 1 positioned 6 70.5 46 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-112000000002
execute unless score #display_all.modes.block_party.played switch.data matches 1 positioned 6 70.5 46 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.block_party.played",label:"Games played",uuid:"20180612-2024-2025-2026-112000000002",mode:1}
execute if score #display_all.modes.block_party.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-112000000003 run scoreboard players set #display_all.modes.block_party.wins switch.data 0
execute if score #display_all.modes.block_party.wins switch.data matches 1 positioned 6 70.5 49 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-112000000003
execute unless score #display_all.modes.block_party.wins switch.data matches 1 positioned 6 70.5 49 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.block_party.wins",label:"Victories",uuid:"20180612-2024-2025-2026-112000000003",mode:1}

# Snowball painter
execute if score #display_all.modes.snowball_painter.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-113000000001 run scoreboard players set #display_all.modes.snowball_painter.total_games switch.data 0
execute if score #display_all.modes.snowball_painter.total_games switch.data matches 1 positioned 2 70.5 58.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-113000000001
execute unless score #display_all.modes.snowball_painter.total_games switch.data matches 1 positioned 2 70.5 58.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.snowball_painter.total_games",label:"Snowball Painter",uuid:"20180612-2024-2025-2026-113000000001",mode:2}
execute if score #display_all.modes.snowball_painter.played switch.data matches 1 unless entity 20180612-2024-2025-2026-113000000002 run scoreboard players set #display_all.modes.snowball_painter.played switch.data 0
execute if score #display_all.modes.snowball_painter.played switch.data matches 1 positioned 6 70.5 57 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-113000000002
execute unless score #display_all.modes.snowball_painter.played switch.data matches 1 positioned 6 70.5 57 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.snowball_painter.played",label:"Games played",uuid:"20180612-2024-2025-2026-113000000002",mode:1}
execute if score #display_all.modes.snowball_painter.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-113000000003 run scoreboard players set #display_all.modes.snowball_painter.wins switch.data 0
execute if score #display_all.modes.snowball_painter.wins switch.data matches 1 positioned 6 70.5 60 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-113000000003
execute unless score #display_all.modes.snowball_painter.wins switch.data matches 1 positioned 6 70.5 60 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.snowball_painter.wins",label:"Victories",uuid:"20180612-2024-2025-2026-113000000003",mode:1}

# Coin chaser
execute if score #display_all.modes.coin_chaser.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-114000000001 run scoreboard players set #display_all.modes.coin_chaser.total_games switch.data 0
execute if score #display_all.modes.coin_chaser.total_games switch.data matches 1 positioned 2 70.5 69.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-114000000001
execute unless score #display_all.modes.coin_chaser.total_games switch.data matches 1 positioned 2 70.5 69.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.coin_chaser.total_games",label:"Coin Chaser",uuid:"20180612-2024-2025-2026-114000000001",mode:2}
execute if score #display_all.modes.coin_chaser.played switch.data matches 1 unless entity 20180612-2024-2025-2026-114000000002 run scoreboard players set #display_all.modes.coin_chaser.played switch.data 0
execute if score #display_all.modes.coin_chaser.played switch.data matches 1 positioned 6 70.5 68 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-114000000002
execute unless score #display_all.modes.coin_chaser.played switch.data matches 1 positioned 6 70.5 68 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.coin_chaser.played",label:"Games played",uuid:"20180612-2024-2025-2026-114000000002",mode:1}
execute if score #display_all.modes.coin_chaser.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-114000000003 run scoreboard players set #display_all.modes.coin_chaser.wins switch.data 0
execute if score #display_all.modes.coin_chaser.wins switch.data matches 1 positioned 6 70.5 71 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-114000000003
execute unless score #display_all.modes.coin_chaser.wins switch.data matches 1 positioned 6 70.5 71 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.coin_chaser.wins",label:"Victories",uuid:"20180612-2024-2025-2026-114000000003",mode:1}

# Bombardement
execute if score #display_all.modes.bombardement.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-115000000001 run scoreboard players set #display_all.modes.bombardement.total_games switch.data 0
execute if score #display_all.modes.bombardement.total_games switch.data matches 1 positioned 2 70.5 80.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-115000000001
execute unless score #display_all.modes.bombardement.total_games switch.data matches 1 positioned 2 70.5 80.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.bombardement.total_games",label:"Bombardement",uuid:"20180612-2024-2025-2026-115000000001",mode:2}
execute if score #display_all.modes.bombardement.played switch.data matches 1 unless entity 20180612-2024-2025-2026-115000000002 run scoreboard players set #display_all.modes.bombardement.played switch.data 0
execute if score #display_all.modes.bombardement.played switch.data matches 1 positioned 6 70.5 79 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-115000000002
execute unless score #display_all.modes.bombardement.played switch.data matches 1 positioned 6 70.5 79 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.bombardement.played",label:"Games played",uuid:"20180612-2024-2025-2026-115000000002",mode:1}
execute if score #display_all.modes.bombardement.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-115000000003 run scoreboard players set #display_all.modes.bombardement.wins switch.data 0
execute if score #display_all.modes.bombardement.wins switch.data matches 1 positioned 6 70.5 82 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-115000000003
execute unless score #display_all.modes.bombardement.wins switch.data matches 1 positioned 6 70.5 82 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.bombardement.wins",label:"Victories",uuid:"20180612-2024-2025-2026-115000000003",mode:1}

# Minigolf
execute if score #display_all.modes.minigolf.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-116000000001 run scoreboard players set #display_all.modes.minigolf.total_games switch.data 0
execute if score #display_all.modes.minigolf.total_games switch.data matches 1 positioned 2 70.5 91.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-116000000001
execute unless score #display_all.modes.minigolf.total_games switch.data matches 1 positioned 2 70.5 91.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.minigolf.total_games",label:"MiniGolf",uuid:"20180612-2024-2025-2026-116000000001",mode:2}
execute if score #display_all.modes.minigolf.played switch.data matches 1 unless entity 20180612-2024-2025-2026-116000000002 run scoreboard players set #display_all.modes.minigolf.played switch.data 0
execute if score #display_all.modes.minigolf.played switch.data matches 1 positioned 6 70.5 90 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-116000000002
execute unless score #display_all.modes.minigolf.played switch.data matches 1 positioned 6 70.5 90 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.minigolf.played",label:"Games played",uuid:"20180612-2024-2025-2026-116000000002",mode:1}
execute if score #display_all.modes.minigolf.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-116000000003 run scoreboard players set #display_all.modes.minigolf.wins switch.data 0
execute if score #display_all.modes.minigolf.wins switch.data matches 1 positioned 6 70.5 93 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-116000000003
execute unless score #display_all.modes.minigolf.wins switch.data matches 1 positioned 6 70.5 93 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.minigolf.wins",label:"Victories",uuid:"20180612-2024-2025-2026-116000000003",mode:1}

# MLG à coudre
execute if score #display_all.modes.mlg_a_coudre.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-117000000001 run scoreboard players set #display_all.modes.mlg_a_coudre.total_games switch.data 0
execute if score #display_all.modes.mlg_a_coudre.total_games switch.data matches 1 positioned 2 70.5 102.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-117000000001
execute unless score #display_all.modes.mlg_a_coudre.total_games switch.data matches 1 positioned 2 70.5 102.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.mlg_a_coudre.total_games",label:"MLG à Coudre",uuid:"20180612-2024-2025-2026-117000000001",mode:2}
execute if score #display_all.modes.mlg_a_coudre.played switch.data matches 1 unless entity 20180612-2024-2025-2026-117000000002 run scoreboard players set #display_all.modes.mlg_a_coudre.played switch.data 0
execute if score #display_all.modes.mlg_a_coudre.played switch.data matches 1 positioned 6 70.5 101 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-117000000002
execute unless score #display_all.modes.mlg_a_coudre.played switch.data matches 1 positioned 6 70.5 101 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.mlg_a_coudre.played",label:"Games played",uuid:"20180612-2024-2025-2026-117000000002",mode:1}
execute if score #display_all.modes.mlg_a_coudre.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-117000000003 run scoreboard players set #display_all.modes.mlg_a_coudre.wins switch.data 0
execute if score #display_all.modes.mlg_a_coudre.wins switch.data matches 1 positioned 6 70.5 104 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-117000000003
execute unless score #display_all.modes.mlg_a_coudre.wins switch.data matches 1 positioned 6 70.5 104 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.mlg_a_coudre.wins",label:"Victories",uuid:"20180612-2024-2025-2026-117000000003",mode:1}

# Fish fight
execute if score #display_all.modes.fish_fight.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-118000000001 run scoreboard players set #display_all.modes.fish_fight.total_games switch.data 0
execute if score #display_all.modes.fish_fight.total_games switch.data matches 1 positioned 2 70.5 113.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-118000000001
execute unless score #display_all.modes.fish_fight.total_games switch.data matches 1 positioned 2 70.5 113.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.fish_fight.total_games",label:"Fish Fight",uuid:"20180612-2024-2025-2026-118000000001",mode:2}
execute if score #display_all.modes.fish_fight.played switch.data matches 1 unless entity 20180612-2024-2025-2026-118000000002 run scoreboard players set #display_all.modes.fish_fight.played switch.data 0
execute if score #display_all.modes.fish_fight.played switch.data matches 1 positioned 6 70.5 112 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-118000000002
execute unless score #display_all.modes.fish_fight.played switch.data matches 1 positioned 6 70.5 112 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fish_fight.played",label:"Games played",uuid:"20180612-2024-2025-2026-118000000002",mode:1}
execute if score #display_all.modes.fish_fight.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-118000000003 run scoreboard players set #display_all.modes.fish_fight.wins switch.data 0
execute if score #display_all.modes.fish_fight.wins switch.data matches 1 positioned 6 70.5 115 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-118000000003
execute unless score #display_all.modes.fish_fight.wins switch.data matches 1 positioned 6 70.5 115 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fish_fight.wins",label:"Victories",uuid:"20180612-2024-2025-2026-118000000003",mode:1}

# Fireblast
execute if score #display_all.modes.fireblast.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-119000000001 run scoreboard players set #display_all.modes.fireblast.total_games switch.data 0
execute if score #display_all.modes.fireblast.total_games switch.data matches 1 positioned 2 70.5 124.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-119000000001
execute unless score #display_all.modes.fireblast.total_games switch.data matches 1 positioned 2 70.5 124.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.fireblast.total_games",label:"Fireblast",uuid:"20180612-2024-2025-2026-119000000001",mode:2}
execute if score #display_all.modes.fireblast.played switch.data matches 1 unless entity 20180612-2024-2025-2026-119000000002 run scoreboard players set #display_all.modes.fireblast.played switch.data 0
execute if score #display_all.modes.fireblast.played switch.data matches 1 positioned 6 70.5 123 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-119000000002
execute unless score #display_all.modes.fireblast.played switch.data matches 1 positioned 6 70.5 123 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fireblast.played",label:"Games played",uuid:"20180612-2024-2025-2026-119000000002",mode:1}
execute if score #display_all.modes.fireblast.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-119000000003 run scoreboard players set #display_all.modes.fireblast.wins switch.data 0
execute if score #display_all.modes.fireblast.wins switch.data matches 1 positioned 6 70.5 126 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-119000000003
execute unless score #display_all.modes.fireblast.wins switch.data matches 1 positioned 6 70.5 126 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.fireblast.wins",label:"Victories",uuid:"20180612-2024-2025-2026-119000000003",mode:1}
execute unless entity 20180612-2024-2025-2026-119000000004 run summon small_fireball 6 70.42 124.5 {UUID:uuid("20180612-2024-2025-2026-119000000004")}

# Race
execute if score #display_all.modes.race.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-120000000001 run scoreboard players set #display_all.modes.race.total_games switch.data 0
execute if score #display_all.modes.race.total_games switch.data matches 1 positioned 2 70.5 135.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-120000000001
execute unless score #display_all.modes.race.total_games switch.data matches 1 positioned 2 70.5 135.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.race.total_games",label:"Race",uuid:"20180612-2024-2025-2026-120000000001",mode:2}
execute if score #display_all.modes.race.played switch.data matches 1 unless entity 20180612-2024-2025-2026-120000000002 run scoreboard players set #display_all.modes.race.played switch.data 0
execute if score #display_all.modes.race.played switch.data matches 1 positioned 6 70.5 134 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-120000000002
execute unless score #display_all.modes.race.played switch.data matches 1 positioned 6 70.5 134 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.race.played",label:"Games played",uuid:"20180612-2024-2025-2026-120000000002",mode:1}
execute if score #display_all.modes.race.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-120000000003 run scoreboard players set #display_all.modes.race.wins switch.data 0
execute if score #display_all.modes.race.wins switch.data matches 1 positioned 6 70.5 137 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-120000000003
execute unless score #display_all.modes.race.wins switch.data matches 1 positioned 6 70.5 137 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.race.wins",label:"Victories",uuid:"20180612-2024-2025-2026-120000000003",mode:1}

# One shot
execute if score #display_all.modes.one_shot.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-121000000001 run scoreboard players set #display_all.modes.one_shot.total_games switch.data 0
execute if score #display_all.modes.one_shot.total_games switch.data matches 1 positioned -2 70.5 135.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-121000000001
execute unless score #display_all.modes.one_shot.total_games switch.data matches 1 positioned -2 70.5 135.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.one_shot.total_games",label:"One Shot",uuid:"20180612-2024-2025-2026-121000000001",mode:2}
execute if score #display_all.modes.one_shot.played switch.data matches 1 unless entity 20180612-2024-2025-2026-121000000002 run scoreboard players set #display_all.modes.one_shot.played switch.data 0
execute if score #display_all.modes.one_shot.played switch.data matches 1 positioned -6 70.5 137 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-121000000002
execute unless score #display_all.modes.one_shot.played switch.data matches 1 positioned -6 70.5 137 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.one_shot.played",label:"Games played",uuid:"20180612-2024-2025-2026-121000000002",mode:1}
execute if score #display_all.modes.one_shot.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-121000000003 run scoreboard players set #display_all.modes.one_shot.wins switch.data 0
execute if score #display_all.modes.one_shot.wins switch.data matches 1 positioned -6 70.5 134 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-121000000003
execute unless score #display_all.modes.one_shot.wins switch.data matches 1 positioned -6 70.5 134 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.one_shot.wins",label:"Victories",uuid:"20180612-2024-2025-2026-121000000003",mode:1}

# Pillars of fortune
execute if score #display_all.modes.pillars_of_fortune.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-122000000001 run scoreboard players set #display_all.modes.pillars_of_fortune.total_games switch.data 0
execute if score #display_all.modes.pillars_of_fortune.total_games switch.data matches 1 positioned -2 70.5 124.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-122000000001
execute unless score #display_all.modes.pillars_of_fortune.total_games switch.data matches 1 positioned -2 70.5 124.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.pillars_of_fortune.total_games",label:" Pillars of Fortune ",uuid:"20180612-2024-2025-2026-122000000001",mode:2}
execute if score #display_all.modes.pillars_of_fortune.played switch.data matches 1 unless entity 20180612-2024-2025-2026-122000000002 run scoreboard players set #display_all.modes.pillars_of_fortune.played switch.data 0
execute if score #display_all.modes.pillars_of_fortune.played switch.data matches 1 positioned -6 70.5 126 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-122000000002
execute unless score #display_all.modes.pillars_of_fortune.played switch.data matches 1 positioned -6 70.5 126 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pillars_of_fortune.played",label:"Games played",uuid:"20180612-2024-2025-2026-122000000002",mode:1}
execute if score #display_all.modes.pillars_of_fortune.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-122000000003 run scoreboard players set #display_all.modes.pillars_of_fortune.wins switch.data 0
execute if score #display_all.modes.pillars_of_fortune.wins switch.data matches 1 positioned -6 70.5 123 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-122000000003
execute unless score #display_all.modes.pillars_of_fortune.wins switch.data matches 1 positioned -6 70.5 123 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pillars_of_fortune.wins",label:"Victories",uuid:"20180612-2024-2025-2026-122000000003",mode:1}

# Memory mine
execute if score #display_all.modes.memory_mine.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-123000000001 run scoreboard players set #display_all.modes.memory_mine.total_games switch.data 0
execute if score #display_all.modes.memory_mine.total_games switch.data matches 1 positioned -2 70.5 113.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-123000000001
execute unless score #display_all.modes.memory_mine.total_games switch.data matches 1 positioned -2 70.5 113.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.memory_mine.total_games",label:"Memory Mine",uuid:"20180612-2024-2025-2026-123000000001",mode:2}
execute if score #display_all.modes.memory_mine.played switch.data matches 1 unless entity 20180612-2024-2025-2026-123000000002 run scoreboard players set #display_all.modes.memory_mine.played switch.data 0
execute if score #display_all.modes.memory_mine.played switch.data matches 1 positioned -6 70.5 115 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-123000000002
execute unless score #display_all.modes.memory_mine.played switch.data matches 1 positioned -6 70.5 115 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.memory_mine.played",label:"Games played",uuid:"20180612-2024-2025-2026-123000000002",mode:1}
execute if score #display_all.modes.memory_mine.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-123000000003 run scoreboard players set #display_all.modes.memory_mine.wins switch.data 0
execute if score #display_all.modes.memory_mine.wins switch.data matches 1 positioned -6 70.5 112 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-123000000003
execute unless score #display_all.modes.memory_mine.wins switch.data matches 1 positioned -6 70.5 112 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.memory_mine.wins",label:"Victories",uuid:"20180612-2024-2025-2026-123000000003",mode:1}
execute if predicate switch:chance/0.25 run particle dust{color:[1.0,0.0,0.0],scale:1.0} -5 69.55 114 0 0 0 0 1 normal

# Cigogne
execute if score #display_all.modes.cigogne.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-124000000001 run scoreboard players set #display_all.modes.cigogne.total_games switch.data 0
execute if score #display_all.modes.cigogne.total_games switch.data matches 1 positioned -2 70.5 102.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-124000000001
execute unless score #display_all.modes.cigogne.total_games switch.data matches 1 positioned -2 70.5 102.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.cigogne.total_games",label:"Cigogne",uuid:"20180612-2024-2025-2026-124000000001",mode:2}
execute if score #display_all.modes.cigogne.played switch.data matches 1 unless entity 20180612-2024-2025-2026-124000000002 run scoreboard players set #display_all.modes.cigogne.played switch.data 0
execute if score #display_all.modes.cigogne.played switch.data matches 1 positioned -6 70.5 104 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-124000000002
execute unless score #display_all.modes.cigogne.played switch.data matches 1 positioned -6 70.5 104 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.cigogne.played",label:"Games played",uuid:"20180612-2024-2025-2026-124000000002",mode:1}
execute if score #display_all.modes.cigogne.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-124000000003 run scoreboard players set #display_all.modes.cigogne.wins switch.data 0
execute if score #display_all.modes.cigogne.wins switch.data matches 1 positioned -6 70.5 101 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-124000000003
execute unless score #display_all.modes.cigogne.wins switch.data matches 1 positioned -6 70.5 101 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.cigogne.wins",label:"Victories",uuid:"20180612-2024-2025-2026-124000000003",mode:1}

# Shoot da'sheep
execute if score #display_all.modes.shoot_da_sheep.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-125000000001 run scoreboard players set #display_all.modes.shoot_da_sheep.total_games switch.data 0
execute if score #display_all.modes.shoot_da_sheep.total_games switch.data matches 1 positioned -2 70.5 91.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-125000000001
execute unless score #display_all.modes.shoot_da_sheep.total_games switch.data matches 1 positioned -2 70.5 91.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.shoot_da_sheep.total_games",label:"Shoot Da\'Sheep",uuid:"20180612-2024-2025-2026-125000000001",mode:2}
execute if score #display_all.modes.shoot_da_sheep.played switch.data matches 1 unless entity 20180612-2024-2025-2026-125000000002 run scoreboard players set #display_all.modes.shoot_da_sheep.played switch.data 0
execute if score #display_all.modes.shoot_da_sheep.played switch.data matches 1 positioned -6 70.5 93 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-125000000002
execute unless score #display_all.modes.shoot_da_sheep.played switch.data matches 1 positioned -6 70.5 93 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.shoot_da_sheep.played",label:"Games played",uuid:"20180612-2024-2025-2026-125000000002",mode:1}
execute if score #display_all.modes.shoot_da_sheep.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-125000000003 run scoreboard players set #display_all.modes.shoot_da_sheep.wins switch.data 0
execute if score #display_all.modes.shoot_da_sheep.wins switch.data matches 1 positioned -6 70.5 90 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-125000000003
execute unless score #display_all.modes.shoot_da_sheep.wins switch.data matches 1 positioned -6 70.5 90 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.shoot_da_sheep.wins",label:"Victories",uuid:"20180612-2024-2025-2026-125000000003",mode:1}

# Simultaneous jump
execute if score #display_all.modes.simultaneous_jump.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-126000000001 run scoreboard players set #display_all.modes.simultaneous_jump.total_games switch.data 0
execute if score #display_all.modes.simultaneous_jump.total_games switch.data matches 1 positioned -2 70.5 80.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-126000000001
execute unless score #display_all.modes.simultaneous_jump.total_games switch.data matches 1 positioned -2 70.5 80.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.simultaneous_jump.total_games",label:"Simultaneous Jump",uuid:"20180612-2024-2025-2026-126000000001",mode:2}
execute if score #display_all.modes.simultaneous_jump.played switch.data matches 1 unless entity 20180612-2024-2025-2026-126000000002 run scoreboard players set #display_all.modes.simultaneous_jump.played switch.data 0
execute if score #display_all.modes.simultaneous_jump.played switch.data matches 1 positioned -6 70.5 82 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-126000000002
execute unless score #display_all.modes.simultaneous_jump.played switch.data matches 1 positioned -6 70.5 82 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.simultaneous_jump.played",label:"Games played",uuid:"20180612-2024-2025-2026-126000000002",mode:1}
execute if score #display_all.modes.simultaneous_jump.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-126000000003 run scoreboard players set #display_all.modes.simultaneous_jump.wins switch.data 0
execute if score #display_all.modes.simultaneous_jump.wins switch.data matches 1 positioned -6 70.5 79 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-126000000003
execute unless score #display_all.modes.simultaneous_jump.wins switch.data matches 1 positioned -6 70.5 79 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.simultaneous_jump.wins",label:"Victories",uuid:"20180612-2024-2025-2026-126000000003",mode:1}

# Build battle
execute if score #display_all.modes.build_battle.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-127000000001 run scoreboard players set #display_all.modes.build_battle.total_games switch.data 0
execute if score #display_all.modes.build_battle.total_games switch.data matches 1 positioned -2 70.5 69.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-127000000001
execute unless score #display_all.modes.build_battle.total_games switch.data matches 1 positioned -2 70.5 69.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.build_battle.total_games",label:"Build Battle",uuid:"20180612-2024-2025-2026-127000000001",mode:2}
execute if score #display_all.modes.build_battle.played switch.data matches 1 unless entity 20180612-2024-2025-2026-127000000002 run scoreboard players set #display_all.modes.build_battle.played switch.data 0
execute if score #display_all.modes.build_battle.played switch.data matches 1 positioned -6 70.5 71 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-127000000002
execute unless score #display_all.modes.build_battle.played switch.data matches 1 positioned -6 70.5 71 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.build_battle.played",label:"Games played",uuid:"20180612-2024-2025-2026-127000000002",mode:1}
execute if score #display_all.modes.build_battle.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-127000000003 run scoreboard players set #display_all.modes.build_battle.wins switch.data 0
execute if score #display_all.modes.build_battle.wins switch.data matches 1 positioned -6 70.5 68 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-127000000003
execute unless score #display_all.modes.build_battle.wins switch.data matches 1 positioned -6 70.5 68 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.build_battle.wins",label:"Victories",uuid:"20180612-2024-2025-2026-127000000003",mode:1}

# Moutron
execute if score #display_all.modes.moutron.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-128000000001 run scoreboard players set #display_all.modes.moutron.total_games switch.data 0
execute if score #display_all.modes.moutron.total_games switch.data matches 1 positioned -2 70.5 58.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-128000000001
execute unless score #display_all.modes.moutron.total_games switch.data matches 1 positioned -2 70.5 58.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.moutron.total_games",label:"Moutron",uuid:"20180612-2024-2025-2026-128000000001",mode:2}
execute if score #display_all.modes.moutron.played switch.data matches 1 unless entity 20180612-2024-2025-2026-128000000002 run scoreboard players set #display_all.modes.moutron.played switch.data 0
execute if score #display_all.modes.moutron.played switch.data matches 1 positioned -6 70.5 60 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-128000000002
execute unless score #display_all.modes.moutron.played switch.data matches 1 positioned -6 70.5 60 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.moutron.played",label:"Games played",uuid:"20180612-2024-2025-2026-128000000002",mode:1}
execute if score #display_all.modes.moutron.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-128000000003 run scoreboard players set #display_all.modes.moutron.wins switch.data 0
execute if score #display_all.modes.moutron.wins switch.data matches 1 positioned -6 70.5 57 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-128000000003
execute unless score #display_all.modes.moutron.wins switch.data matches 1 positioned -6 70.5 57 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.moutron.wins",label:"Victories",uuid:"20180612-2024-2025-2026-128000000003",mode:1}

# Thunder spear
execute if score #display_all.modes.thunder_spear.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-129000000001 run scoreboard players set #display_all.modes.thunder_spear.total_games switch.data 0
execute if score #display_all.modes.thunder_spear.total_games switch.data matches 1 positioned -2 70.5 47.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-129000000001
execute unless score #display_all.modes.thunder_spear.total_games switch.data matches 1 positioned -2 70.5 47.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.thunder_spear.total_games",label:"Thunder Spear",uuid:"20180612-2024-2025-2026-129000000001",mode:2}
execute if score #display_all.modes.thunder_spear.played switch.data matches 1 unless entity 20180612-2024-2025-2026-129000000002 run scoreboard players set #display_all.modes.thunder_spear.played switch.data 0
execute if score #display_all.modes.thunder_spear.played switch.data matches 1 positioned -6 70.5 49 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-129000000002
execute unless score #display_all.modes.thunder_spear.played switch.data matches 1 positioned -6 70.5 49 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.thunder_spear.played",label:"Games played",uuid:"20180612-2024-2025-2026-129000000002",mode:1}
execute if score #display_all.modes.thunder_spear.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-129000000003 run scoreboard players set #display_all.modes.thunder_spear.wins switch.data 0
execute if score #display_all.modes.thunder_spear.wins switch.data matches 1 positioned -6 70.5 46 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-129000000003
execute unless score #display_all.modes.thunder_spear.wins switch.data matches 1 positioned -6 70.5 46 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.thunder_spear.wins",label:"Victories",uuid:"20180612-2024-2025-2026-129000000003",mode:1}

# Castagne
execute if score #display_all.modes.castagne.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-130000000001 run scoreboard players set #display_all.modes.castagne.total_games switch.data 0
execute if score #display_all.modes.castagne.total_games switch.data matches 1 positioned -2 70.5 36.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-130000000001
execute unless score #display_all.modes.castagne.total_games switch.data matches 1 positioned -2 70.5 36.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.castagne.total_games",label:"Castagne",uuid:"20180612-2024-2025-2026-130000000001",mode:2}
execute if score #display_all.modes.castagne.played switch.data matches 1 unless entity 20180612-2024-2025-2026-130000000002 run scoreboard players set #display_all.modes.castagne.played switch.data 0
execute if score #display_all.modes.castagne.played switch.data matches 1 positioned -6 70.5 38 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-130000000002
execute unless score #display_all.modes.castagne.played switch.data matches 1 positioned -6 70.5 38 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.castagne.played",label:"Games played",uuid:"20180612-2024-2025-2026-130000000002",mode:1}
execute if score #display_all.modes.castagne.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-130000000003 run scoreboard players set #display_all.modes.castagne.wins switch.data 0
execute if score #display_all.modes.castagne.wins switch.data matches 1 positioned -6 70.5 35 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-130000000003
execute unless score #display_all.modes.castagne.wins switch.data matches 1 positioned -6 70.5 35 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.castagne.wins",label:"Victories",uuid:"20180612-2024-2025-2026-130000000003",mode:1}

# Feed fast
execute if score #display_all.modes.feed_fast.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-131000000001 run scoreboard players set #display_all.modes.feed_fast.total_games switch.data 0
execute if score #display_all.modes.feed_fast.total_games switch.data matches 1 positioned -2 70.5 25.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-131000000001
execute unless score #display_all.modes.feed_fast.total_games switch.data matches 1 positioned -2 70.5 25.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.feed_fast.total_games",label:"Feed Fast",uuid:"20180612-2024-2025-2026-131000000001",mode:2}
execute if score #display_all.modes.feed_fast.played switch.data matches 1 unless entity 20180612-2024-2025-2026-131000000002 run scoreboard players set #display_all.modes.feed_fast.played switch.data 0
execute if score #display_all.modes.feed_fast.played switch.data matches 1 positioned -6 70.5 27 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-131000000002
execute unless score #display_all.modes.feed_fast.played switch.data matches 1 positioned -6 70.5 27 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.feed_fast.played",label:"Games played",uuid:"20180612-2024-2025-2026-131000000002",mode:1}
execute if score #display_all.modes.feed_fast.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-131000000003 run scoreboard players set #display_all.modes.feed_fast.wins switch.data 0
execute if score #display_all.modes.feed_fast.wins switch.data matches 1 positioned -6 70.5 24 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-131000000003
execute unless score #display_all.modes.feed_fast.wins switch.data matches 1 positioned -6 70.5 24 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.feed_fast.wins",label:"Victories",uuid:"20180612-2024-2025-2026-131000000003",mode:1}

# Pitchout
execute if score #display_all.modes.pitchout.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-132000000001 run scoreboard players set #display_all.modes.pitchout.total_games switch.data 0
execute if score #display_all.modes.pitchout.total_games switch.data matches 1 positioned -2 70.5 14.5 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-132000000001
execute unless score #display_all.modes.pitchout.total_games switch.data matches 1 positioned -2 70.5 14.5 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.pitchout.total_games",label:"Pitchout",uuid:"20180612-2024-2025-2026-132000000001",mode:2}
execute if score #display_all.modes.pitchout.played switch.data matches 1 unless entity 20180612-2024-2025-2026-132000000002 run scoreboard players set #display_all.modes.pitchout.played switch.data 0
execute if score #display_all.modes.pitchout.played switch.data matches 1 positioned -6 70.5 16 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-132000000002
execute unless score #display_all.modes.pitchout.played switch.data matches 1 positioned -6 70.5 16 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitchout.played",label:"Games played",uuid:"20180612-2024-2025-2026-132000000002",mode:1}
execute if score #display_all.modes.pitchout.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-132000000003 run scoreboard players set #display_all.modes.pitchout.wins switch.data 0
execute if score #display_all.modes.pitchout.wins switch.data matches 1 positioned -6 70.5 13 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-132000000003
execute unless score #display_all.modes.pitchout.wins switch.data matches 1 positioned -6 70.5 13 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.pitchout.wins",label:"Victories",uuid:"20180612-2024-2025-2026-132000000003",mode:1}

## Team VS Team
# Spectres game
execute if score #display_all.modes.spectres_game.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-133000000001 run scoreboard players set #display_all.modes.spectres_game.total_games switch.data 0
execute if score #display_all.modes.spectres_game.total_games switch.data matches 1 positioned -14.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-133000000001
execute unless score #display_all.modes.spectres_game.total_games switch.data matches 1 positioned -14.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.spectres_game.total_games",label:"Spectres Game",uuid:"20180612-2024-2025-2026-133000000001",mode:2}
execute if score #display_all.modes.spectres_game.played switch.data matches 1 unless entity 20180612-2024-2025-2026-133000000002 run scoreboard players set #display_all.modes.spectres_game.played switch.data 0
execute if score #display_all.modes.spectres_game.played switch.data matches 1 positioned -13 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-133000000002
execute unless score #display_all.modes.spectres_game.played switch.data matches 1 positioned -13 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spectres_game.played",label:"Games played",uuid:"20180612-2024-2025-2026-133000000002",mode:1}
execute if score #display_all.modes.spectres_game.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-133000000003 run scoreboard players set #display_all.modes.spectres_game.wins switch.data 0
execute if score #display_all.modes.spectres_game.wins switch.data matches 1 positioned -16 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-133000000003
execute unless score #display_all.modes.spectres_game.wins switch.data matches 1 positioned -16 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.spectres_game.wins",label:"Victories",uuid:"20180612-2024-2025-2026-133000000003",mode:1}
particle dolphin -15 69.55 4 0.2 0 0.2 0 2 normal

# SheepWars
execute if score #display_all.modes.sheepwars.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-134000000001 run scoreboard players set #display_all.modes.sheepwars.total_games switch.data 0
execute if score #display_all.modes.sheepwars.total_games switch.data matches 1 positioned -25.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-134000000001
execute unless score #display_all.modes.sheepwars.total_games switch.data matches 1 positioned -25.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.sheepwars.total_games",label:"SheepWars",uuid:"20180612-2024-2025-2026-134000000001",mode:2}
execute if score #display_all.modes.sheepwars.played switch.data matches 1 unless entity 20180612-2024-2025-2026-134000000002 run scoreboard players set #display_all.modes.sheepwars.played switch.data 0
execute if score #display_all.modes.sheepwars.played switch.data matches 1 positioned -24 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-134000000002
execute unless score #display_all.modes.sheepwars.played switch.data matches 1 positioned -24 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.sheepwars.played",label:"Games played",uuid:"20180612-2024-2025-2026-134000000002",mode:1}
execute if score #display_all.modes.sheepwars.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-134000000003 run scoreboard players set #display_all.modes.sheepwars.wins switch.data 0
execute if score #display_all.modes.sheepwars.wins switch.data matches 1 positioned -27 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-134000000003
execute unless score #display_all.modes.sheepwars.wins switch.data matches 1 positioned -27 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.sheepwars.wins",label:"Victories",uuid:"20180612-2024-2025-2026-134000000003",mode:1}

# Rush the flag
execute if score #display_all.modes.rush_the_flag.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-135000000001 run scoreboard players set #display_all.modes.rush_the_flag.total_games switch.data 0
execute if score #display_all.modes.rush_the_flag.total_games switch.data matches 1 positioned -36.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-135000000001
execute unless score #display_all.modes.rush_the_flag.total_games switch.data matches 1 positioned -36.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.rush_the_flag.total_games",label:"Rush The Flag",uuid:"20180612-2024-2025-2026-135000000001",mode:2}
execute if score #display_all.modes.rush_the_flag.played switch.data matches 1 unless entity 20180612-2024-2025-2026-135000000002 run scoreboard players set #display_all.modes.rush_the_flag.played switch.data 0
execute if score #display_all.modes.rush_the_flag.played switch.data matches 1 positioned -35 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-135000000002
execute unless score #display_all.modes.rush_the_flag.played switch.data matches 1 positioned -35 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_flag.played",label:"Games played",uuid:"20180612-2024-2025-2026-135000000002",mode:1}
execute if score #display_all.modes.rush_the_flag.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-135000000003 run scoreboard players set #display_all.modes.rush_the_flag.wins switch.data 0
execute if score #display_all.modes.rush_the_flag.wins switch.data matches 1 positioned -38 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-135000000003
execute unless score #display_all.modes.rush_the_flag.wins switch.data matches 1 positioned -38 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_flag.wins",label:"Victories",uuid:"20180612-2024-2025-2026-135000000003",mode:1}

# Guy shooter
execute if score #display_all.modes.gay_shooter.played switch.data matches 1 unless entity 20180612-2024-2025-2026-136000000001 run scoreboard players set #display_all.modes.gay_shooter.played switch.data 0
execute if score #display_all.modes.gay_shooter.played switch.data matches 1 positioned -46 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-136000000001
execute unless score #display_all.modes.gay_shooter.played switch.data matches 1 positioned -46 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.gay_shooter.played",label:"Games played",uuid:"20180612-2024-2025-2026-136000000001",mode:1}
execute if score #display_all.modes.gay_shooter.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-136000000002 run scoreboard players set #display_all.modes.gay_shooter.total_games switch.data 0
execute if score #display_all.modes.gay_shooter.total_games switch.data matches 1 positioned -47.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-136000000002
execute unless score #display_all.modes.gay_shooter.total_games switch.data matches 1 positioned -47.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.gay_shooter.total_games",label:"Guy Shooter",uuid:"20180612-2024-2025-2026-136000000002",mode:2}
execute if score #display_all.modes.gay_shooter.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-136000000003 run scoreboard players set #display_all.modes.gay_shooter.wins switch.data 0
execute if score #display_all.modes.gay_shooter.wins switch.data matches 1 positioned -49 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-136000000003
execute unless score #display_all.modes.gay_shooter.wins switch.data matches 1 positioned -49 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.gay_shooter.wins",label:"Victories",uuid:"20180612-2024-2025-2026-136000000003",mode:1}

# Layers 4 teams
execute if score #display_all.modes.layers_4_teams.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-137000000001 run scoreboard players set #display_all.modes.layers_4_teams.total_games switch.data 0
execute if score #display_all.modes.layers_4_teams.total_games switch.data matches 1 positioned -58.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-137000000001
execute unless score #display_all.modes.layers_4_teams.total_games switch.data matches 1 positioned -58.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.layers_4_teams.total_games",label:"Layers 4 Teams",uuid:"20180612-2024-2025-2026-137000000001",mode:2}
execute if score #display_all.modes.layers_4_teams.played switch.data matches 1 unless entity 20180612-2024-2025-2026-137000000002 run scoreboard players set #display_all.modes.layers_4_teams.played switch.data 0
execute if score #display_all.modes.layers_4_teams.played switch.data matches 1 positioned -57 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-137000000002
execute unless score #display_all.modes.layers_4_teams.played switch.data matches 1 positioned -57 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_4_teams.played",label:"Games played",uuid:"20180612-2024-2025-2026-137000000002",mode:1}
execute if score #display_all.modes.layers_4_teams.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-137000000003 run scoreboard players set #display_all.modes.layers_4_teams.wins switch.data 0
execute if score #display_all.modes.layers_4_teams.wins switch.data matches 1 positioned -60 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-137000000003
execute unless score #display_all.modes.layers_4_teams.wins switch.data matches 1 positioned -60 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_4_teams.wins",label:"Victories",uuid:"20180612-2024-2025-2026-137000000003",mode:1}

# Beat the kings
execute if score #display_all.modes.beat_the_kings.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-138000000001 run scoreboard players set #display_all.modes.beat_the_kings.total_games switch.data 0
execute if score #display_all.modes.beat_the_kings.total_games switch.data matches 1 positioned -69.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-138000000001
execute unless score #display_all.modes.beat_the_kings.total_games switch.data matches 1 positioned -69.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.beat_the_kings.total_games",label:"Beat The Kings",uuid:"20180612-2024-2025-2026-138000000001",mode:2}
execute if score #display_all.modes.beat_the_kings.played switch.data matches 1 unless entity 20180612-2024-2025-2026-138000000002 run scoreboard players set #display_all.modes.beat_the_kings.played switch.data 0
execute if score #display_all.modes.beat_the_kings.played switch.data matches 1 positioned -68 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-138000000002
execute unless score #display_all.modes.beat_the_kings.played switch.data matches 1 positioned -68 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.beat_the_kings.played",label:"Games played",uuid:"20180612-2024-2025-2026-138000000002",mode:1}
execute if score #display_all.modes.beat_the_kings.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-138000000003 run scoreboard players set #display_all.modes.beat_the_kings.wins switch.data 0
execute if score #display_all.modes.beat_the_kings.wins switch.data matches 1 positioned -71 70.5 6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-138000000003
execute unless score #display_all.modes.beat_the_kings.wins switch.data matches 1 positioned -71 70.5 6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.beat_the_kings.wins",label:"Victories",uuid:"20180612-2024-2025-2026-138000000003",mode:1}

# GlassRunner
execute if score #display_all.modes.glassrunner.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-139000000001 run scoreboard players set #display_all.modes.glassrunner.total_games switch.data 0
execute if score #display_all.modes.glassrunner.total_games switch.data matches 1 positioned -80.5 70.5 2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-139000000001
execute unless score #display_all.modes.glassrunner.total_games switch.data matches 1 positioned -80.5 70.5 2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.glassrunner.total_games",label:"GlassRunner",uuid:"20180612-2024-2025-2026-139000000001",mode:2}
execute if score #display_all.modes.glassrunner.played switch.data matches 1 unless entity 20180612-2024-2025-2026-139000000002 run scoreboard players set #display_all.modes.glassrunner.played switch.data 0
execute if score #display_all.modes.glassrunner.played switch.data matches 1 positioned -79 70.5 7 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-139000000002
execute unless score #display_all.modes.glassrunner.played switch.data matches 1 positioned -79 70.5 7 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.glassrunner.played",label:"Games played",uuid:"20180612-2024-2025-2026-139000000002",mode:1}
execute if score #display_all.modes.glassrunner.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-139000000003 run scoreboard players set #display_all.modes.glassrunner.wins switch.data 0
execute if score #display_all.modes.glassrunner.wins switch.data matches 1 positioned -82 70.5 7 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-139000000003
execute unless score #display_all.modes.glassrunner.wins switch.data matches 1 positioned -82 70.5 7 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.glassrunner.wins",label:"Victories",uuid:"20180612-2024-2025-2026-139000000003",mode:1}
execute unless entity 20180612-2024-2025-2026-139000000004 run summon snowball -80.42 72.20 6.05 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000004")}
execute unless entity 20180612-2024-2025-2026-139000000005 run summon snowball -80.48 73.40 7.30 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000005")}

# Laser game
execute if score #display_all.modes.laser_game.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-140000000001 run scoreboard players set #display_all.modes.laser_game.total_games switch.data 0
execute if score #display_all.modes.laser_game.total_games switch.data matches 1 positioned -69.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-140000000001
execute unless score #display_all.modes.laser_game.total_games switch.data matches 1 positioned -69.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.laser_game.total_games",label:"Laser Game",uuid:"20180612-2024-2025-2026-140000000001",mode:2}
execute if score #display_all.modes.laser_game.played switch.data matches 1 unless entity 20180612-2024-2025-2026-140000000002 run scoreboard players set #display_all.modes.laser_game.played switch.data 0
execute if score #display_all.modes.laser_game.played switch.data matches 1 positioned -71 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-140000000002
execute unless score #display_all.modes.laser_game.played switch.data matches 1 positioned -71 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.laser_game.played",label:"Games played",uuid:"20180612-2024-2025-2026-140000000002",mode:1}
execute if score #display_all.modes.laser_game.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-140000000003 run scoreboard players set #display_all.modes.laser_game.wins switch.data 0
execute if score #display_all.modes.laser_game.wins switch.data matches 1 positioned -68 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-140000000003
execute unless score #display_all.modes.laser_game.wins switch.data matches 1 positioned -68 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.laser_game.wins",label:"Victories",uuid:"20180612-2024-2025-2026-140000000003",mode:1}

# Layers 2 teams
execute if score #display_all.modes.layers_2_teams.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-141000000001 run scoreboard players set #display_all.modes.layers_2_teams.total_games switch.data 0
execute if score #display_all.modes.layers_2_teams.total_games switch.data matches 1 positioned -58.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-141000000001
execute unless score #display_all.modes.layers_2_teams.total_games switch.data matches 1 positioned -58.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.layers_2_teams.total_games",label:"Layers 2 Teams",uuid:"20180612-2024-2025-2026-141000000001",mode:2}
execute if score #display_all.modes.layers_2_teams.played switch.data matches 1 unless entity 20180612-2024-2025-2026-141000000002 run scoreboard players set #display_all.modes.layers_2_teams.played switch.data 0
execute if score #display_all.modes.layers_2_teams.played switch.data matches 1 positioned -60 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-141000000002
execute unless score #display_all.modes.layers_2_teams.played switch.data matches 1 positioned -60 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_2_teams.played",label:"Games played",uuid:"20180612-2024-2025-2026-141000000002",mode:1}
execute if score #display_all.modes.layers_2_teams.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-141000000003 run scoreboard players set #display_all.modes.layers_2_teams.wins switch.data 0
execute if score #display_all.modes.layers_2_teams.wins switch.data matches 1 positioned -57 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-141000000003
execute unless score #display_all.modes.layers_2_teams.wins switch.data matches 1 positioned -57 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.layers_2_teams.wins",label:"Victories",uuid:"20180612-2024-2025-2026-141000000003",mode:1}

# Protect the king
execute if score #display_all.modes.protect_the_king.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-142000000001 run scoreboard players set #display_all.modes.protect_the_king.total_games switch.data 0
execute if score #display_all.modes.protect_the_king.total_games switch.data matches 1 positioned -47.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-142000000001
execute unless score #display_all.modes.protect_the_king.total_games switch.data matches 1 positioned -47.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.protect_the_king.total_games",label:"Protect The King",uuid:"20180612-2024-2025-2026-142000000001",mode:2}
execute if score #display_all.modes.protect_the_king.played switch.data matches 1 unless entity 20180612-2024-2025-2026-142000000002 run scoreboard players set #display_all.modes.protect_the_king.played switch.data 0
execute if score #display_all.modes.protect_the_king.played switch.data matches 1 positioned -49 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-142000000002
execute unless score #display_all.modes.protect_the_king.played switch.data matches 1 positioned -49 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.protect_the_king.played",label:"Games played",uuid:"20180612-2024-2025-2026-142000000002",mode:1}
execute if score #display_all.modes.protect_the_king.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-142000000003 run scoreboard players set #display_all.modes.protect_the_king.wins switch.data 0
execute if score #display_all.modes.protect_the_king.wins switch.data matches 1 positioned -46 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-142000000003
execute unless score #display_all.modes.protect_the_king.wins switch.data matches 1 positioned -46 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.protect_the_king.wins",label:"Victories",uuid:"20180612-2024-2025-2026-142000000003",mode:1}

# Rush the point
execute if score #display_all.modes.rush_the_point.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-143000000001 run scoreboard players set #display_all.modes.rush_the_point.total_games switch.data 0
execute if score #display_all.modes.rush_the_point.total_games switch.data matches 1 positioned -36.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-143000000001
execute unless score #display_all.modes.rush_the_point.total_games switch.data matches 1 positioned -36.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.rush_the_point.total_games",label:"Rush The Point",uuid:"20180612-2024-2025-2026-143000000001",mode:2}
execute if score #display_all.modes.rush_the_point.played switch.data matches 1 unless entity 20180612-2024-2025-2026-143000000002 run scoreboard players set #display_all.modes.rush_the_point.played switch.data 0
execute if score #display_all.modes.rush_the_point.played switch.data matches 1 positioned -38 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-143000000002
execute unless score #display_all.modes.rush_the_point.played switch.data matches 1 positioned -38 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_point.played",label:"Games played",uuid:"20180612-2024-2025-2026-143000000002",mode:1}
execute if score #display_all.modes.rush_the_point.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-143000000003 run scoreboard players set #display_all.modes.rush_the_point.wins switch.data 0
execute if score #display_all.modes.rush_the_point.wins switch.data matches 1 positioned -35 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-143000000003
execute unless score #display_all.modes.rush_the_point.wins switch.data matches 1 positioned -35 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.rush_the_point.wins",label:"Victories",uuid:"20180612-2024-2025-2026-143000000003",mode:1}

# Capture the flag
execute if score #display_all.modes.capture_the_flag.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-144000000001 run scoreboard players set #display_all.modes.capture_the_flag.total_games switch.data 0
execute if score #display_all.modes.capture_the_flag.total_games switch.data matches 1 positioned -25.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-144000000001
execute unless score #display_all.modes.capture_the_flag.total_games switch.data matches 1 positioned -25.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.capture_the_flag.total_games",label:"Capture The Flag",uuid:"20180612-2024-2025-2026-144000000001",mode:2}
execute if score #display_all.modes.capture_the_flag.played switch.data matches 1 unless entity 20180612-2024-2025-2026-144000000002 run scoreboard players set #display_all.modes.capture_the_flag.played switch.data 0
execute if score #display_all.modes.capture_the_flag.played switch.data matches 1 positioned -27 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-144000000002
execute unless score #display_all.modes.capture_the_flag.played switch.data matches 1 positioned -27 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.capture_the_flag.played",label:"Games played",uuid:"20180612-2024-2025-2026-144000000002",mode:1}
execute if score #display_all.modes.capture_the_flag.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-144000000003 run scoreboard players set #display_all.modes.capture_the_flag.wins switch.data 0
execute if score #display_all.modes.capture_the_flag.wins switch.data matches 1 positioned -24 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-144000000003
execute unless score #display_all.modes.capture_the_flag.wins switch.data matches 1 positioned -24 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.capture_the_flag.wins",label:"Victories",uuid:"20180612-2024-2025-2026-144000000003",mode:1}

# Traitors game
execute if score #display_all.modes.traitors_game.total_games switch.data matches 1 unless entity 20180612-2024-2025-2026-145000000001 run scoreboard players set #display_all.modes.traitors_game.total_games switch.data 0
execute if score #display_all.modes.traitors_game.total_games switch.data matches 1 positioned -14.5 70.5 -2 unless entity @a[distance=0.1..24] run kill 20180612-2024-2025-2026-145000000001
execute unless score #display_all.modes.traitors_game.total_games switch.data matches 1 positioned -14.5 70.5 -2 if entity @a[distance=0.1..24] run function switch:stats/display/summon {path:"all.modes.traitors_game.total_games",label:"Traitors Game",uuid:"20180612-2024-2025-2026-145000000001",mode:2}
execute if score #display_all.modes.traitors_game.played switch.data matches 1 unless entity 20180612-2024-2025-2026-145000000002 run scoreboard players set #display_all.modes.traitors_game.played switch.data 0
execute if score #display_all.modes.traitors_game.played switch.data matches 1 positioned -16 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-145000000002
execute unless score #display_all.modes.traitors_game.played switch.data matches 1 positioned -16 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.traitors_game.played",label:"Games played",uuid:"20180612-2024-2025-2026-145000000002",mode:1}
execute if score #display_all.modes.traitors_game.wins switch.data matches 1 unless entity 20180612-2024-2025-2026-145000000003 run scoreboard players set #display_all.modes.traitors_game.wins switch.data 0
execute if score #display_all.modes.traitors_game.wins switch.data matches 1 positioned -13 70.5 -6 unless entity @a[distance=0.1..12] run kill 20180612-2024-2025-2026-145000000003
execute unless score #display_all.modes.traitors_game.wins switch.data matches 1 positioned -13 70.5 -6 if entity @a[distance=0.1..12] run function switch:stats/display/summon {path:"all.modes.traitors_game.wins",label:"Victories",uuid:"20180612-2024-2025-2026-145000000003",mode:1}

