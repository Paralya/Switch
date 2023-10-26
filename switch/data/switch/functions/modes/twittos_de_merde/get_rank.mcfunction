# je choppe le rang quoi
scoreboard objectives add switch.temp.rank dummy
scoreboard players add Stoupy51 switch.temp.points 3
scoreboard players set @a[tag=!detached,scores={switch.temp.id=0..}] switch.temp.rank 1
scoreboard players add @a[tag=!detached,scores={switch.temp.id=0..}] switch.temp.points 0
execute as @a[tag=!detached,scores={switch.temp.id=0..}] at @a[tag=!detached,scores={switch.temp.id=0..}] if score @s switch.temp.points < @p switch.temp.points run scoreboard players add @s switch.temp.rank 1

#a supprimer le ptit truc en bas la 
scoreboard objectives setdisplay sidebar switch.temp.rank

# on choppe un n°1 au hasard pour pas en prendre plusieurs (faut pas qu'être premier soit un handicap en soit) 
scoreboard players set @r[scores={switch.temp.rank=1}] switch.temp.rank -1

#on tag le looser qui a le moins de like (énorme floppeur si on me demande)
scoreboard players set #max switch.data 0
scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.rank
execute as @a[tag=!detached] if score @s switch.temp.rank = #max switch.data run tag @s add switch.looser

#on lance la bagarre
# #twittos_battle_state -> 1 (de base), 2 -> bagarre en cours, -1 -> bagarre finie
execute if score #twittos_battle_state switch.data matches 1 run function switch:modes/twittos_de_merde/bagarre_lesslike
execute if score #twittos_battle_state switch.data matches 1 run function switch:modes/twittos_de_merde/bagarre_toplike
execute if score #twittos_battle_state switch.data matches 1 run scoreboard players set #twittos_battle_state switch.data 2
execute store result score #remaining_players_bagarre switch.data if entity @a[tag=!detached,scores={switch.temp.passage_vote=-2}]
execute if score #remaining_players_bagarre switch.data matches ..1 run scoreboard players set #twittos_battle_state switch.data -1
