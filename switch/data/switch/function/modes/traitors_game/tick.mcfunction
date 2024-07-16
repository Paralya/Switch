
scoreboard players add #traitors_game_ticks switch.data 1

tp @e[type=vex] 0 -10000 0
kill @e[type=item,nbt={Item:{id:"minecraft:chest_minecart"}}]
execute as @e[type=chest_minecart] unless data entity @s Items[0] unless data entity @s LootTable run kill @s
execute as @a[tag=!detached,tag=switch.to_tp] run function switch:modes/traitors_game/teleport_to_death
execute as @a[tag=!detached,tag=switch.ninja_death] run function switch:modes/traitors_game/death/to_tp

# Glow particles pour le détective, particules rouges pour traitres
execute at @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1}] run particle glow ~ ~ ~ 0.2 0 0.2 0 5
execute at @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6}] run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[scores={switch.temp.role=5..6}]

execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/traitors_game/death/player
execute if score #traitors_game_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/traitors_game/death/detect
execute if score #traitors_game_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/process

# Voleur
execute if score #sc_floupy switch.data matches 1 run scoreboard players reset @a[scores={switch.temp.kills=-1}] switch.temp.kills
execute if score #sc_floupy switch.data matches 1 run scoreboard players set @a[scores={switch.temp.kills=1..}] switch.temp.kills -1

# Détection de fin de partie
execute if score #traitors_game_seconds switch.data matches 1..1200 run function switch:modes/traitors_game/detect_end
execute if score #traitors_game_seconds switch.data matches 1201.. run function switch:modes/traitors_game/process_end

