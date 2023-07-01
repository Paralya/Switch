
# Call the signal
scoreboard players set #dx sheepwars.data 25
scoreboard players set #dy sheepwars.data 20
scoreboard players set #dz sheepwars.data 6
execute positioned 100081 145 100051 run function sheepwars:magic_wool/summon

# Message
tellraw @a ["",{"text":"[SheepWars] ","color":"yellow"},{"text":"Une laine magique est apparue !"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

