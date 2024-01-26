
execute if data storage switch:main {map:"gay_shooter"} run tp @s 114028 125 114010

clear @s
loot give @s loot stardust:i/ultimate_sniper
loot give @s loot stardust:i/ultimate_bullet_x32
item replace entity @s weapon.offhand with shield
advancement grant @s only switch:visible/6

