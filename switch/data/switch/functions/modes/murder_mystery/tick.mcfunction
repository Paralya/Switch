
## Fonction executée tous les ticks lorsque le mode de jeu est activé

# Timer
scoreboard players add #murder_mystery_ticks switch.data 1

# Détection des morts
execute as @a[tag=!switch.detached,x=0,y=69,z=0,distance=..10] run function switch:modes/murder_mystery/death

# Give a bow with an arrow for players that have at least 10 golds
execute as @a[tag=!switch.detached,gamemode=!spectator,nbt={Inventory:[{id:"minecraft:gold_ingot"}]}] run function switch:modes/murder_mystery/tick_ingot

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/murder_mystery/no_drop
execute at @e[type=item,nbt={Age:500s}] run particle sculk_charge_pop ~ ~ ~ .2 .2 .2 0.01 10
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=item,nbt={Age:500s}]

# Detective bow
execute as @e[type=item_display,tag=switch.detective_bow] at @s positioned ~ ~-1 ~ run function switch:modes/murder_mystery/tick_bow

# Allow the murderer to throw his knife
scoreboard players add #rotation switch.data 30
scoreboard players remove #murderer_reload switch.data 1
execute if score #murderer_reload switch.data matches 188 as @a[tag=!switch.detached,scores={switch.temp.role=3}] at @s run function switch:modes/murder_mystery/throw/throw
execute if score #murderer_reload switch.data matches 1..170 as @a[tag=!switch.detached,scores={switch.temp.role=3,switch.right_click=1..}] at @s run function switch:modes/murder_mystery/throw/error
execute if score #murderer_reload switch.data matches ..0 as @a[tag=!switch.detached,scores={switch.temp.role=3,switch.right_click=1..},nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run function switch:modes/murder_mystery/throw/init
execute as @e[type=armor_stand,tag=switch.thrown] at @s run function switch:modes/murder_mystery/throw/loop

# Fun
#execute as @a[tag=!switch.detached,scores={switch.right_click=1..}] at @s run function switch:modes/murder_mystery/throw/throw

## Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. run function switch:modes/murder_mystery/detect_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/murder_mystery/process_end

