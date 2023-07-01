
# Reduce damage
data modify entity @s damage set value 1.5d

# If fire arrows are enabled, set the arrow on fire
scoreboard players set #success switch.data 0
execute if score #blue_fire_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.blue] run scoreboard players set #success switch.data 1
execute if score #red_fire_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.red] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 run data modify entity @s Fire set value 1000s

# If explosive arrows are enabled, explode the arrow when "inGround" is true
scoreboard players set #success switch.data 0
execute if score #blue_explosive_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.blue] run scoreboard players set #success switch.data 1
execute if score #red_explosive_arrows switch.data matches 1.. on origin if entity @s[team=switch.temp.red] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 if entity @s[nbt={inGround:1b}] at @s run function realistic_explosion:explode
execute if score #success switch.data matches 1 if entity @s[nbt={inGround:1b}] run kill @s

