
#> switch:modes/build_battle/rating_time/start
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/building_time/second
#

# Change game state
scoreboard players set #build_battle_state switch.data 2
schedule function switch:modes/build_battle/rating_time/find_player 1t replace
execute as @a[tag=!detached] at @s run playsound block.anvil.destroy ambient @s
clear @a[tag=!detached]

# Tag every players to be able to rate their build
scoreboard players set @a[scores={switch.temp.id=0..}] switch.temp.to_rate 1

# Tellraw start + playsound
function switch:translations/modes_build_battle_rating_time_start

