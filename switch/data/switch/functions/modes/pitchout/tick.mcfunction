
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #pitchout_ticks switch.data 1

execute as @e[type=item,tag=!switch.checked] run function switch:modes/pitchout/no_drop

execute as @a[tag=switch.first_life,scores={switch.temp.cooldown=1..},predicate=switch:in_water] if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/teleport_players
execute as @a[tag=switch.first_life,predicate=switch:in_water,sort=random] run function switch:modes/pitchout/death
execute at @a[tag=switch.third_life] run particle dust 0 .75 0 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=switch.second_life,tag=!switch.third_life] run particle dust .75 .75 0 1 ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=switch.first_life,tag=!switch.second_life] run particle dust .75 0 0 1 ~ ~2.4 ~ .1 .1 .1 0 1

scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
item replace entity @a[scores={switch.temp.cooldown=0}] armor.chest with air

scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=switch.first_life]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/pitchout/process_end
execute if score #pitchout_seconds switch.data matches 300.. run function switch:modes/pitchout/process_end

