
scoreboard players add #pillars_of_fortune_ticks switch.data 1

## Death system
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/pillars_of_fortune/death

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/pillars_of_fortune/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/pillars_of_fortune/process_end

