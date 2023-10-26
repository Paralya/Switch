
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #border_run_ticks switch.data 1

## Death system
execute as @a[x=0,y=69,z=0,distance=..10] run function switch:modes/border_run/death

# Glowing
execute as @a[gamemode=survival] at @s unless entity @a[distance=0.001..25,gamemode=survival] run effect give @s glowing 2 255 true
execute as @a[gamemode=survival] at @s if entity @a[distance=0.001..25,gamemode=survival] run effect clear @s glowing

## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=survival]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/border_run/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/border_run/process_end

