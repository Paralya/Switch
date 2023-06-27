
#> sheepwars:utils/player_damaged
#
# @within			sheepwars:sheeps/final/*
# @executed			as a player
#
# @output victim	The player who has been damaged (executing the function tag)
# @output damager	The owner of the sheep who killed the victim (tagged with "sheepwars.owner")
#
# @description		Send a function tag signal if he is dead, and remove the damage tag.
#					The function tag signal can be used to customize the death of the player (message, etc.)
#

# Send a function tag signal
scoreboard players set #health sheepwars.data -1
execute store result score #health sheepwars.data run data get entity @s Health 1000000
execute if score #health sheepwars.data matches ..0 run function #sheepwars:signals/player_killed

# Remove the damage tag
tag @s remove sheepwars.damaged

