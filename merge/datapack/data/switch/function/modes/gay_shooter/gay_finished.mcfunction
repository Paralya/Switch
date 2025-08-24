
execute if data storage switch:main {map:"gay_shooter"} in switch:game run tp @s 114034 137 114017

clear @s
# loot give @s loot stardust:i/ultimate_sniper
# loot give @s loot stardust:i/ultimate_bullet_x32
give @s bow[enchantments={"power":123},unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}]
give @s arrow 32

item replace entity @s weapon.offhand with shield
execute unless score #test_mode switch.data matches 1 run advancement grant @s only switch:visible/6

