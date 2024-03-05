
# French
execute unless score #nb_attached switch.data >= #min_required switch.data run tellraw @s[scores={switch.lang=0},tag=!detached] [{"text":"\n\n\nPas assez de joueurs sont attachés pour lancer le moteur !","color":"red"},{"text":"\nConsidérez de vous détacher vers le lobby Switch avec '/detach' ou bien faire venir au minimum ","color":"gray"},{"score":{"name":"#min_required","objective":"switch.data"}},{"text": " joueurs.","color":"gray"}]

