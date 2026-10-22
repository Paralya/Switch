
#> switch:modes/race/map_tick/trackmania_stadium_2_tp
#
# @executed	as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}]
#
# @within	switch:modes/race/map_tick/trackmania_stadium_2 [ as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] ]
#

# l1 = [4091, 139, 6015]
# l2 = [3896, 153, 6015]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run particle explosion 7225 110 -4994 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 7225 110 -4994
execute at @s run particle flame ~ ~ ~ .5 .5 .5 0 50 force

tp @s[scores={switch.temp.compteur=1}] 4091.0 139.0 6015.0
tp @s[scores={switch.temp.compteur=2}] 4088.5625 139.175 6015.0
tp @s[scores={switch.temp.compteur=3}] 4086.125 139.35 6015.0
tp @s[scores={switch.temp.compteur=4}] 4083.6875 139.525 6015.0
tp @s[scores={switch.temp.compteur=5}] 4081.25 139.7 6015.0
tp @s[scores={switch.temp.compteur=6}] 4078.8125 139.875 6015.0
tp @s[scores={switch.temp.compteur=7}] 4076.375 140.05 6015.0
tp @s[scores={switch.temp.compteur=8}] 4073.9375 140.225 6015.0
tp @s[scores={switch.temp.compteur=9}] 4071.5 140.4 6015.0
tp @s[scores={switch.temp.compteur=10}] 4069.0625 140.575 6015.0
tp @s[scores={switch.temp.compteur=11}] 4066.625 140.75 6015.0
tp @s[scores={switch.temp.compteur=12}] 4064.1875 140.925 6015.0
tp @s[scores={switch.temp.compteur=13}] 4061.75 141.1 6015.0
tp @s[scores={switch.temp.compteur=14}] 4059.3125 141.275 6015.0
tp @s[scores={switch.temp.compteur=15}] 4056.875 141.45 6015.0
tp @s[scores={switch.temp.compteur=16}] 4054.4375 141.625 6015.0
tp @s[scores={switch.temp.compteur=17}] 4052.0 141.8 6015.0
tp @s[scores={switch.temp.compteur=18}] 4049.5625 141.975 6015.0
tp @s[scores={switch.temp.compteur=19}] 4047.125 142.15 6015.0
tp @s[scores={switch.temp.compteur=20}] 4044.6875 142.325 6015.0
tp @s[scores={switch.temp.compteur=21}] 4042.25 142.5 6015.0
tp @s[scores={switch.temp.compteur=22}] 4039.8125 142.675 6015.0
tp @s[scores={switch.temp.compteur=23}] 4037.375 142.85 6015.0
tp @s[scores={switch.temp.compteur=24}] 4034.9375 143.025 6015.0
tp @s[scores={switch.temp.compteur=25}] 4032.5 143.2 6015.0
tp @s[scores={switch.temp.compteur=26}] 4030.0625 143.375 6015.0
tp @s[scores={switch.temp.compteur=27}] 4027.625 143.55 6015.0
tp @s[scores={switch.temp.compteur=28}] 4025.1875 143.725 6015.0
tp @s[scores={switch.temp.compteur=29}] 4022.75 143.9 6015.0
tp @s[scores={switch.temp.compteur=30}] 4020.3125 144.075 6015.0
tp @s[scores={switch.temp.compteur=31}] 4017.875 144.25 6015.0
tp @s[scores={switch.temp.compteur=32}] 4015.4375 144.425 6015.0
tp @s[scores={switch.temp.compteur=33}] 4013.0 144.6 6015.0
tp @s[scores={switch.temp.compteur=34}] 4010.5625 144.775 6015.0
tp @s[scores={switch.temp.compteur=35}] 4008.125 144.95 6015.0
tp @s[scores={switch.temp.compteur=36}] 4005.6875 145.125 6015.0
tp @s[scores={switch.temp.compteur=37}] 4003.25 145.3 6015.0
tp @s[scores={switch.temp.compteur=38}] 4000.8125 145.475 6015.0
tp @s[scores={switch.temp.compteur=39}] 3998.375 145.65 6015.0
tp @s[scores={switch.temp.compteur=40}] 3995.9375 145.825 6015.0
tp @s[scores={switch.temp.compteur=41}] 3993.5 146.0 6015.0
tp @s[scores={switch.temp.compteur=42}] 3991.0625 146.175 6015.0
tp @s[scores={switch.temp.compteur=43}] 3988.625 146.35 6015.0
tp @s[scores={switch.temp.compteur=44}] 3986.1875 146.525 6015.0
tp @s[scores={switch.temp.compteur=45}] 3983.75 146.7 6015.0
tp @s[scores={switch.temp.compteur=46}] 3981.3125 146.875 6015.0
tp @s[scores={switch.temp.compteur=47}] 3978.875 147.05 6015.0
tp @s[scores={switch.temp.compteur=48}] 3976.4375 147.225 6015.0
tp @s[scores={switch.temp.compteur=49}] 3974.0 147.4 6015.0
tp @s[scores={switch.temp.compteur=50}] 3971.5625 147.575 6015.0
tp @s[scores={switch.temp.compteur=51}] 3969.125 147.75 6015.0
tp @s[scores={switch.temp.compteur=52}] 3966.6875 147.925 6015.0
tp @s[scores={switch.temp.compteur=53}] 3964.25 148.1 6015.0
tp @s[scores={switch.temp.compteur=54}] 3961.8125 148.275 6015.0
tp @s[scores={switch.temp.compteur=55}] 3959.375 148.45 6015.0
tp @s[scores={switch.temp.compteur=56}] 3956.9375 148.625 6015.0
tp @s[scores={switch.temp.compteur=57}] 3954.5 148.8 6015.0
tp @s[scores={switch.temp.compteur=58}] 3952.0625 148.975 6015.0
tp @s[scores={switch.temp.compteur=59}] 3949.625 149.15 6015.0
tp @s[scores={switch.temp.compteur=60}] 3947.1875 149.325 6015.0
tp @s[scores={switch.temp.compteur=61}] 3944.75 149.5 6015.0
tp @s[scores={switch.temp.compteur=62}] 3942.3125 149.675 6015.0
tp @s[scores={switch.temp.compteur=63}] 3939.875 149.85 6015.0
tp @s[scores={switch.temp.compteur=64}] 3937.4375 150.025 6015.0
tp @s[scores={switch.temp.compteur=65}] 3935.0 150.2 6015.0
tp @s[scores={switch.temp.compteur=66}] 3932.5625 150.375 6015.0
tp @s[scores={switch.temp.compteur=67}] 3930.125 150.55 6015.0
tp @s[scores={switch.temp.compteur=68}] 3927.6875 150.725 6015.0
tp @s[scores={switch.temp.compteur=69}] 3925.25 150.9 6015.0
tp @s[scores={switch.temp.compteur=70}] 3922.8125 151.075 6015.0
tp @s[scores={switch.temp.compteur=71}] 3920.375 151.25 6015.0
tp @s[scores={switch.temp.compteur=72}] 3917.9375 151.425 6015.0
tp @s[scores={switch.temp.compteur=73}] 3915.5 151.6 6015.0
tp @s[scores={switch.temp.compteur=74}] 3913.0625 151.775 6015.0
tp @s[scores={switch.temp.compteur=75}] 3910.625 151.95 6015.0
tp @s[scores={switch.temp.compteur=76}] 3908.1875 152.125 6015.0
tp @s[scores={switch.temp.compteur=77}] 3905.75 152.3 6015.0
tp @s[scores={switch.temp.compteur=78}] 3903.3125 152.475 6015.0
tp @s[scores={switch.temp.compteur=79}] 3900.875 152.65 6015.0
tp @s[scores={switch.temp.compteur=80}] 3898.4375 152.825 6015.0
tp @s[scores={switch.temp.compteur=81}] 3896.0 153.0 6015.0

scoreboard players add @s switch.temp.compteur 1
scoreboard players reset @s[scores={switch.temp.compteur=82..}] switch.temp.compteur

