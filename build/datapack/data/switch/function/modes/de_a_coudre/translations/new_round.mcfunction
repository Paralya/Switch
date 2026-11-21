
#> switch:modes/de_a_coudre/translations/new_round
#
# @within	switch:modes/de_a_coudre/new_round
#

# French
execute unless score #rounds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Démarrage d'un nouveau round ! [","color":"#FFE60A"},{"score":{"name":"#current_round","objective":"switch.data"},"color":"#FFA600"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"#FFA600"},{"text":"]"}]

# English
execute unless score #rounds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Starting a new round! [","color":"#FFE60A"},{"score":{"name":"#current_round","objective":"switch.data"},"color":"#FFA600"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"#FFA600"},{"text":"]"}]

