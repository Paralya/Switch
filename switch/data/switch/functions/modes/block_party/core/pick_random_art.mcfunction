
## Choose pixel art
# Get the number of pixel arts for the game
scoreboard players set #art_count switch.data 0
execute positioned 110008 85 110008 run function switch:modes/block_party/core/get_art_count_loop

# Choose a random pixel art for the game which is not the same as the previous one
scoreboard players operation #modulo_rand switch.data = #art_count switch.data
function switch:modes/block_party/core/get_random_number_loop
scoreboard players operation #bp_previous_art switch.data = #random switch.data
scoreboard players operation #bp_selected_art switch.data = #random switch.data

# Teleport current marker to the selected pixel art
tp @s 110008 85 110008
scoreboard players set #y_pos switch.data 85
scoreboard players operation #y_pos switch.data -= #bp_selected_art switch.data
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
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
execute at @s run loot insert 0 0 0 mine ~ ~ ~ diamond_pickaxe

## Others
# Tellraw, Playsound, and Clear all
tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Démarrage de la manche n°"},{"score":{"name":"#block_party_round","objective":"switch.data"},"color":"aqua"},{"text":" !"}]
execute as @a at @s run playsound entity.villager.ambient ambient @s
clear @a[gamemode=adventure]

# Play random music
execute store result score #random switch.data run random value 0..10
execute if score #random switch.data matches 0 as @a at @s run playsound music_disc.cat record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 1 as @a at @s run playsound music_disc.blocks record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 2 as @a at @s run playsound music_disc.chirp record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 3 as @a at @s run playsound music_disc.far record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 4 as @a at @s run playsound music_disc.mall record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 5 as @a at @s run playsound music_disc.mellohi record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 6 as @a at @s run playsound music_disc.stal record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 7 as @a at @s run playsound music_disc.strad record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 8 as @a at @s run playsound music_disc.wait record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 9 as @a at @s run playsound music_disc.ward record @s ~ ~ ~ 10000 1 1

# Summon a paint cow randomly (1/3 chance)
execute if predicate switch:chance/0.33 at @e[tag=switch.selected_map,limit=1] run summon cow ~ ~ ~ {Invulnerable:1b,CustomName:'{"text":"Paint Cow","color":"yellow"}',CustomNameVisible:1b,Tags:["switch.paint_cow"],DeathLootTable:"none",Attributes:[{Name:"generic.movement_speed",Base:1.0d}]}

# Summon ravager (1/4 chance)
execute if predicate switch:chance/0.25 at @e[tag=switch.selected_map,limit=1] run summon ravager ~ ~ ~ {Invulnerable:1b,CustomName:'{"text":"Vache Folle","color":"red"}',CustomNameVisible:1b,Tags:["switch.ravager"],DeathLootTable:"none"}

# Spreadplayers the entities
spreadplayers 110038 110038 10 20 false @e[tag=switch.paint_cow]
spreadplayers 110038 110038 10 20 false @e[tag=switch.ravager]
schedule function switch:modes/block_party/core/damage_cow 1s

# Kill marker
kill @s

