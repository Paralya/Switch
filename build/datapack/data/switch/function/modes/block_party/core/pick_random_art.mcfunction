
#> switch:modes/block_party/core/pick_random_art
#
# @within	switch:modes/block_party/tick
#

## Choose the pixel art and its color (an art that cannot be played is skipped)
scoreboard players set #bp_attempts switch.data 0
execute unless function switch:modes/block_party/core/pick_block run return run function switch:modes/block_party/core/pick_abort


## Others
# Tellraw, Playsound, and Clear all
function switch:modes/block_party/translations/core_pick_random_art
execute as @a[tag=!detached] at @s run playsound entity.villager.ambient ambient @s
clear @a[tag=!detached,gamemode=adventure]

# Play random music
execute store result score #random switch.data run random value 1..18
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound music_disc.blocks record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound music_disc.cat record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound music_disc.chirp record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound music_disc.creator record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound music_disc.creator_music_box record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound music_disc.far record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound music_disc.lava_chicken record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound music_disc.mall record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound music_disc.mellohi record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound music_disc.otherside record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound music_disc.pigstep record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound music_disc.precipice record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 13 as @a[tag=!detached] at @s run playsound music_disc.relic record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 14 as @a[tag=!detached] at @s run playsound music_disc.stal record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 15 as @a[tag=!detached] at @s run playsound music_disc.strad record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 16 as @a[tag=!detached] at @s run playsound music_disc.tears record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 17 as @a[tag=!detached] at @s run playsound music_disc.wait record @s ~ ~ ~ 10000 1 1
execute if score #random switch.data matches 18 as @a[tag=!detached] at @s run playsound music_disc.ward record @s ~ ~ ~ 10000 1 1

# Summon a paint cow randomly (1/3 chance)
execute if predicate switch:chance/0.33 at @e[tag=switch.selected_map,limit=1] run summon cow ~ ~ ~ {CustomName:{"text":"Gertrude","color":"#FFE60A"},CustomNameVisible:true,Tags:["switch.paint_cow","switch.block_party_mob"],AbsorptionAmount:2048.0f,DeathLootTable:"empty",attributes:[{id:"max_absorption",base:2048.0},{id:"movement_speed",base:5.0d}]}

# Summon ravager (1/4 chance)
execute if predicate switch:chance/0.33 at @e[tag=switch.selected_map,limit=1] run summon ravager ~ ~ ~ {Invulnerable:true,CustomName:{"text":"Vachette","color":"#FF3347"},CustomNameVisible:true,Tags:["switch.ravager","switch.block_party_mob"],DeathLootTable:"empty"}

# Spreadplayers the entities
execute as @e[tag=switch.block_party_mob] run function switch:maps/spread_one_player
effect give @e[tag=switch.ravager] slow_falling infinite 0 true
schedule function switch:modes/block_party/core/damage_cow 1s

# Kill marker
kill @s

