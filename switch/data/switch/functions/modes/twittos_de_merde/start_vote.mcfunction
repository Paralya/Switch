#lance la phase des votes
#si phase_de_vote==1 la phase de vote est en cours / commence, si phase_de_vote==0, la phase de vote s'arrête / n'est pas en cours.
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set @a passage_vote 1
execute if score #phase_de_vote switch.data matches 0 run scoreboard players set #phase_de_vote switch.data 1

# Si passage_vote==1, votre tweet n'est pas encore passé, passage_vote==0, votre tweet passe, passage_vote==-1 votre tweet est passé. me demande pas pourquoi je fais comme ça stoupy par pitié
# Toutes les 7 secondes un tweet apparait à l'aide d'une variable (et une possibilité de liker et disliker)
#si timer_phase_de_vote==7 (donc 7 secondes), le timer se réinitialise et on montre un autre tweet
execute if score #timer_phase_de_vote switch.data matches 7.. run function switch:modes/twittos_de_merde/tweet_affichage
