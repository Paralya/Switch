
execute if score #color switch.data matches 0..3 run scoreboard players add @s switch.temp.points 1
execute if score #color switch.data matches 4..5 run scoreboard players add @s switch.temp.points 2
execute if score #color switch.data matches 6..7 run scoreboard players add @s switch.temp.points 3
execute if score #color switch.data matches 8..9 run scoreboard players add @s switch.temp.points 4
execute if score #color switch.data matches 10..11 run scoreboard players add @s switch.temp.points 6
execute if score #color switch.data matches 12..13 run scoreboard players add @s switch.temp.points 8
execute if score #color switch.data matches 14 run scoreboard players add @s switch.temp.points 10
execute if score #color switch.data matches 15 run scoreboard players operation @s switch.temp.points /= #2 switch.data
function switch:translations/modes_shoot_da_sheep_reward
execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 2

# Advancement
execute if score #color switch.data matches 15 run scoreboard players add @s switch.temp.black_shot 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.black_shot matches 3.. run advancement grant @s only switch:visible/63

