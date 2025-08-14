
scoreboard players add #pillars_of_fortune_ticks switch.data 1

## Death system
execute in switch:game run spawnpoint @a[tag=!detached] 0 70 0
function switch:utils/on_death_run_function {function:"switch:modes/pillars_of_fortune/death"}

## Don't move and make pillars
execute if score #pillars_of_fortune_seconds switch.data matches ..0 as @a[tag=!detached,gamemode=survival,predicate=!switch:has_vehicle] at @s run ride @s mount @e[tag=switch.pillars_of_fortune,sort=nearest,limit=1]
execute if score #pillars_of_fortune_seconds switch.data matches ..0 at @e[tag=switch.pillars_of_fortune] run fill ~ 110 ~ ~ ~-2 ~ bedrock
execute if score #pillars_of_fortune_seconds switch.data matches ..0 if data storage switch:main {map:"void_desert"} at @e[tag=switch.pillars_of_fortune] run fill ~ 111 ~ ~ ~-2 ~ red_sand
execute if score #pillars_of_fortune_seconds switch.data matches ..0 at @e[tag=switch.pillars_of_fortune] run setblock ~ ~ ~ light


## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=survival]
execute if score #pillars_of_fortune_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/pillars_of_fortune/process_end
execute if score #remaining_time switch.data matches ..0 run function switch:modes/pillars_of_fortune/process_end

