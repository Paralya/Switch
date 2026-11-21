
#> switch:modes/mlg_a_coudre/translations/done
#
# @executed	at @s
#
# @within	switch:modes/mlg_a_coudre/done
#

# French
execute if score #success switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"#6B788F"},{"text":" valide son saut."}]

# English
execute if score #success switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"#6B788F"},{"text":" validates a jump."}]

