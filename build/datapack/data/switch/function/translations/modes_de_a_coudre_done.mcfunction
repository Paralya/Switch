
#> switch:translations/modes_de_a_coudre_done
#
# @within	switch:modes/de_a_coudre/done
#

# French
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" point !"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" points !"}]

# English
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" validates their jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" point!"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" validates their jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"aqua"},{"text":" points!"}]

