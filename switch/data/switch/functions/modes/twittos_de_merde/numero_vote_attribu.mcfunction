#on affecte un numéro a chaque joueur pour le passage de vote et les likes
scoreboard players add #cb_personne switch.data 1

#attribuage attribuation player tu connais
scoreboard players operation @r[scores={switch.temp.passage_vote=0}] switch.temp.numero_vote = #cb_personne switch.data

