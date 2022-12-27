
#Random
scoreboard players set #modulo_rand switch.data 3
function switch:math/get_random/

#Place
execute if score #random switch.data matches 0 run setblock 14000 100 13925 obsidian
execute if score #random switch.data matches 1 run setblock 14000 100 14000 obsidian
execute if score #random switch.data matches 2 run setblock 14000 100 14075 obsidian

tellraw @a ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Un bloc d'obsidienne est apparu, cassez-le pour obtenir un bonus !"}]
execute as @a at @s run playsound entity.villager.hurt ambient @s
execute as @a at @s run playsound entity.villager.hurt ambient @s
execute as @a at @s run playsound entity.villager.hurt ambient @s

scoreboard players set #bonus_reload switch.data 0
