
#> switch:translations/modes_build_battle_building_time_second
#
# @within	switch:modes/build_battle/building_time/second
#

# French
execute if score #second switch.data matches ..9 run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"text":"0","color":"yellow"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #second switch.data matches 10.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Thème : ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Temps restant : "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Voulez-vous augmenter le temps de construction de 2 minutes ?","color":"green"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Si oui, vous avez 30 secondes pour cliquer [ici]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.temp.theme_vote set 1"}}]
execute if score #remaining_time switch.data matches 120 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"2","color":"yellow"},{"text":" minutes pour terminer votre construction !","color":"red"}]
execute if score #remaining_time switch.data matches 60 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"red"},{"text":"1","color":"yellow"},{"text":" minute pour terminer votre construction !","color":"red"}]
execute if score #remaining_time switch.data matches 10 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"10","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"5","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"4","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"3","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"2","color":"red"},{"text":" secondes pour terminer votre construction !","color":"dark_red"}]
execute if score #remaining_time switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Il vous reste ","color":"dark_red"},{"text":"1","color":"red"},{"text":" seconde pour terminer votre construction !","color":"dark_red"}]

# English
execute if score #second switch.data matches ..9 run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Theme: ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Time remaining: "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"text":"0","color":"yellow"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #second switch.data matches 10.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Theme: ","color":"aqua"},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":", Time remaining: "},{"score":{"name":"#minute","objective":"switch.data"},"color":"yellow"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"yellow"},{"text":"s"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Do you want to increase the building time by 2 minutes?","color":"green"}]
execute if score #remaining_time switch.data matches 90 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" If yes, you have 30 seconds to click [here]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.temp.theme_vote set 1"}}]
execute if score #remaining_time switch.data matches 120 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You have ","color":"red"},{"text":"2","color":"yellow"},{"text":" minutes to complete your build!","color":"red"}]
execute if score #remaining_time switch.data matches 60 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You have","color":"red"},{"text":"1","color":"yellow"},{"text":" minute to finish building!","color":"red"}]
execute if score #remaining_time switch.data matches 10 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"10","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"5","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"4","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"3","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"2","color":"red"},{"text":" seconds to finish building!","color":"dark_red"}]
execute if score #remaining_time switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've got ","color":"dark_red"},{"text":"1","color":"red"},{"text":" second to finish building!","color":"dark_red"}]

