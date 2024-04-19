
scoreboard players add #fireblast_ticks switch.data 1

# Death system
execute as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=0,dy=105] run function switch:modes/fireblast/death
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/fireblast/death

# Fireball
execute as @a[tag=!detached,gamemode=adventure,scores={switch.right_click=1..},nbt={SelectedItem:{tag:{}}}] if score @s switch.temp.cooldown matches 1.. at @s run function switch:modes/fireblast/fireball/no_cooldown
execute as @a[tag=!detached,gamemode=adventure,scores={switch.right_click=1..},nbt={SelectedItem:{tag:{}}}] unless score @s switch.temp.cooldown matches 1.. at @s run function switch:modes/fireblast/fireball/right_click
execute as @e[type=armor_stand,tag=switch.fireball,predicate=!switch:has_vehicle] at @s run function switch:modes/fireblast/explode_tnt
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
execute as @a[tag=!detached,gamemode=adventure] run function switch:modes/fireblast/xp_bar


## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=adventure]
execute if score #remaining_players switch.data matches ..0 run function switch:modes/fireblast/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/fireblast/process_end

