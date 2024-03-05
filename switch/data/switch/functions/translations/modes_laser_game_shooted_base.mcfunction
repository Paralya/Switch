
# French
execute if score #color switch.data matches 0 run tellraw @a[scores={switch.lang=0,switch.alive=11}] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute if score #color switch.data matches 1 run tellraw @a[scores={switch.lang=0,switch.alive=10}] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Bouclier résistant à 5 tirs [+20 points]","color":"green"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient une Mitraillette pendant 15 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Darkness à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Glowing à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Changement de couleur visuellement pendant 30 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Speed à votre équipe pendant 15 secondes [+20 points]","color":"green"}]

