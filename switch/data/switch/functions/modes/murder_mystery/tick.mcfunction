
## Fonction executée tous les ticks lorsque le mode de jeu est activé

# Timer
scoreboard players add #murder_mystery_ticks switch.data 1

# Détection des morts
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/murder_mystery/death

# Give a bow with an arrow for players that have at least 10 golds
execute as @a[gamemode=!spectator,nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run function switch:modes/murder_mystery/tick_ingot

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/murder_mystery/no_drop
execute at @e[type=item,nbt={Age:500s}] run particle sculk_charge_pop ~ ~ ~ .2 .2 .2 0.01 10
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=item,nbt={Age:500s}]

# Detective bow
execute as @e[type=item_display,tag=switch.detective_bow] at @s positioned ~ ~-1 ~ run function switch:modes/murder_mystery/tick_bow

## Détection de fin de partie
#execute if score #remaining_time switch.data matches 1.. run function switch:modes/murder_mystery/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/murder_mystery/process_end

