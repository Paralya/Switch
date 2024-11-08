
#> switch:modes/murder_mystery/tick_bow
#
# @within	switch:modes/murder_mystery/tick
#

# Rotate the bow
execute store result score #rotation switch.data run data get entity @s Rotation[0]
scoreboard players add #rotation switch.data 5
execute if score #rotation switch.data matches 360.. run scoreboard players remove #rotation switch.data 360
execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation switch.data

# Give bow to innocent player close
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] if data entity @s Inventory[{id:"minecraft:bow"}] run clear @s bow
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] run give @s bow[unbreakable={},custom_name='{"text":"Arc du Détective","color":"green","italic":false}',lore=['{"text":"5 secondes pour recharger","color":"gray","italic":false}'],custom_data={switch:{detective_bow:true}}]
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] unless data entity @s Inventory[{id:"minecraft:arrow"}] run give @s arrow 1
function switch:translations/modes_murder_mystery_tick_bow
execute as @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if entity @p[gamemode=!spectator,scores={switch.temp.role=1..2},distance=..1] run kill @s

