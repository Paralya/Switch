
#> switch:modes/sheepwars/magic_wool/slot
#
# @within			#sheepwars:signals/magic_wool_shot
# @executed			as the arrow owner & at the colored wool marker
#
# @description		Depending on the team of the shooter, apply a random bonus and print a message
#

# Get random value
execute store result score #random switch.data run random value 0..7

# Random for blue team
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.blue] run effect give @a[tag=!detached,team=switch.temp.blue] resistance 20 0 true
execute if score #random switch.data matches 1 if entity @s[team=switch.temp.blue] run effect give @a[tag=!detached,team=switch.temp.blue] regeneration 20 0 true
execute if score #random switch.data matches 2 if entity @s[team=switch.temp.blue] run effect give @a[tag=!detached,team=switch.temp.red] poison 5 3 true
execute if score #random switch.data matches 3 if entity @s[team=switch.temp.blue] run effect give @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] nausea 10 0 true
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.blue] as @a[tag=!detached,team=switch.temp.blue] run function sheepwars:utils/random_give
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.blue] run scoreboard players set #blue_fire_arrows switch.data 10
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.blue] run scoreboard players set #blue_explosive_arrows switch.data 5
execute if score #random switch.data matches 7 if entity @s[team=switch.temp.blue] run effect give @a[tag=!detached,team=switch.temp.blue] slow_falling 20 0 true

# Random for red team
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.red] run effect give @a[tag=!detached,team=switch.temp.red] resistance 20 0 true
execute if score #random switch.data matches 1 if entity @s[team=switch.temp.red] run effect give @a[tag=!detached,team=switch.temp.red] regeneration 20 0 true
execute if score #random switch.data matches 2 if entity @s[team=switch.temp.red] run effect give @a[tag=!detached,team=switch.temp.blue] poison 5 3 true
execute if score #random switch.data matches 3 if entity @s[team=switch.temp.red] run effect give @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] nausea 10 0 true
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.red] as @a[tag=!detached,team=switch.temp.red] run function sheepwars:utils/random_give
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.red] run scoreboard players set #red_fire_arrows switch.data 10
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.red] run scoreboard players set #red_explosive_arrows switch.data 5
execute if score #random switch.data matches 7 if entity @s[team=switch.temp.red] run effect give @a[tag=!detached,team=switch.temp.red] slow_falling 20 0 true

# Print message
tellraw @a[tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s"},{"text":" a activé la laine magique !"}]
execute if score #random switch.data matches 0 run tellraw @a[tag=!detached] {"text":"[20s de résistance pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 1 run tellraw @a[tag=!detached] {"text":"[20s de régénération pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 2 run tellraw @a[tag=!detached] {"text":"[5s de poison pour l'équipe adverse]\n","color":"aqua"}
execute if score #random switch.data matches 3 run tellraw @a[tag=!detached] {"text":"[10s de nausée pour l'équipe adverse]\n","color":"aqua"}
execute if score #random switch.data matches 4 run tellraw @a[tag=!detached] {"text":"[Un drop de mouton pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 5 run tellraw @a[tag=!detached] {"text":"[10s de flèches enflammées pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 6 run tellraw @a[tag=!detached] {"text":"[5s de flèches explosives pour son équipe]\n","color":"aqua"}
execute if score #random switch.data matches 7 run tellraw @a[tag=!detached] {"text":"[20s de slow falling pour son équipe]\n","color":"aqua"}

# Playsound
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

