#lance la phase des votes
#si phase_de_vote==1 la phase de vote est en cours / commence, si phase_de_vote==0, la phase de vote s'arrête / n'est pas en cours.
execute if score #phase_de_vote switch.data matches 0 run tellraw @a {"text":"Levez les mains ! Les tweets arrivent !\n","color":"red"}
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set @a passage_vote 1
execute if score #phase_de_vote switch.data matches 0 run execute as @a at @s run playsound entity.player.levelup ambient @s
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set #phase_de_vote switch.data 1

# Si passage_vote==1, votre tweet n'est pas encore passé, passage_vote==0, votre tweet passe, passage_vote==-1 votre tweet est passé. me demande pas pourquoi je fais comme ça stoupy par pitié
# Toutes les 10 secondes un tweet apparait à l'aide d'une variable (et une possibilité de liker et disliker)
#si timer_phase_de_vote==10 (donc 10 secondes), le timer se réinitialise et on montre un autre tweet
execute if score #timer_phase_de_vote switch.data matches 10.. if entity @a[scores={passage_vote=0..1}] run function switch:modes/twittos_de_merde/tweet_affichage
execute unless entity @a[scores={passage_vote=0..1}] run scoreboard players reset #phase_de_vote switch.data
execute unless entity @a[scores={passage_vote=0..1}] run scoreboard players set #twittos_de_merde_seconds_mdj switch.data 0
execute unless entity @a[scores={passage_vote=0..1}] run scoreboard players set #phase_de_vote switch.data 0
execute unless entity @a[scores={passage_vote=0..1}] run function switch:modes/twittos_de_merde/give_items
execute unless entity @a[scores={passage_vote=0..1}] run scoreboard players set #remaining_time_mdj switch.data 45

#reset compteur numero_vote mes couilles
execute unless entity @a[scores={passage_vote=0..1}] run scoreboard players set #cb_personne switch.data 0
execute unless entity @a[scores={passage_vote=0..1}] run scoreboard players set @a numero_vote 0

#thème aléatoire a la fin du round
execute unless entity @a[scores={passage_vote=0..1}] run function switch:modes/twittos_de_merde/theme_aleatoire

#les voix deviennent fortes depuis que j'essaie d'appréhender comment faire le système de vote et ça ne fait que commencer