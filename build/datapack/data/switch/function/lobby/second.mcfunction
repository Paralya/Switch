
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

# Minigames stats, one player check per alley slice: a slice nobody is near runs once more to kill its boards, then stays idle
execute store success score #alley_nearby switch.data positioned 42.0 70.5 0.0 if entity @a[distance=..30]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/x1
execute if score #alley_nearby switch.data matches 0 if score #boards_x1 switch.data matches 1 run function switch:lobby/boards/x1
scoreboard players operation #boards_x1 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned -75.0 70.5 0.5 if entity @a[distance=..31]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/x-3
execute if score #alley_nearby switch.data matches 0 if score #boards_x-3 switch.data matches 1 run function switch:lobby/boards/x-3
scoreboard players operation #boards_x-3 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned 0.0 71.5 -18.0 if entity @a[distance=..30]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/z-1
execute if score #alley_nearby switch.data matches 0 if score #boards_z-1 switch.data matches 1 run function switch:lobby/boards/z-1
scoreboard players operation #boards_z-1 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned 20.0 70.5 0.0 if entity @a[distance=..30]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/x0
execute if score #alley_nearby switch.data matches 0 if score #boards_x0 switch.data matches 1 run function switch:lobby/boards/x0
scoreboard players operation #boards_x0 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned 0.0 70.5 20.0 if entity @a[distance=..30]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/z0
execute if score #alley_nearby switch.data matches 0 if score #boards_z0 switch.data matches 1 run function switch:lobby/boards/z0
scoreboard players operation #boards_z0 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned 0.0 70.5 47.5 if entity @a[distance=..36]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/z1
execute if score #alley_nearby switch.data matches 0 if score #boards_z1 switch.data matches 1 run function switch:lobby/boards/z1
scoreboard players operation #boards_z1 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned 0.0 70.5 80.5 if entity @a[distance=..36]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/z2
execute if score #alley_nearby switch.data matches 0 if score #boards_z2 switch.data matches 1 run function switch:lobby/boards/z2
scoreboard players operation #boards_z2 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned 0.0 70.5 113.5 if entity @a[distance=..36]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/z3
execute if score #alley_nearby switch.data matches 0 if score #boards_z3 switch.data matches 1 run function switch:lobby/boards/z3
scoreboard players operation #boards_z3 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned 0.0 70.5 135.5 if entity @a[distance=..26]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/z4
execute if score #alley_nearby switch.data matches 0 if score #boards_z4 switch.data matches 1 run function switch:lobby/boards/z4
scoreboard players operation #boards_z4 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned -20.0 70.5 0.0 if entity @a[distance=..30]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/x-1
execute if score #alley_nearby switch.data matches 0 if score #boards_x-1 switch.data matches 1 run function switch:lobby/boards/x-1
scoreboard players operation #boards_x-1 switch.data = #alley_nearby switch.data

execute store success score #alley_nearby switch.data positioned -47.5 70.5 0.0 if entity @a[distance=..36]
execute if score #alley_nearby switch.data matches 1 run function switch:lobby/boards/x-2
execute if score #alley_nearby switch.data matches 0 if score #boards_x-2 switch.data matches 1 run function switch:lobby/boards/x-2
scoreboard players operation #boards_x-2 switch.data = #alley_nearby switch.data

# Boards decorations: Fireblast fireball, Memory mine and Spectres game particles, GlassRunner snowballs
execute unless entity 20180612-2024-2025-2026-119000000004 run summon small_fireball 6 70.42 124.5 {UUID:uuid("20180612-2024-2025-2026-119000000004")}
execute if predicate switch:chance/0.25 run particle dust{color:[1.0,0.0,0.0],scale:1.0} -5 69.55 114 0 0 0 0 1 normal
particle dolphin -15 69.55 4 0.2 0 0.2 0 2 normal
execute unless entity 20180612-2024-2025-2026-139000000004 run summon snowball -80.42 72.20 6.05 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000004")}
execute unless entity 20180612-2024-2025-2026-139000000005 run summon snowball -80.48 73.40 7.30 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000005")}

