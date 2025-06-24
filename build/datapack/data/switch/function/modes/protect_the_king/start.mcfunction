
#> switch:modes/protect_the_king/start
#
# @within	switch:modes/protect_the_king/calls/start
#

gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] slowness 8 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"protect_the_king", maps:["traitor_original","mushroom_plains","baby_park","snow_travel","cathedrale_liege","jayl_dark_forest","operation_pigclaw","dark_forest_hills","paralya_lobby_noel","zonweeb_highschool","hider_mansion","nuketown_no_barrier","japanese_village","snowy_village","werewolf_village","lightium_spawn","paralya_lobby","stardust_spawn","stardust_boss_zone","stardust_boss_zone_nether","stardust_pvp_zone","jn_biomes_relief"]}

execute in switch:game run gamerule naturalRegeneration false

function switch:translations/modes_protect_the_king_start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #protect_the_king_seconds switch.data -1
scoreboard players set #protect_the_king_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives setdisplay list switch.health

# Mise en place des deux bossbars
bossbar add switch.temp.red_king "Red King"
bossbar add switch.temp.blue_king "Blue King"
bossbar set switch.temp.red_king color red
bossbar set switch.temp.blue_king color blue
bossbar set switch.temp.red_king max 40
bossbar set switch.temp.blue_king max 40
bossbar set switch.temp.red_king value 40
bossbar set switch.temp.blue_king value 40
bossbar set switch.temp.red_king players @a[tag=!detached]
bossbar set switch.temp.blue_king players @a[tag=!detached]

# Choix des rôles + give d'items
team add switch.temp.red_king {"text":"[Red King]","color":"dark_red"}
team add switch.temp.blue_king {"text":"[Blue King]","color":"dark_blue"}
team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team modify switch.temp.red_king color dark_red
team modify switch.temp.blue_king color dark_blue
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red collisionRule never
team modify switch.temp.blue collisionRule never
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/protect_the_king/roles
function switch:modes/protect_the_king/better_tp
tp @a[tag=!detached,team=switch.temp.red] @p[team=switch.temp.red_king]
tp @a[tag=!detached,team=switch.temp.blue] @p[team=switch.temp.blue_king]
execute as @a[tag=!detached] at @s run function switch:modes/protect_the_king/give_items

