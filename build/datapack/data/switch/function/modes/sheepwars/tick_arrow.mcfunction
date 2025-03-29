
#> switch:modes/sheepwars/tick_arrow
#
# @within	switch:modes/sheepwars/tick
#

# If the arrow is in a block, kill it 1 tick after
execute if entity @s[tag=switch.to_kill] run kill @s
execute if data entity @s inBlockState run tag @s add switch.to_kill

# Damage depending on the upgrade
data modify entity @s damage set value 1.0d
scoreboard players set #level switch.data 0
execute on origin if score @s switch.sheepwars.chosen_kit matches 2 run scoreboard players operation #level switch.data = @s switch.sheepwars.kit_bow
execute on origin if score @s switch.sheepwars.chosen_kit matches 2 run scoreboard players add #level switch.data 1
execute if score #level switch.data matches 1 run data modify entity @s damage set value 1.1d
execute if score #level switch.data matches 2 run data modify entity @s damage set value 1.2d
execute if score #level switch.data matches 3 run data modify entity @s damage set value 1.3d
execute if score #level switch.data matches 4 run data modify entity @s damage set value 1.4d
execute if score #level switch.data matches 5 run data modify entity @s damage set value 1.5d

# If fire arrows are enabled, set the arrow on fire
scoreboard players set #success switch.data 0
execute if score #blue_fire_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.blue] run scoreboard players set #success switch.data 1
execute if score #red_fire_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.red] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 run data modify entity @s Fire set value 1000s

# If explosive arrows are enabled, explode the arrow when "inGround" is true
scoreboard players set #success switch.data 0
execute if score #blue_explosive_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.blue] run scoreboard players set #success switch.data 1
execute if score #red_explosive_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.red] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 if entity @s[nbt={inBlockState:{}}] at @s run function realistic_explosion:explode
execute if score #success switch.data matches 1 if entity @s[nbt={inBlockState:{}}] run kill @s

