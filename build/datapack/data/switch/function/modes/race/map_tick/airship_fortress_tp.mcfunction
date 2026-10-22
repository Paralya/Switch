
#> switch:modes/race/map_tick/airship_fortress_tp
#
# @executed	as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}]
#
# @within	switch:modes/race/map_tick/airship_fortress [ as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] ]
#

# l1 = [7225, 110, -4994]
# l2 = [7295, 138, -4994]
# total = 40
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine
execute if score @s switch.temp.compteur matches 1 run particle explosion 7225 110 -4994 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 7225 110 -4994

tp @s[scores={switch.temp.compteur=1}] 7225.0 110.0 -4994.0
tp @s[scores={switch.temp.compteur=2}] 7226.75 110.7 -4994.0
tp @s[scores={switch.temp.compteur=3}] 7228.5 111.4 -4994.0
tp @s[scores={switch.temp.compteur=4}] 7230.25 112.1 -4994.0
tp @s[scores={switch.temp.compteur=5}] 7232.0 112.8 -4994.0
tp @s[scores={switch.temp.compteur=6}] 7233.75 113.5 -4994.0
tp @s[scores={switch.temp.compteur=7}] 7235.5 114.2 -4994.0
tp @s[scores={switch.temp.compteur=8}] 7237.25 114.9 -4994.0
tp @s[scores={switch.temp.compteur=9}] 7239.0 115.6 -4994.0
tp @s[scores={switch.temp.compteur=10}] 7240.75 116.3 -4994.0
tp @s[scores={switch.temp.compteur=11}] 7242.5 117.0 -4994.0
tp @s[scores={switch.temp.compteur=12}] 7244.25 117.7 -4994.0
tp @s[scores={switch.temp.compteur=13}] 7246.0 118.4 -4994.0
tp @s[scores={switch.temp.compteur=14}] 7247.75 119.1 -4994.0
tp @s[scores={switch.temp.compteur=15}] 7249.5 119.8 -4994.0
tp @s[scores={switch.temp.compteur=16}] 7251.25 120.5 -4994.0
tp @s[scores={switch.temp.compteur=17}] 7253.0 121.2 -4994.0
tp @s[scores={switch.temp.compteur=18}] 7254.75 121.9 -4994.0
tp @s[scores={switch.temp.compteur=19}] 7256.5 122.6 -4994.0
tp @s[scores={switch.temp.compteur=20}] 7258.25 123.3 -4994.0
tp @s[scores={switch.temp.compteur=21}] 7260.0 124.0 -4994.0
tp @s[scores={switch.temp.compteur=22}] 7261.75 124.7 -4994.0
tp @s[scores={switch.temp.compteur=23}] 7263.5 125.4 -4994.0
tp @s[scores={switch.temp.compteur=24}] 7265.25 126.1 -4994.0
tp @s[scores={switch.temp.compteur=25}] 7267.0 126.8 -4994.0
tp @s[scores={switch.temp.compteur=26}] 7268.75 127.5 -4994.0
tp @s[scores={switch.temp.compteur=27}] 7270.5 128.2 -4994.0
tp @s[scores={switch.temp.compteur=28}] 7272.25 128.9 -4994.0
tp @s[scores={switch.temp.compteur=29}] 7274.0 129.6 -4994.0
tp @s[scores={switch.temp.compteur=30}] 7275.75 130.3 -4994.0
tp @s[scores={switch.temp.compteur=31}] 7277.5 131.0 -4994.0
tp @s[scores={switch.temp.compteur=32}] 7279.25 131.7 -4994.0
tp @s[scores={switch.temp.compteur=33}] 7281.0 132.4 -4994.0
tp @s[scores={switch.temp.compteur=34}] 7282.75 133.1 -4994.0
tp @s[scores={switch.temp.compteur=35}] 7284.5 133.8 -4994.0
tp @s[scores={switch.temp.compteur=36}] 7286.25 134.5 -4994.0
tp @s[scores={switch.temp.compteur=37}] 7288.0 135.2 -4994.0
tp @s[scores={switch.temp.compteur=38}] 7289.75 135.9 -4994.0
tp @s[scores={switch.temp.compteur=39}] 7291.5 136.6 -4994.0
tp @s[scores={switch.temp.compteur=40}] 7293.25 137.3 -4994.0
tp @s[scores={switch.temp.compteur=41}] 7295.0 138.0 -4994.0

function switch:modes/race/map_tick/restore_speed {count:42}

