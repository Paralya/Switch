
execute if score #color switch.data matches 0..3 run scoreboard players add @s switch.temp.points 1
execute if score #color switch.data matches 4..5 run scoreboard players add @s switch.temp.points 2
execute if score #color switch.data matches 6..7 run scoreboard players add @s switch.temp.points 3
execute if score #color switch.data matches 8..9 run scoreboard players add @s switch.temp.points 4
execute if score #color switch.data matches 10..11 run scoreboard players add @s switch.temp.points 6
execute if score #color switch.data matches 12..13 run scoreboard players add @s switch.temp.points 8
execute if score #color switch.data matches 14 run scoreboard players add @s switch.temp.points 10
execute if score #color switch.data matches 15 run scoreboard players operation @s switch.temp.points /= #2 switch.data
execute if score #color switch.data matches 0..3 run tellraw @s {"text":"+1 point","color":"gray"}
execute if score #color switch.data matches 4..5 run tellraw @s {"text":"+2 points","color":"aqua"}
execute if score #color switch.data matches 6..7 run tellraw @s {"text":"+3 points","color":"aqua"}
execute if score #color switch.data matches 8..9 run tellraw @s {"text":"+4 points","color":"yellow"}
execute if score #color switch.data matches 10..11 run tellraw @s {"text":"+6 points","color":"yellow"}
execute if score #color switch.data matches 12..13 run tellraw @s {"text":"+8 points","color":"orange"}
execute if score #color switch.data matches 14 run tellraw @s {"text":"+10 points","color":"red"}
execute if score #color switch.data matches 15 run tellraw @s {"text":"-50% points","color":"dark_gray"}
execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2

