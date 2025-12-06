
# distribution des obsidiennes

# Get player count
execute store result score #count switch.data if entity @a[tag=!detached,gamemode=!spectator]

# Summon lootboxes depending on the player count
summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:block_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:crying_obsidian"}}]}
execute if score #count switch.data matches 5.. run summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:block_display",Tags:["switch.task_obsidian"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:crying_obsidian"}}]}
execute if score #count switch.data matches 15.. run summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:block_display",Tags:["switch.task_obsidian"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:crying_obsidian"}}]}

# Spreadplayers
execute as @e[type=chicken,tag=switch.new] run function switch:maps/spread_one_player


# Téléporte le bloc en hauteur pour qu'il chute plus longtemps
execute as @e[type=chicken,tag=switch.new] at @s positioned over world_surface run tp @s ~ ~-2 ~
tag @e[type=chicken,tag=switch.new] remove switch.new


# Tellraw & playsound
function switch:translations/modes_spectres_game_task_obsidian
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

