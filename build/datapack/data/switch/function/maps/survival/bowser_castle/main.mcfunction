
#> switch:maps/survival/bowser_castle/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [22074.5d, 132.5d, 22130.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/bowser_castle/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/bowser_castle/if_race

