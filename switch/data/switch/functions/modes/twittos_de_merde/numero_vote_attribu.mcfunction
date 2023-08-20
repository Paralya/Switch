#on affecte un numéro a chaque joueur pour le passage de vote et les likes
scoreboard players add #cb_personne switch.data 4

#attribuage attribuation player tu connais
scoreboard players operation @r[scores={passage_vote=0}] numero_vote = #cb_personne switch.data

