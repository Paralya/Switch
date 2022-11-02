
execute as @a[x=14000,y=99,z=14000,distance=..11] at @s if entity @s[y=99,dy=1] run function switch:modes/rush_the_point/on_capture_point
execute if score #color switch.data matches -1 run fill 14010 98 13990 13990 98 14010 yellow_wool replace #minecraft:wool
execute if score #color switch.data matches 0 run fill 14010 98 13990 13990 98 14010 white_wool replace #minecraft:wool
execute if score #color switch.data matches 1 run fill 14010 98 13990 13990 98 14010 red_wool replace #minecraft:wool
execute if score #color switch.data matches 2 run fill 14010 98 13990 13990 98 14010 blue_wool replace #minecraft:wool

