
scoreboard players add #coin_chaser_ticks switch.data 1

## Global tick
# Dead players
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/coin_chaser/respawn

# Teleport stucked players
execute as @a[tag=!detached,scores={switch.right_click=1..}] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @a[tag=!detached,scores={switch.right_click=1..}] at @s if block ~ ~-1 ~ barrier run tp @s ~ ~-3 ~

# Prevent drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/coin_chaser/no_drop

# Check number of gold
execute as @a[tag=!detached,gamemode=!spectator] at @s store result score @s switch.temp.points run clear @s gold_ingot 0


## Fin de partie
execute if score #remaining_time switch.data matches ..0 run function switch:modes/coin_chaser/process_end

