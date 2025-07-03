
#> switch:modes/shoot_da_sheep/second
#
# @within	switch:modes/shoot_da_sheep/calls/second
#

scoreboard players add #shoot_da_sheep_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1

# Summon sheep every second
execute as @a[predicate=switch:chance/0.5] if score #shoot_da_sheep_seconds switch.data matches 0.. in switch:game run function switch:modes/shoot_da_sheep/summon_sheep

# XP bar update
function switch:modes/shoot_da_sheep/xp_bar

