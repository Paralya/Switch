
#Switch to next checkpoint
scoreboard players add @s switch.checkpoint 1
scoreboard players add @s switch.temp.checkpoint 1
scoreboard players operation @s switch.checkpoint %= #modulo switch.data
execute if score @s switch.checkpoint matches 0 run scoreboard players add @s switch.lap 1

#Playsounds & messages
execute if score @s switch.checkpoint matches 0 if score @s switch.lap <= #total_laps switch.data run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"green"},{"text":" passe au tour n°"},{"score":{"name":"@s","objective":"switch.lap"},"color":"aqua"},{"text":"/"},{"score":{"name":"#total_laps","objective":"switch.data"},"color":"aqua"}]
execute if score @s switch.checkpoint matches 0 at @e[limit=2] at @s run playsound item.goat_horn.sound.1 ambient @s ^ ^ ^10 100 1 1
execute unless score @s switch.checkpoint matches 0 if score @s switch.lap <= #total_laps switch.data run tellraw @s ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Checkpoint n°"},{"score":{"name":"@s","objective":"switch.checkpoint"},"color":"aqua"},{"text":"/"},{"score":{"name":"#total_checkpoints","objective":"switch.data"},"color":"aqua"}]
execute unless score @s switch.checkpoint matches 0 at @s run playsound entity.player.levelup ambient @s ^ ^ ^10 100 2 1
execute if score @s switch.checkpoint matches 0 if score @s switch.lap > #total_laps switch.data run function switch:modes/kart_racer/complete

#Checkpoint remember
function switch:modes/kart_racer/checkpoints/remember/

