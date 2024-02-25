
scoreboard players add #traitors_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #traitors_game_seconds switch.data matches 0.. run function switch:modes/traitors_game/xp_bar
execute if score #traitors_game_seconds switch.data matches 0 run function switch:modes/traitors_game/roles/announcement
execute if score #traitors_game_seconds switch.data matches 5 if score #has_scenarios switch.data matches 1 run function switch:modes/traitors_game/announce_scenarios
execute if score #traitors_game_seconds switch.data matches 90 run tellraw @a[scores={switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]
execute if score #traitors_game_seconds switch.data matches 180 run tellraw @a[scores={switch.temp.role=1}] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Voici l'identité d'un traitre : "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6},sort=random,limit=1]","color":"green"},{"text":" !"}]

# Lootboxes summon
execute if score #traitors_game_seconds switch.data matches 30 run function switch:modes/traitors_game/summon_lootboxes
execute if score #traitors_game_seconds switch.data matches 90 run function switch:modes/traitors_game/summon_lootboxes
execute if score #traitors_game_seconds switch.data matches 150 run function switch:modes/traitors_game/summon_lootboxes

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true
execute as @e[type=chest_minecart] if data entity @s Items[0] run data modify entity @s Glowing set value 0b
execute as @e[type=chest_minecart] run data modify entity @s Glowing set value 1b

# Innocent solitaire
execute if score #sc_solitaire switch.data matches 1 if score #traitors_game_seconds switch.data matches 90 run function switch:modes/traitors_game/roles/choose_solitaire

title @a[tag=!detached,gamemode=!spectator] actionbar {"text":"Attention : PVP 1.8","color":"dark_aqua"}

