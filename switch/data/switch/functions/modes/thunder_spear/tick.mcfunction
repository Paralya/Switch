
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #thunder_spear_ticks switch.data 1

## Death system
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/thunder_spear/give_and_teleport

# Give arrows
item replace entity @a inventory.0 with arrow 64

# Summon tnt to arrows on ground and remove them
execute as @e[type=arrow,nbt={inBlockState:{}}] at @s run function switch:modes/thunder_spear/explode_arrow

## Fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/thunder_spear/process_end

