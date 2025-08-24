
#> switch:modes/infected/death/human_spawn
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/infected/second_start [ as @a[tag=!detached] & at @s ]
#

team join switch.temp.human @s
execute if data storage switch:main {map:"area_51"} run tp @s 2017 158 2098 -90 0
execute if data storage switch:main {map:"ancienne_egypte_2013"} run tp @s 128089 133 128095 180 0
execute if data storage switch:main {map:"old_japan_apocalypse"} run tp @s 129013 105 129018 180 0
execute if data storage switch:main {map:"lost_graveyard_remastered"} run tp @s 127055 129 127046 -90 0
scoreboard players enable @s switch.temp.dont_want_to_be_infected
scoreboard players set @s switch.temp.hits_gotten 0
attribute @s attack_speed base set 2048.0
effect clear @s
clear @s

# Give stuff depending on player's upgrades
function switch:modes/infected/death/human_give

# Playsound
execute at @s run playsound entity.ender_dragon.growl ambient @s
effect give @s blindness 3 0 true
effect give @s regeneration 10 255 true

