
#> switch:maps/survival/baby_park/main
#
# @within	switch:maps/load_survival
#

summon marker 0 0 0 {Tags:["switch.selected_map"]}
execute as @e[type=marker,tag=switch.selected_map] run data modify entity @s Pos set value [21152.98.5d, 132.38.5d, 21103.62.5d]

scoreboard players set #count switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:maps/survival/baby_park/teleport_players

execute if score #is_race switch.data matches 1 run function switch:maps/survival/baby_park/if_race

