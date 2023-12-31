

gamemode spectator @s
execute store result storage switch:rtb temp float 0.05 run scoreboard players get @s switch.rtb.time
tellraw @s [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Parfait ! en ","color":"green"},{"nbt":"temp","storage":"switch:rtb","color":"green"},{"text":" seconde(s)","color":"green"}]

execute at @s run playsound minecraft:block.note_block.harp ambient @s ~ ~ ~ 1 2