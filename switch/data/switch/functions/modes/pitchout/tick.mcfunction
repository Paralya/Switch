
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #pitchout_ticks switch.data 1

execute as @e[type=item,tag=!switch.checked] run function switch:modes/pitchout/no_drop

execute as @a[tag=switch.first_life,predicate=switch:in_water,sort=random] run function switch:modes/pitchout/death

scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=switch.first_life]
execute if score #remaining_players switch.data matches 1 run function switch:modes/pitchout/process_end
execute if score #pitchout_seconds switch.data matches 300.. run function switch:modes/pitchout/process_end
