
#> switch:modes/build_battle/rating_time/right_click
#
# @within	switch:modes/build_battle/tick
#

# Get slot
scoreboard players set #slot switch.data 0
execute store result score #slot switch.data run data get entity @s SelectedItemSlot

# Depending on slot, print message and playsound cat
function switch:translations/modes_build_battle_rating_time_right_click
execute if score #slot switch.data matches 0 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 0.33
execute if score #slot switch.data matches 1 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 0.66
execute if score #slot switch.data matches 2 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 1.00
execute if score #slot switch.data matches 3 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 1.33
execute if score #slot switch.data matches 4 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 1.66
execute if score #slot switch.data matches 5 run playsound entity.cat.ambient ambient @s ~ ~ ~ 1 2.00

# Change vote
execute if score #slot switch.data matches 0 run scoreboard players set @s switch.temp.rating_vote 1
execute if score #slot switch.data matches 1 run scoreboard players set @s switch.temp.rating_vote 2
execute if score #slot switch.data matches 2 run scoreboard players set @s switch.temp.rating_vote 4
execute if score #slot switch.data matches 3 run scoreboard players set @s switch.temp.rating_vote 6
execute if score #slot switch.data matches 4 run scoreboard players set @s switch.temp.rating_vote 8
execute if score #slot switch.data matches 5 run scoreboard players set @s switch.temp.rating_vote 12

