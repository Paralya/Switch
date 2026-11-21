
#> switch:modes/murder_mystery/translations/second
#
# @within	switch:modes/murder_mystery/second
#

# French
execute if score #murder_mystery_seconds switch.data matches 0 if score #nb_murderers switch.data matches 1 run tellraw @a[scores={switch.lang=0}] [{"text":"Les rôles ont été distribués, il y a ","color":"#FFE60A"},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#FF3347"},{"text":" meutrier et "},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#2EFF8B"},{"text":" détective !"}]
execute if score #murder_mystery_seconds switch.data matches 0 if score #nb_murderers switch.data matches 2.. run tellraw @a[scores={switch.lang=0}] [{"text":"Les rôles ont été distribués, il y a ","color":"#FFE60A"},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#FF3347"},{"text":" meutriers et "},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#2EFF8B"},{"text":" détectives !"}]
execute if score #remaining_time switch.data matches 0.. if score #murder_mystery_seconds switch.data matches 0.. run title @a[scores={switch.lang=0},tag=!detached] actionbar [{"text":"Temps restant : ","color":"#00E5FF"},{"score":{"name":"#minute","objective":"switch.data"},"color":"#FFE60A"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"#FFE60A"},{"text":"s"}]

# English
execute if score #murder_mystery_seconds switch.data matches 0 if score #nb_murderers switch.data matches 1 run tellraw @a[scores={switch.lang=1}] [{"text":"The roles have been assigned, there is ","color":"#FFE60A"},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#FF3347"},{"text":" murderer and "},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#2EFF8B"},{"text":" detective!"}]
execute if score #murder_mystery_seconds switch.data matches 0 if score #nb_murderers switch.data matches 2.. run tellraw @a[scores={switch.lang=1}] [{"text":"The roles have been assigned, there are ","color":"#FFE60A"},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#FF3347"},{"text":" murderers and "},{"score":{"name":"#nb_murderers","objective":"switch.data"},"color":"#2EFF8B"},{"text":" detectives!"}]
execute if score #remaining_time switch.data matches 0.. if score #murder_mystery_seconds switch.data matches 0.. run title @a[scores={switch.lang=1},tag=!detached] actionbar [{"text":"Time remaining: ","color":"#00E5FF"},{"score":{"name":"#minute","objective":"switch.data"},"color":"#FFE60A"},{"text":"m"},{"score":{"name":"#second","objective":"switch.data"},"color":"#FFE60A"},{"text":"s"}]

