
scoreboard players set @s switch.temp.change_map 1

scoreboard players set #votes switch.data 0
scoreboard players set #votes_max switch.data 0
execute store result score #votes switch.data if entity @a[scores={switch.temp.change_map=1}]
execute store result score #votes_max switch.data if entity @a[gamemode=!spectator]
scoreboard players operation #votes_max switch.data /= #2 switch.data
scoreboard players add #votes_max switch.data 1

tellraw @a [{"selector":"@s","color":"green"},{"text":" a voté pour changer de map ["},{"score":{"name":"#votes","objective":"switch.data"},"color":"aqua"},{"text":"/"},{"score":{"name":"#votes_max","objective":"switch.data"},"color":"aqua"},{"text":"]"}]

execute if score #votes switch.data >= #votes_max switch.data run function switch:modes/kart_racer/restart_game

