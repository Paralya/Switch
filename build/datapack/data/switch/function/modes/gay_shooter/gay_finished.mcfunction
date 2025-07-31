
#> switch:modes/gay_shooter/gay_finished
#
# @executed	in switch:game & as @a[tag=!detached,gamemode=adventure,x=114005,y=132,z=114033,distance=..1]
#
# @within	switch:modes/gay_shooter/tick [ in switch:game & as @a[tag=!detached,gamemode=adventure,x=114005,y=132,z=114033,distance=..1] ]
#

execute if data storage switch:main {map:"gay_shooter"} in switch:game run tp @s 114028 125 114010

clear @s
# loot give @s loot stardust:i/ultimate_sniper
# loot give @s loot stardust:i/ultimate_bullet_x32
give @s bow[enchantments={"power":123},unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}]
give @s arrow 32

item replace entity @s weapon.offhand with shield
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/6

