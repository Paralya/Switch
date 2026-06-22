
#> switch:modes/layers_2_teams/translations/second
#
# @within	switch:modes/layers_2_teams/second
#

# French
execute if score #layers_2_teams_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=0},tag=!detached] {"text":"Les murs d'obsidienne ne sont plus indestructibles !","color":"red"}

# English
function switch:translations/common/basic_actionbar
execute if score #layers_2_teams_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=1},tag=!detached] {"text":"The obsidian walls are no longer indestructible!","color":"red"}

