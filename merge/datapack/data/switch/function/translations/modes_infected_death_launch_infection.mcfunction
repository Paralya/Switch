
# French
execute unless score @s switch.temp.infection matches 2.. if entity @p[tag=switch.temp] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"selector":"@s"},{"text":" vient de se faire infecter par ","color":"green"},{"selector":"@p[tag=switch.temp]"},{"text":" !","color":"green"}]

# English
execute unless score @s switch.temp.infection matches 2.. if entity @p[tag=switch.temp] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"selector":"@s"},{"text":" has just been infected by ","color":"green"},{"selector":"@p[tag=switch.temp]"},{"text":"!","color":"green"}]

