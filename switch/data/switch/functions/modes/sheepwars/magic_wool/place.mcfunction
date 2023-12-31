
# Call the signal
scoreboard players set #dx sheepwars.data 25
scoreboard players set #dy sheepwars.data 20
scoreboard players set #dz sheepwars.data 6
execute if data storage switch:main {map:"sheepwars_dirigeables"} positioned 100081 150 100051 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"survival_boat"} positioned 79062 138 79051 run function sheepwars:magic_wool/summon

# Message
tellraw @a[tag=!detached] ["",{"text":"[SheepWars] ","color":"yellow"},{"text":"Une laine magique est apparue !"}]

