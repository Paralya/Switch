
scoreboard players add #gay_shooter_ticks switch.data 1

## Player management
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/gay_shooter/death
execute as @a[tag=!detached,gamemode=adventure,x=114005,y=132,z=114033,distance=..1] run function switch:modes/gay_shooter/gay_finished

# Kill players in the void
execute as @a[tag=!detached,team=switch.temp.gays,gamemode=adventure] at @s if entity @s[y=0,dy=-1000] if data entity @s Inventory[{id:"minecraft:warped_fungus_on_a_stick"}] run advancement grant @s only switch:visible/76
execute as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=0,dy=-1000] run kill @s

# Détection de fin de partie
execute if score #gay_shooter_seconds switch.data matches 1..300 run function switch:modes/gay_shooter/detect_end
execute if score #gay_shooter_seconds switch.data matches 301.. run function switch:modes/gay_shooter/process_end

