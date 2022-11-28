
scoreboard players remove #rounds switch.data 1
scoreboard players set #next switch.data 0
scoreboard players set #position switch.data 0
scoreboard players operation #current_round switch.data = #max_rounds switch.data
scoreboard players operation #current_round switch.data -= #rounds switch.data

execute unless score #rounds switch.data matches 0 as @a[sort=random] run function switch:modes/de_a_coudre/define_order
execute unless score #rounds switch.data matches 0 run tellraw @a [{"text":"Démarrage d'un nouveau round ! [","color":"yellow"},{"score":{"name":"#current_round","objective":"switch.data"},"color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]
execute unless score #rounds switch.data matches 0 as @a at @s run playsound entity.ender_dragon.growl ambient @s

