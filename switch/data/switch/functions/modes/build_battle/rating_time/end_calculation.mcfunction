
# Change game state & gamemode spectator
scoreboard players set #build_battle_state switch.data 3
gamemode spectator @a[tag=!switch.detached]

# Get rank for each player
scoreboard objectives add switch.temp.rank dummy
scoreboard players set @a[tag=!switch.detached,scores={switch.temp.id=0..}] switch.temp.rank 1
scoreboard players add @a[tag=!switch.detached,scores={switch.temp.id=0..}] switch.temp.points 0
execute as @a[tag=!switch.detached,scores={switch.temp.id=0..}] at @a[tag=!switch.detached,scores={switch.temp.id=0..}] if score @s switch.temp.points < @p switch.temp.points run scoreboard players add @s switch.temp.rank 1

# Show 1st, 2nd, 3rd, and own rank
scoreboard objectives setdisplay sidebar switch.temp.points
tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Classement par points :"}]
execute as @p[scores={switch.temp.rank=1}] run tellraw @a[tag=!switch.detached] [{"text":"\n1er ","color":"#FFE700"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@p[scores={switch.temp.rank=1}]","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
execute as @p[scores={switch.temp.rank=2}] run tellraw @a[tag=!switch.detached] [{"text":"\n2ème","color":"#C0C0C0"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@p[scores={switch.temp.rank=2}]","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
execute as @p[scores={switch.temp.rank=3}] run tellraw @a[tag=!switch.detached] [{"text":"\n3ème","color":"#CD7F32"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@p[scores={switch.temp.rank=3}]","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
execute as @a[tag=!switch.detached,scores={switch.temp.rank=4..}] run tellraw @s [{"text":"\n","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.rank"}},{"text":"ème"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
tellraw @a[tag=!switch.detached] ""

# Remove rank objective
scoreboard objectives remove switch.temp.rank

