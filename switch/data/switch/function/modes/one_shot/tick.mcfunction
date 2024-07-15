
scoreboard players add #one_shot_ticks switch.data 1

# Prevent drop
execute as @e[type=item,tag=!switch.checked] run function switch:modes/one_shot/no_drop

# Custom Saturation & Mort
execute as @a[tag=!detached] unless data entity @s {foodLevel:20} run effect give @s saturation 1 0 true
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/one_shot/death

# Cooldown invincibilité
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
item replace entity @a[scores={switch.temp.cooldown=0}] armor.chest with air


## Détection de fin de partie
execute if score #winner switch.data matches 0 if entity @a[tag=!detached,scores={switch.temp.kills=30..}] run scoreboard players set #winner switch.data 1
execute if score #winner switch.data matches 1 run function switch:modes/one_shot/process_end
execute if score #one_shot_seconds switch.data matches 600.. run function switch:modes/one_shot/process_end

