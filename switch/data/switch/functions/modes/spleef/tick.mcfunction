
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #spleef_ticks switch.data 1

## No drop system / Death system / Border reduction system
execute as @e[type=item,tag=!switch.checked] run function switch:modes/spleef/no_drop
execute as @a[gamemode=survival,predicate=switch:in_lava,sort=random] run function switch:modes/spleef/death
execute if score #spleef_seconds switch.data matches 60.. as @e[type=marker,tag=switch.spleef_border] at @s run function switch:modes/spleef/border_reduction/progress

## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=survival]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/spleef/process_end
execute if score #spleef_seconds switch.data matches 300.. run function switch:modes/spleef/process_end

