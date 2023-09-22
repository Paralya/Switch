
# Playsound & Spectator
execute as @a at @s run playsound entity.player.hurt ambient @s
gamemode spectator @s

# Drop bow if detective
execute if score @s switch.temp.role matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,switch:{detective_bow:1b},display:{Name:'{"text":"Arc du Détective","color":"green","italic":false}'}}},PickupDelay:0s,NoGravity:1b,Glowing:1b}

# Clear player
clear @s

# Summon zombie
summon zombie ~ ~ ~ {NoAI:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:leather_helmet",Count:1b},{},{},{}]}

