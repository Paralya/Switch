
#> switch:translations/modes_de_a_coudre_new_round
#
# @within	switch:modes/de_a_coudre/new_round
#

# French
execute unless score #rounds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Démarrage d'un nouveau round ! [","color":"yellow"},{"score":{"name":"#current_round","objective":"switch.data"},"color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

# English
execute unless score #rounds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Starting a new round! [","color":"yellow"},{"score":{"name":"#current_round","objective":"switch.data"},"color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

