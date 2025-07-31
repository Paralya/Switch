
#> switch:modes/kart_racer/map_tick/trackmania_stadium_2_tp
#
# @executed	as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}]
#
# @within	switch:modes/kart_racer/map_tick/trackmania_stadium_2 [ as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] ]
#

# l1 = [37091, 139, 37015]
# l2 = [36896, 153, 37015]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run particle explosion 20662 110 20382 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 20662 110 20382
execute at @s run particle flame ~ ~ ~ .5 .5 .5 0 50 force

tp @s[scores={switch.temp.compteur=1}] 37091.0 139.0 37015.0
tp @s[scores={switch.temp.compteur=2}] 37088.5625 139.175 37015.0
tp @s[scores={switch.temp.compteur=3}] 37086.125 139.35 37015.0
tp @s[scores={switch.temp.compteur=4}] 37083.6875 139.525 37015.0
tp @s[scores={switch.temp.compteur=5}] 37081.25 139.7 37015.0
tp @s[scores={switch.temp.compteur=6}] 37078.8125 139.875 37015.0
tp @s[scores={switch.temp.compteur=7}] 37076.375 140.05 37015.0
tp @s[scores={switch.temp.compteur=8}] 37073.9375 140.225 37015.0
tp @s[scores={switch.temp.compteur=9}] 37071.5 140.4 37015.0
tp @s[scores={switch.temp.compteur=10}] 37069.0625 140.575 37015.0
tp @s[scores={switch.temp.compteur=11}] 37066.625 140.75 37015.0
tp @s[scores={switch.temp.compteur=12}] 37064.1875 140.925 37015.0
tp @s[scores={switch.temp.compteur=13}] 37061.75 141.1 37015.0
tp @s[scores={switch.temp.compteur=14}] 37059.3125 141.275 37015.0
tp @s[scores={switch.temp.compteur=15}] 37056.875 141.45 37015.0
tp @s[scores={switch.temp.compteur=16}] 37054.4375 141.625 37015.0
tp @s[scores={switch.temp.compteur=17}] 37052.0 141.8 37015.0
tp @s[scores={switch.temp.compteur=18}] 37049.5625 141.975 37015.0
tp @s[scores={switch.temp.compteur=19}] 37047.125 142.15 37015.0
tp @s[scores={switch.temp.compteur=20}] 37044.6875 142.325 37015.0
tp @s[scores={switch.temp.compteur=21}] 37042.25 142.5 37015.0
tp @s[scores={switch.temp.compteur=22}] 37039.8125 142.675 37015.0
tp @s[scores={switch.temp.compteur=23}] 37037.375 142.85 37015.0
tp @s[scores={switch.temp.compteur=24}] 37034.9375 143.025 37015.0
tp @s[scores={switch.temp.compteur=25}] 37032.5 143.2 37015.0
tp @s[scores={switch.temp.compteur=26}] 37030.0625 143.375 37015.0
tp @s[scores={switch.temp.compteur=27}] 37027.625 143.55 37015.0
tp @s[scores={switch.temp.compteur=28}] 37025.1875 143.725 37015.0
tp @s[scores={switch.temp.compteur=29}] 37022.75 143.9 37015.0
tp @s[scores={switch.temp.compteur=30}] 37020.3125 144.075 37015.0
tp @s[scores={switch.temp.compteur=31}] 37017.875 144.25 37015.0
tp @s[scores={switch.temp.compteur=32}] 37015.4375 144.425 37015.0
tp @s[scores={switch.temp.compteur=33}] 37013.0 144.6 37015.0
tp @s[scores={switch.temp.compteur=34}] 37010.5625 144.775 37015.0
tp @s[scores={switch.temp.compteur=35}] 37008.125 144.95 37015.0
tp @s[scores={switch.temp.compteur=36}] 37005.6875 145.125 37015.0
tp @s[scores={switch.temp.compteur=37}] 37003.25 145.3 37015.0
tp @s[scores={switch.temp.compteur=38}] 37000.8125 145.475 37015.0
tp @s[scores={switch.temp.compteur=39}] 36998.375 145.65 37015.0
tp @s[scores={switch.temp.compteur=40}] 36995.9375 145.825 37015.0
tp @s[scores={switch.temp.compteur=41}] 36993.5 146.0 37015.0
tp @s[scores={switch.temp.compteur=42}] 36991.0625 146.175 37015.0
tp @s[scores={switch.temp.compteur=43}] 36988.625 146.35 37015.0
tp @s[scores={switch.temp.compteur=44}] 36986.1875 146.525 37015.0
tp @s[scores={switch.temp.compteur=45}] 36983.75 146.7 37015.0
tp @s[scores={switch.temp.compteur=46}] 36981.3125 146.875 37015.0
tp @s[scores={switch.temp.compteur=47}] 36978.875 147.05 37015.0
tp @s[scores={switch.temp.compteur=48}] 36976.4375 147.225 37015.0
tp @s[scores={switch.temp.compteur=49}] 36974.0 147.4 37015.0
tp @s[scores={switch.temp.compteur=50}] 36971.5625 147.575 37015.0
tp @s[scores={switch.temp.compteur=51}] 36969.125 147.75 37015.0
tp @s[scores={switch.temp.compteur=52}] 36966.6875 147.925 37015.0
tp @s[scores={switch.temp.compteur=53}] 36964.25 148.1 37015.0
tp @s[scores={switch.temp.compteur=54}] 36961.8125 148.275 37015.0
tp @s[scores={switch.temp.compteur=55}] 36959.375 148.45 37015.0
tp @s[scores={switch.temp.compteur=56}] 36956.9375 148.625 37015.0
tp @s[scores={switch.temp.compteur=57}] 36954.5 148.8 37015.0
tp @s[scores={switch.temp.compteur=58}] 36952.0625 148.975 37015.0
tp @s[scores={switch.temp.compteur=59}] 36949.625 149.15 37015.0
tp @s[scores={switch.temp.compteur=60}] 36947.1875 149.325 37015.0
tp @s[scores={switch.temp.compteur=61}] 36944.75 149.5 37015.0
tp @s[scores={switch.temp.compteur=62}] 36942.3125 149.675 37015.0
tp @s[scores={switch.temp.compteur=63}] 36939.875 149.85 37015.0
tp @s[scores={switch.temp.compteur=64}] 36937.4375 150.025 37015.0
tp @s[scores={switch.temp.compteur=65}] 36935.0 150.2 37015.0
tp @s[scores={switch.temp.compteur=66}] 36932.5625 150.375 37015.0
tp @s[scores={switch.temp.compteur=67}] 36930.125 150.55 37015.0
tp @s[scores={switch.temp.compteur=68}] 36927.6875 150.725 37015.0
tp @s[scores={switch.temp.compteur=69}] 36925.25 150.9 37015.0
tp @s[scores={switch.temp.compteur=70}] 36922.8125 151.075 37015.0
tp @s[scores={switch.temp.compteur=71}] 36920.375 151.25 37015.0
tp @s[scores={switch.temp.compteur=72}] 36917.9375 151.425 37015.0
tp @s[scores={switch.temp.compteur=73}] 36915.5 151.6 37015.0
tp @s[scores={switch.temp.compteur=74}] 36913.0625 151.775 37015.0
tp @s[scores={switch.temp.compteur=75}] 36910.625 151.95 37015.0
tp @s[scores={switch.temp.compteur=76}] 36908.1875 152.125 37015.0
tp @s[scores={switch.temp.compteur=77}] 36905.75 152.3 37015.0
tp @s[scores={switch.temp.compteur=78}] 36903.3125 152.475 37015.0
tp @s[scores={switch.temp.compteur=79}] 36900.875 152.65 37015.0
tp @s[scores={switch.temp.compteur=80}] 36898.4375 152.825 37015.0
tp @s[scores={switch.temp.compteur=81}] 36896.0 153.0 37015.0

scoreboard players add @s switch.temp.compteur 1
scoreboard players reset @s[scores={switch.temp.compteur=82..}] switch.temp.compteur

