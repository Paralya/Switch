
#> switch:modes/rush_the_point/start_common
#
# @within	switch:modes/rush_the_flag/start
#			switch:modes/rush_the_point/start
#

effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
function switch:utils/choose_map_for {id:"rush_the_point", maps:["rush_the_point_1"]}

execute in switch:game run gamerule naturalRegeneration false
execute in switch:game run gamerule keepInventory true
execute in switch:game run gamerule doTileDrops false

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.fireball_cooldown dummy
scoreboard objectives add switch.temp.chosen_class dummy
scoreboard objectives add switch.temp.elytra_cooldown dummy
scoreboard objectives add switch.temp.break_obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add switch.temp.total_obsidian dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar

scoreboard players set #bonus_reload switch.data 30
scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #process_end switch.data 0

team add switch.temp.sidebar.5 {"text":"[Sidebar 5]"}
team add switch.temp.sidebar.3 {"text":"[Sidebar 3]"}
team add switch.temp.sidebar.2 {"text":"[Sidebar 2]"}
team add switch.temp.sidebar.1 {"text":"[Sidebar 1]"}
team modify switch.temp.sidebar.5 suffix [{"text":"Goal: "},{"text":"7500","color":"yellow"},{"text":" points"}]
team modify switch.temp.sidebar.3 suffix [{"text":"Time remaining: "},{"text":"10","color":"yellow"},{"text":"m"},{"text":"00","color":"yellow"},{"text":"s"}]
team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.5 §3
team join switch.temp.sidebar.3 §5
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §r switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1
scoreboard players display numberformat §5 switch.temp.sidebar blank
scoreboard players display numberformat §r switch.temp.sidebar blank
scoreboard players display numberformat §3 switch.temp.sidebar blank
scoreboard players display numberformat §2 switch.temp.sidebar blank
scoreboard players display numberformat §1 switch.temp.sidebar blank

# Choix des rôles + give d'items
team add switch.rush_the_point.red {"text":"[Red]","color":"red"}
team add switch.rush_the_point.blue {"text":"[Blue]","color":"blue"}
team modify switch.rush_the_point.red color red
team modify switch.rush_the_point.blue color blue
team modify switch.rush_the_point.red nametagVisibility hideForOtherTeams
team modify switch.rush_the_point.blue nametagVisibility hideForOtherTeams
team modify switch.rush_the_point.red friendlyFire false
team modify switch.rush_the_point.blue friendlyFire false
team modify switch.rush_the_point.red collisionRule never
team modify switch.rush_the_point.blue collisionRule never
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/rush_the_point/roles/main

