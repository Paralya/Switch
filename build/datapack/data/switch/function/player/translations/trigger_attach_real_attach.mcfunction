
#> switch:player/translations/trigger_attach_real_attach
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/attach/real_attach
#

# French
execute unless score #nb_attached switch.data >= #min_required switch.data run tellraw @s[scores={switch.lang=0},tag=!detached] [{"text":"\n\n\nPas assez de joueurs sont attachés pour lancer le moteur !","color":"#FF3347"},{"text":"\nConsidérez de vous détacher vers le lobby Switch avec '/detach' ou bien faire venir au minimum ","color":"#AEBBD0"},{"score":{"name":"#min_required","objective":"switch.data"}},{"text":" joueurs.","color":"#AEBBD0"}]

# English
execute unless score #nb_attached switch.data >= #min_required switch.data run tellraw @s[scores={switch.lang=1},tag=!detached] [{"text":"\n\n\nNot enough players are attached to start the engine!","color":"#FF3347"},{"text":"\nConsider detaching to Switch lobby with '/detach' or bring at least ","color":"#AEBBD0"},{"score":{"name":"#min_required","objective":"switch.data"}},{"text":" players.","color":"#AEBBD0"}]

