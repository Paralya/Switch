
# French
execute if score @s switch.temp.shield matches 1.. run tellraw @s[scores={switch.lang=0}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":" vous a tiré dessus ! Plus que ","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.shield"},"color":"green"},{"text":" points de bouclier.","color":"gray"}]
execute if score @s switch.temp.shield matches 1.. run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.temp] [{"text":"Vous avez tiré sur ","color":"gray"},{"selector":"@s"},{"text":" ayant un bouclier, il lui reste "},{"score":{"name":"@s","objective":"switch.temp.shield"},"color":"green"},{"text":" points de bouclier."}]
execute unless score @s switch.temp.shield matches 1.. run tellraw @s[scores={switch.lang=0}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":" vous a tiré dessus ! Vous êtes désactivé pendant 5 secondes.","color":"gray"}]
execute unless score @s switch.temp.shield matches 1.. run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.temp] [{"text":"Vous avez tué ","color":"gray"},{"selector":"@s"},{"text":" ! [+10 points]"}]

# English
execute if score @s switch.temp.shield matches 1... run tellraw @s[scores={switch.lang=1}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":"shot you! More than ","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.shield"}, "color":"green"},{"text":" shield points.","color":"gray"}]
execute if score @s switch.temp.shield matches 1... run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.temp] [{"text":"You have shot ","color":"gray"},{"selector":"@s"},{"text":" having a shield, he has "},{"score":{"name":"@s","objective":"switch.temp.shield"}, "color":"green"},{"text":" shield points."}]
execute unless score @s switch.temp.shield matches 1... run tellraw @s[scores={switch.lang=1}] [{"selector":"@a[tag=!detached,tag=switch.temp]"},{"text":" shot you! You are disabled for 5 seconds.","color":"gray"}]
execute unless score @s switch.temp.shield matches 1... run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.temp] [{"text":"You shot ","color":"gray"},{"selector":"@s"},{"text":"! [+10 points]"}]

