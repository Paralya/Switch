
## Placement de la map et des joueurs
time set 18000
function switch:choose_map_for/infected
execute as @a[tag=!detached] run function switch:modes/infected/death/early_respawn

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie d'Infecté, vous avez 12 secondes de préparation !\n"}]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

gamerule naturalRegeneration false
gamerule keepInventory true
gamerule showDeathMessages false
gamerule doTileDrops false

scoreboard objectives add switch.temp.infection dummy
scoreboard objectives add switch.temp.original_zombie dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard players set #remaining_time switch.data 462
scoreboard players set #infected_secret switch.data 0
scoreboard players set #infected_seconds switch.data -12
scoreboard players set #infected_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

# Timer depending on players count
execute store result score #count switch.data if entity @a[tag=!detached]
scoreboard players operation #count switch.data *= #15 switch.data
scoreboard players operation #remaining_time switch.data += #count switch.data
execute if score #remaining_time switch.data matches 912.. run scoreboard players set #remaining_time switch.data 912

# Choix des rôles + give d'items
team add switch.temp.human
team add switch.temp.zombie
team modify switch.temp.human color light_purple
team modify switch.temp.zombie color dark_green
team modify switch.temp.human friendlyFire false
team modify switch.temp.zombie friendlyFire false
team modify switch.temp.human nametagVisibility never
team modify switch.temp.zombie nametagVisibility never

