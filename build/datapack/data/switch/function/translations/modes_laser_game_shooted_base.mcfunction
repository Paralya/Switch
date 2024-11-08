
#> switch:translations/modes_laser_game_shooted_base
#
# @within	switch:modes/laser_game/shooted_base
#

# French
execute if score #color switch.data matches 0 run tellraw @a[scores={switch.lang=0,switch.alive=11}] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute if score #color switch.data matches 1 run tellraw @a[scores={switch.lang=0,switch.alive=10}] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Bouclier résistant à 5 tirs [+20 points]","color":"green"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient une Mitraillette pendant 15 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Darkness à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Glowing à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Changement de couleur visuellement pendant 30 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=0},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Speed à votre équipe pendant 15 secondes [+20 points]","color":"green"}]

# English
execute if score #color switch.data matches 0 run tellraw @a[scores={switch.lang=1,switch.alive=11}] [{"selector":"@s"},{"text":" fired on the bonus base!","color":"green"}]
execute if score #color switch.data matches 1 run tellraw @a[scores={switch.lang=1,switch.alive=10}] [{"selector":"@s"},{"text":" fired on the bonus base!","color":"green"}]
execute if score #random switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gets 5-shot resistant Shield [+20 points]","color":"green"}]
execute if score #random switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and got a Machine Gun for 15 seconds [+20 points]","color":"green"}]
execute if score #random switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gave a Darkness Effect to the enemy team [+20 points]","color":"green"}]
execute if score #random switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gave a Glowing Effect to the enemy team [+20 points]","color":"green"}]
execute if score #random switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gets a Visual Color Change for 30 seconds [+20 points]","color":"green"}]
execute if score #random switch.data matches 5 run tellraw @a[scores={switch.lang=1},tag=!detached,tag=switch.message] [{"selector":"@s"},{"text":" fired on the bonus base and gives Speed Effect to your team for 15 seconds [+20 points]","color":"green"}]

