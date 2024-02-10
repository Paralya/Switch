
# Check if the ball is really lost
execute as @e[tag=golf_ball.display] at @s run function golf_ball:ball/ride_vehicle_macro with entity @s item.tag.SkullOwner
scoreboard players set #success switch.data 0
execute on vehicle run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 run return 1

# Finished
scoreboard players set #finished switch.data 0
execute positioned over world_surface if block ~ ~-1 ~ barrier if entity @s[distance=..5] run scoreboard players set #finished switch.data 1
execute if score #finished switch.data matches 1 run tellraw @a[tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de terminer en "},{"score":{"name":"@s","objective":"golf_ball.shots"},"color":"dark_green"},{"text":" coups et "},{"score":{"name":"#minigolf_seconds","objective":"switch.data"},"color":"dark_green"},{"text":" secondes !"}]
execute if score #finished switch.data matches 1 run scoreboard players operation @s switch.alive = #minigolf_seconds switch.data
execute unless score #test_mode switch.data matches 1 if score #finished switch.data matches 1 if score @s golf_ball.shots matches ..5 run advancement grant @s only switch:visible/48

# Gave up
execute if score #finished switch.data matches 0 run tellraw @a[tag=!detached] [{"selector":"@s","color":"red"},{"text":" a abandonné !"}]
execute if score #finished switch.data matches 0 run scoreboard players reset @s golf_ball.shots
execute if score #finished switch.data matches 0 run scoreboard players reset @s switch.alive

# Spec
gamemode spectator @s

