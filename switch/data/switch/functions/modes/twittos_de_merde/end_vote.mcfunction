
#réinitialisation de certaines variables
scoreboard players reset #phase_de_vote switch.data
scoreboard players set #twittos_de_merde_seconds_mdj switch.data 0
scoreboard players set #phase_de_vote switch.data 0
function switch:modes/twittos_de_merde/give_items
scoreboard players set #remaining_time_mdj switch.data 45
scoreboard players enable @a[tag=!detached] switch.temp.rating_vote

#reset compteur switch.temp.numero_vote mes couilles
scoreboard players set #cb_personne switch.data 0
scoreboard players set @a[tag=!detached] switch.temp.numero_vote 0

#y'a plus de bagarre donc on remet les effets + team no_pvp
team join switch.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
effect give @a[tag=!detached] weakness infinite 2 true
effect give @a[tag=!detached] night_vision infinite 255 true

#thème aléatoire a la fin du round
execute unless entity @a[scores={switch.temp.passage_vote=0..1}] run function switch:modes/twittos_de_merde/theme_aleatoire
scoreboard players set @a[tag=!detached] switch.temp.rating_vote 0

#détermine quels sont les derniers

#scoreboard players set #max switch.data 0
#scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.rank
#execute as @a[tag=!detached] if score @s switch.temp.rank = #max switch.data run tag @s add switch.looser

scoreboard objectives remove switch.temp.rank
scoreboard players set #twittos_battle_state switch.data 1