
# Place random
execute store result score #random switch.data run random value 0..3
execute if score #random switch.data matches 0 run setblock 14000 100 13925 obsidian
execute if score #random switch.data matches 1 run setblock 14000 100 14000 obsidian
execute if score #random switch.data matches 2 run setblock 14000 100 14075 obsidian
execute if score #random switch.data matches 3 run setblock 14000 86 14000 obsidian

tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Une obsidienne bonus est apparu !"}]
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
execute as @a[tag=!detached] at @s run playsound entity.villager.hurt ambient @s
scoreboard players set #bonus_reload switch.data 0

