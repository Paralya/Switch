
## Death system
scoreboard players add #thunder_spear_ticks switch.data 1
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/thunder_spear/give_and_teleport

# Summon tnt to arrows on ground and remove them & Modify arrow damage & Kill all items
execute as @e[type=arrow,nbt={inBlockState:{}}] at @s run function switch:modes/thunder_spear/explode_arrow
execute as @e[type=arrow] run data modify entity @s damage set value 100.0d
kill @e[type=item]

# Auto reload system
item replace entity @a[tag=!detached] inventory.0 with arrow 1
scoreboard players add @a[tag=!detached] switch.temp.reload 1
execute as @a[scores={switch.temp.reload=40..}] run item replace entity @s hotbar.0 with crossbow[charged_projectiles=[{id:"minecraft:arrow"}]]
scoreboard players reset @a[scores={switch.temp.reload=40..}] switch.temp.reload

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[scores={switch.temp.kills=10..}] only switch:visible/67

## End game
execute if score #remaining_time switch.data matches ..0 run function switch:modes/thunder_spear/process_end

