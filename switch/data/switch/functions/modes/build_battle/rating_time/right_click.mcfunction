
# Get slot
scoreboard players set #slot switch.data 0
execute store result score #slot switch.data run data get entity @s SelectedItemSlot

# Depending on slot, print message and playsound cat
execute if score #slot switch.data matches 0 run tellraw @s {"text":"Super Poop","color":"#8B4513"}
execute if score #slot switch.data matches 1 run tellraw @s {"text":"Poop","color":"red"}
execute if score #slot switch.data matches 2 run tellraw @s {"text":"OK","color":"dark_green"}
execute if score #slot switch.data matches 3 run tellraw @s {"text":"Good","color":"green"}
execute if score #slot switch.data matches 4 run tellraw @s {"text":"Epic","color":"light_purple"}
execute if score #slot switch.data matches 5 run tellraw @s {"text":"Legendary","color":"gold"}
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

