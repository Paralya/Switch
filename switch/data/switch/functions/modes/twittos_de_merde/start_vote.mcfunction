#lance la phase des votes
#si phase_de_vote==1 la phase de vote est en cours / commence, si phase_de_vote==0, la phase de vote s'arrête / n'est pas en cours.
execute if score #phase_de_vote switch.data matches 0 run tellraw @a {"text":"Levez les mains ! Les tweets arrivent !\n","color":"red"}
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set #timer_phase_de_vote switch.data 10
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set @a[scores={switch.alive=1..}] switch.temp.passage_vote 1
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set #twittos_battle_state switch.data 1
execute if score #phase_de_vote switch.data matches 0 run execute as @a at @s run playsound entity.player.levelup ambient @s
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set #phase_de_vote switch.data 1

# Si switch.temp.passage_vote==1, votre tweet n'est pas encore passé, switch.temp.passage_vote==0, votre tweet passe, switch.temp.passage_vote==-1 votre tweet est passé. switch.temp.passage_vote=-2 vous êtes en pleine bagarre, me demande pas pourquoi je fais comme ça stoupy par pitié
# Toutes les 10 secondes un tweet apparait à l'aide d'une variable (et une possibilité de liker et disliker)
#si timer_phase_de_vote==10 (donc 10 secondes), le timer se réinitialise et on montre un autre tweet
execute if score #timer_phase_de_vote switch.data matches 10.. if entity @a[scores={switch.temp.passage_vote=0..1}] run function switch:modes/twittos_de_merde/calculation_vote
execute if score #timer_phase_de_vote switch.data matches 10.. if entity @a[scores={switch.temp.passage_vote=0..1}] run function switch:modes/twittos_de_merde/tweet_affichage
execute unless entity @a[scores={switch.temp.passage_vote=0..1}] run function switch:modes/twittos_de_merde/get_rank
execute if score #twittos_battle_state switch.data matches -1 run function switch:modes/twittos_de_merde/end_vote
#les voix deviennent fortes depuis que j'essaie d'appréhender comment faire le système de vote et ça ne fait que commencer