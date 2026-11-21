
#> switch:modes/de_a_coudre/translations/done
#
# @executed	at @s
#
# @within	switch:modes/de_a_coudre/done
#

# French
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"#2EFF8B"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"#00E5FF"},{"text":" point !"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"#2EFF8B"},{"text":" valide son saut et fait "},{"score":{"name":"#points","objective":"switch.data"},"color":"#00E5FF"},{"text":" points !"}]

# English
execute if score #points switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"#2EFF8B"},{"text":" validates their jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"#00E5FF"},{"text":" point!"}]
execute if score #points switch.data matches 2.. run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"#2EFF8B"},{"text":" validates their jump and makes "},{"score":{"name":"#points","objective":"switch.data"},"color":"#00E5FF"},{"text":" points!"}]

