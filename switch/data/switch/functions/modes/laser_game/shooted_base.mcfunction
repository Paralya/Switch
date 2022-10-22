
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[tag=switch.laser_game.red]

execute if score #color switch.data matches 0 run tellraw @a[tag=switch.laser_game.red] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute if score #color switch.data matches 1 run tellraw @a[tag=switch.laser_game.blue] [{"selector":"@s"},{"text":" a tiré sur la base de bonus !","color":"green"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

summon marker 0 0 0 {Tags:["switch.random"]}
scoreboard players set #list_length switch.data 6
execute as @e[tag=switch.random] run function switch:engine/voting_time/get/random

execute if score #color switch.data matches 0 run tag @a[tag=!switch.laser_game.red] add switch.message
execute if score #color switch.data matches 1 run tag @a[tag=!switch.laser_game.blue] add switch.message
execute if score #random switch.data matches 0 run tellraw @a[tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Bouclier résistant à 5 tirs [+20 points]","color":"green"}]
execute if score #random switch.data matches 1 run tellraw @a[tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient une Mitraillette pendant 15 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 2 run tellraw @a[tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Darkness à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 3 run tellraw @a[tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Glowing à la team ennemie [+20 points]","color":"green"}]
execute if score #random switch.data matches 4 run tellraw @a[tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et obtient un Changement de couleur visuellement pendant 30 secondes [+20 points]","color":"green"}]
execute if score #random switch.data matches 5 run tellraw @a[tag=switch.message] [{"selector":"@s"},{"text":" a tiré sur la base de bonus et donne un Effet Speed à votre équipe pendant 15 secondes [+20 points]","color":"green"}]
tag @a remove switch.message

execute if score #random switch.data matches 0 run scoreboard players set @s switch.temp.shield 5
execute if score #random switch.data matches 1 run scoreboard players set #mitraillette switch.data 15
execute if score #random switch.data matches 1 run tag @s add switch.bonus.fast
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[tag=switch.laser_game.red] darkness 5 255 true
execute if score #random switch.data matches 2 if score #color switch.data matches 1 run effect give @a[tag=switch.laser_game.blue] darkness 5 255 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[tag=switch.laser_game.red] glowing 5 255 true
execute if score #random switch.data matches 3 if score #color switch.data matches 1 run effect give @a[tag=switch.laser_game.blue] glowing 5 255 true
execute if score #random switch.data matches 4 run scoreboard players set #change_color switch.data 30
execute if score #random switch.data matches 4 run team join switch.laser_game.blue @s[tag=switch.laser_game.red]
execute if score #random switch.data matches 4 run team join switch.laser_game.red @s[tag=switch.laser_game.blue]
execute if score #random switch.data matches 4 run tag @s add switch.bonus.color
execute if score #random switch.data matches 5 if score #color switch.data matches 0 run effect give @a[tag=switch.laser_game.blue] speed 15 1 true
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[tag=switch.laser_game.red] speed 15 1 true

execute if score #color switch.data matches 0 run scoreboard players add #blue_points switch.data 20
execute if score #color switch.data matches 0 run function switch:modes/laser_game/update_sidebar/blue_points
execute if score #color switch.data matches 1 run scoreboard players add #red_points switch.data 20
execute if score #color switch.data matches 1 run function switch:modes/laser_game/update_sidebar/red_points
scoreboard players add @s switch.temp.individual_points 20

scoreboard players set #base_reload switch.data 15
setblock 516 104 523 dark_oak_trapdoor[powered=true,open=true]

