
# distribution des obsidiennes

# Get player count
execute store result score #count switch.data if entity @a[tag=!detached,gamemode=!spectator]

# Summon lootboxes depending on the player count
summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crying_obsidian"},Glowing:1b,Time:20}]}
execute if score #count switch.data matches 5.. run summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crying_obsidian"},Glowing:1b,Time:20}]}
execute if score #count switch.data matches 15.. run summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crying_obsidian"},Glowing:1b,Time:20}]}


# Spreadplayers
execute as @e[type=chicken,tag=switch.new] run function switch:maps/spread_one_player


# Téléporte le bloc en hauteur pour qu'il chute plus longtemps
execute as @e[type=chicken,tag=switch.new] at @s positioned over world_surface run tp @s ~ ~-2 ~
tag @e[type=chicken,tag=switch.new] remove switch.new


# Tellraw & playsound
tellraw @a[tag=!detached] ["",{"text":"---------------","color":"#DEE2E5"},{"text":"\n"},{"text":"Tasks Game","bold":true,"color":"green"},{"text":" \u2022","bold":true,"color":"gray"},{"text":" Des obsidiennes sont apparues ! Les visibles auront des bonus en les cassant !","color":"white"},{"text":"\n"},{"text":"---------------","color":"#DEE2E5"}]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

