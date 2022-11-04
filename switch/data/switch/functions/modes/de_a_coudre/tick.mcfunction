
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #de_a_coudre_ticks switch.data 1

execute as @e[type=item,tag=!switch.checked] run function switch:modes/de_a_coudre/no_drop
execute as @a[gamemode=survival,predicate=switch:in_lava,sort=random] run function switch:modes/de_a_coudre/death

##Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[gamemode=survival]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/de_a_coudre/process_end
execute if score #de_a_coudre_seconds switch.data matches 300.. run function switch:modes/de_a_coudre/process_end

