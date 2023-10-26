
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #thunder_spear_ticks switch.data 1

## Death system
execute as @a[tag=!switch.detached,x=0,y=69,z=0,distance=..10] run function switch:modes/thunder_spear/give_and_teleport

# Modify arrow damage
execute as @e[type=arrow] run data modify entity @s damage set value 100.0d

# Kill all items
kill @e[type=item]

# Auto reload system
item replace entity @a[tag=!switch.detached] inventory.0 with arrow 1
scoreboard players add @a[tag=!switch.detached] switch.temp.reload 1
execute as @a[tag=!switch.detached,scores={switch.temp.reload=40..}] run item replace entity @s hotbar.0 with crossbow{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}
scoreboard players reset @a[tag=!switch.detached,scores={switch.temp.reload=40..}] switch.temp.reload

# Summon tnt to arrows on ground and remove them
execute as @e[type=arrow,nbt={inBlockState:{}}] at @s run function switch:modes/thunder_spear/explode_arrow

## Fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/thunder_spear/process_end

