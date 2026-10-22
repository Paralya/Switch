
#> switch:modes/race/map_tick/dk_mountain_tp
#
# @executed	as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}]
#
# @within	switch:modes/race/map_tick/dk_mountain [ as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] ]
#

# l1 = [6545, 117, -4834]
# l2 = [6295, 164, -4831]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine
execute if score @s switch.temp.compteur matches 1 run particle explosion 6545 117 -4834 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 6545 117 -4834

tp @s[scores={switch.temp.compteur=1}] 6545.0 117.0 -4834.0
tp @s[scores={switch.temp.compteur=2}] 6541.875 117.5875 -4833.9625
tp @s[scores={switch.temp.compteur=3}] 6538.75 118.175 -4833.925
tp @s[scores={switch.temp.compteur=4}] 6535.625 118.7625 -4833.8875
tp @s[scores={switch.temp.compteur=5}] 6532.5 119.35 -4833.85
tp @s[scores={switch.temp.compteur=6}] 6529.375 119.9375 -4833.8125
tp @s[scores={switch.temp.compteur=7}] 6526.25 120.525 -4833.775
tp @s[scores={switch.temp.compteur=8}] 6523.125 121.1125 -4833.7375
tp @s[scores={switch.temp.compteur=9}] 6520.0 121.7 -4833.7
tp @s[scores={switch.temp.compteur=10}] 6516.875 122.2875 -4833.6625
tp @s[scores={switch.temp.compteur=11}] 6513.75 122.875 -4833.625
tp @s[scores={switch.temp.compteur=12}] 6510.625 123.4625 -4833.5875
tp @s[scores={switch.temp.compteur=13}] 6507.5 124.05 -4833.55
tp @s[scores={switch.temp.compteur=14}] 6504.375 124.6375 -4833.5125
tp @s[scores={switch.temp.compteur=15}] 6501.25 125.225 -4833.475
tp @s[scores={switch.temp.compteur=16}] 6498.125 125.8125 -4833.4375
tp @s[scores={switch.temp.compteur=17}] 6495.0 126.4 -4833.4
tp @s[scores={switch.temp.compteur=18}] 6491.875 126.9875 -4833.3625
tp @s[scores={switch.temp.compteur=19}] 6488.75 127.575 -4833.325
tp @s[scores={switch.temp.compteur=20}] 6485.625 128.1625 -4833.2875
tp @s[scores={switch.temp.compteur=21}] 6482.5 128.75 -4833.25
tp @s[scores={switch.temp.compteur=22}] 6479.375 129.3375 -4833.2125
tp @s[scores={switch.temp.compteur=23}] 6476.25 129.925 -4833.175
tp @s[scores={switch.temp.compteur=24}] 6473.125 130.5125 -4833.1375
tp @s[scores={switch.temp.compteur=25}] 6470.0 131.1 -4833.1
tp @s[scores={switch.temp.compteur=26}] 6466.875 131.6875 -4833.0625
tp @s[scores={switch.temp.compteur=27}] 6463.75 132.275 -4833.025
tp @s[scores={switch.temp.compteur=28}] 6460.625 132.8625 -4832.9875
tp @s[scores={switch.temp.compteur=29}] 6457.5 133.45 -4832.95
tp @s[scores={switch.temp.compteur=30}] 6454.375 134.0375 -4832.9125
tp @s[scores={switch.temp.compteur=31}] 6451.25 134.625 -4832.875
tp @s[scores={switch.temp.compteur=32}] 6448.125 135.2125 -4832.8375
tp @s[scores={switch.temp.compteur=33}] 6445.0 135.8 -4832.8
tp @s[scores={switch.temp.compteur=34}] 6441.875 136.3875 -4832.7625
tp @s[scores={switch.temp.compteur=35}] 6438.75 136.975 -4832.725
tp @s[scores={switch.temp.compteur=36}] 6435.625 137.5625 -4832.6875
tp @s[scores={switch.temp.compteur=37}] 6432.5 138.15 -4832.65
tp @s[scores={switch.temp.compteur=38}] 6429.375 138.7375 -4832.6125
tp @s[scores={switch.temp.compteur=39}] 6426.25 139.325 -4832.575
tp @s[scores={switch.temp.compteur=40}] 6423.125 139.9125 -4832.5375
tp @s[scores={switch.temp.compteur=41}] 6420.0 140.5 -4832.5
tp @s[scores={switch.temp.compteur=42}] 6416.875 141.0875 -4832.4625
tp @s[scores={switch.temp.compteur=43}] 6413.75 141.675 -4832.425
tp @s[scores={switch.temp.compteur=44}] 6410.625 142.2625 -4832.3875
tp @s[scores={switch.temp.compteur=45}] 6407.5 142.85 -4832.35
tp @s[scores={switch.temp.compteur=46}] 6404.375 143.4375 -4832.3125
tp @s[scores={switch.temp.compteur=47}] 6401.25 144.025 -4832.275
tp @s[scores={switch.temp.compteur=48}] 6398.125 144.6125 -4832.2375
tp @s[scores={switch.temp.compteur=49}] 6395.0 145.2 -4832.2
tp @s[scores={switch.temp.compteur=50}] 6391.875 145.7875 -4832.1625
tp @s[scores={switch.temp.compteur=51}] 6388.75 146.375 -4832.125
tp @s[scores={switch.temp.compteur=52}] 6385.625 146.9625 -4832.0875
tp @s[scores={switch.temp.compteur=53}] 6382.5 147.55 -4832.05
tp @s[scores={switch.temp.compteur=54}] 6379.375 148.1375 -4832.0125
tp @s[scores={switch.temp.compteur=55}] 6376.25 148.725 -4831.975
tp @s[scores={switch.temp.compteur=56}] 6373.125 149.3125 -4831.9375
tp @s[scores={switch.temp.compteur=57}] 6370.0 149.9 -4831.9
tp @s[scores={switch.temp.compteur=58}] 6366.875 150.4875 -4831.8625
tp @s[scores={switch.temp.compteur=59}] 6363.75 151.075 -4831.825
tp @s[scores={switch.temp.compteur=60}] 6360.625 151.6625 -4831.7875
tp @s[scores={switch.temp.compteur=61}] 6357.5 152.25 -4831.75
tp @s[scores={switch.temp.compteur=62}] 6354.375 152.8375 -4831.7125
tp @s[scores={switch.temp.compteur=63}] 6351.25 153.425 -4831.675
tp @s[scores={switch.temp.compteur=64}] 6348.125 154.0125 -4831.6375
tp @s[scores={switch.temp.compteur=65}] 6345.0 154.6 -4831.6
tp @s[scores={switch.temp.compteur=66}] 6341.875 155.1875 -4831.5625
tp @s[scores={switch.temp.compteur=67}] 6338.75 155.775 -4831.525
tp @s[scores={switch.temp.compteur=68}] 6335.625 156.3625 -4831.4875
tp @s[scores={switch.temp.compteur=69}] 6332.5 156.95 -4831.45
tp @s[scores={switch.temp.compteur=70}] 6329.375 157.5375 -4831.4125
tp @s[scores={switch.temp.compteur=71}] 6326.25 158.125 -4831.375
tp @s[scores={switch.temp.compteur=72}] 6323.125 158.7125 -4831.3375
tp @s[scores={switch.temp.compteur=73}] 6320.0 159.3 -4831.3
tp @s[scores={switch.temp.compteur=74}] 6316.875 159.8875 -4831.2625
tp @s[scores={switch.temp.compteur=75}] 6313.75 160.475 -4831.225
tp @s[scores={switch.temp.compteur=76}] 6310.625 161.0625 -4831.1875
tp @s[scores={switch.temp.compteur=77}] 6307.5 161.65 -4831.15
tp @s[scores={switch.temp.compteur=78}] 6304.375 162.2375 -4831.1125
tp @s[scores={switch.temp.compteur=79}] 6301.25 162.825 -4831.075
tp @s[scores={switch.temp.compteur=80}] 6298.125 163.4125 -4831.0375
tp @s[scores={switch.temp.compteur=81}] 6295.0 164.0 -4831.0

function switch:modes/race/map_tick/restore_speed {count:82}

