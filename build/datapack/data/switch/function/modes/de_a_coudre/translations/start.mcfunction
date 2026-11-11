
#> switch:modes/de_a_coudre/translations/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/de_a_coudre/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Démarrage d'un nouveau round ! [","color":"yellow"},{"text":"1","color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Starting a new round! [","color":"yellow"},{"text":"1","color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

