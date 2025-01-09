
scoreboard players remove #rounds switch.data 1
scoreboard players set #next switch.data 0
scoreboard players set #position switch.data 0
scoreboard players operation #current_round switch.data = #max_rounds switch.data
scoreboard players operation #current_round switch.data -= #rounds switch.data
scoreboard players add #current_round switch.data 1

execute unless score #rounds switch.data matches 0 as @a[tag=!detached,sort=random] run function switch:modes/de_a_coudre/define_order
scoreboard players operation #max switch.data = #position switch.data
function switch:translations/modes_de_a_coudre_new_round
execute unless score #rounds switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.ender_dragon.growl ambient @s

