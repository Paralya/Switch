
## Choose pixel art
# If list is empty, remade it
scoreboard players set #art_count switch.data 0
execute store result score #art_count switch.data if data storage switch:maps block_party[]
execute if score #art_count switch.data matches 0 run function switch:modes/block_party/core/remake_list/main

# Choose a random pixel art for the game
execute store result score #bp_selected_art switch.data run data get storage switch:maps block_party[0]
data remove storage switch:maps block_party[0]

# Teleport current marker to the selected pixel art
tp @s 110008 85 110008
scoreboard players set #y_pos switch.data 85
scoreboard players operation #y_pos switch.data -= #bp_selected_art switch.data
execute store result entity @s Pos[1] double 1 run scoreboard players get #y_pos switch.data

# Clone the selected pixel art
execute at @s run clone ~ ~ ~ ~63 ~ ~63 ~ 100 ~ replace force



## Choose block
# Get the number of blocks in the pixel art
scoreboard players set #block_count switch.data 0
execute at @s positioned ~ ~ ~65 run function switch:modes/block_party/core/get_block_count_loop

# Choose a random block for the pixel art
scoreboard players operation #modulo_rand switch.data = #block_count switch.data
function switch:utils/get_random/
scoreboard players operation #bp_selected_block switch.data = #random switch.data

# Teleport current marker to the selected block
scoreboard players set #z_pos switch.data 110073
scoreboard players operation #z_pos switch.data += #bp_selected_block switch.data
execute store result entity @s Pos[2] double 1 run scoreboard players get #z_pos switch.data

# Get the block at the current marker
setblock 0 4 0 air
setblock 0 4 0 yellow_shulker_box
execute at @s run loot insert 0 4 0 mine ~ ~ ~ diamond_pickaxe



## Others
# Tellraw, Playsound, and Clear all
function switch:translations/modes_block_party_core_pick_random_art
execute as @a[tag=!detached] at @s run playsound entity.villager.ambient ambient @s
clear @a[tag=!detached,gamemode=adventure]

# Play random music
execute store result score #random switch.data run random value 1..13
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound music_disc.blocks record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound music_disc.cat record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound music_disc.chirp record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound music_disc.far record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound music_disc.mall record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound music_disc.mellohi record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound music_disc.otherside record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound music_disc.pigstep record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound music_disc.relic record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound music_disc.stal record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound music_disc.strad record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound music_disc.wait record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 13 as @a[tag=!detached] at @s run playsound music_disc.ward record @s ~ ~ ~ 10000 1 1

# Summon a paint cow randomly (1/3 chance)
execute if predicate switch:chance/0.33 at @e[tag=switch.selected_map,limit=1] run summon cow ~ ~ ~ {CustomName:'{"text":"Gertrude","color":"yellow"}',CustomNameVisible:true,Tags:["switch.paint_cow"],AbsorptionAmount:2048.0f,DeathLootTable:"empty",attributes:[{id:"max_absorption",base:2048.0},{id:"movement_speed",base:5.0d}]}

# Summon ravager (1/4 chance)
execute if predicate switch:chance/0.33 at @e[tag=switch.selected_map,limit=1] run summon ravager ~ ~ ~ {Invulnerable:true,CustomName:'{"text":"Vachette","color":"red"}',CustomNameVisible:true,Tags:["switch.ravager"],DeathLootTable:"empty"}

# Spreadplayers the entities
spreadplayers 110038 110038 10 20 false @e[tag=switch.paint_cow]
spreadplayers 110038 110038 10 20 false @e[tag=switch.ravager]
effect give @e[tag=switch.ravager] slow_falling infinite 0 true
schedule function switch:modes/block_party/core/damage_cow 1s

# Kill marker
kill @s

