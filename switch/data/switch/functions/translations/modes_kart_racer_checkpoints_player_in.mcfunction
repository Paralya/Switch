
# French
execute if score @s switch.checkpoint matches 0 if score @s switch.lap <= #total_laps switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"green"},{"text":" passe au tour n°"},{"score":{"name":"@s","objective":"switch.lap"},"color":"aqua"},{"text":"/"},{"score":{"name":"#total_laps","objective":"switch.data"},"color":"aqua"}]
execute unless score @s switch.checkpoint matches 0 if score @s switch.lap <= #total_laps switch.data run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Checkpoint n°"},{"score":{"name":"@s","objective":"switch.checkpoint"},"color":"aqua"},{"text":"/"},{"score":{"name":"#total_checkpoints","objective":"switch.data"},"color":"aqua"}]

