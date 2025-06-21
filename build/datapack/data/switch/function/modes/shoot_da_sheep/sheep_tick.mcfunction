
#> switch:modes/shoot_da_sheep/sheep_tick
#
# @within	switch:modes/shoot_da_sheep/tick
#

# Go down until a block is found
tp @s ~ ~-0.25 ~
execute unless block ~ ~-1 ~ air run function switch:utils/safe_kill

# If the sheep is hurt, kill it and call the reward function to the player
execute unless data entity @s {HurtTime:0s} store result score #color switch.data run data get entity @s Color
execute unless data entity @s {HurtTime:0s} on attacker run function switch:modes/shoot_da_sheep/reward
execute unless data entity @s {HurtTime:0s} run function switch:utils/safe_kill

