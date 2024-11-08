
#> switch:modes/mlg_a_coudre/second
#
# @within	switch:modes/mlg_a_coudre/calls/second
#

scoreboard players add #mlg_a_coudre_seconds switch.data 1

function switch:modes/mlg_a_coudre/xp_bar
execute if score #remaining_time switch.data matches -6.. run scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches 0 as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=190,dy=100] run kill @s
execute if score #remaining_time switch.data matches -6 run kill @a[tag=!detached,gamemode=adventure]

