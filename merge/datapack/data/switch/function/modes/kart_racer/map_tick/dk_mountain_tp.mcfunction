
# l1 = [19982, 117, 20542]
# l2 = [19732, 164, 20545]
# total = 80
# dx = (l2[0] - l1[0]) / total
# dy = (l2[1] - l1[1]) / total
# dz = (l2[2] - l1[2]) / total
# for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run scoreboard players operation @s switch.temp.old_speed = @s shopping_kart.engine
execute if score @s switch.temp.compteur matches 1 run particle explosion 19982 117 20542 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound switch:explosion block @a[tag=!detached] 19982 117 20542

tp @s[scores={switch.temp.compteur=1}] 19982.0 117.0 20542.0
tp @s[scores={switch.temp.compteur=2}] 19978.875 117.5875 20542.0375
tp @s[scores={switch.temp.compteur=3}] 19975.75 118.175 20542.075
tp @s[scores={switch.temp.compteur=4}] 19972.625 118.7625 20542.1125
tp @s[scores={switch.temp.compteur=5}] 19969.5 119.35 20542.15
tp @s[scores={switch.temp.compteur=6}] 19966.375 119.9375 20542.1875
tp @s[scores={switch.temp.compteur=7}] 19963.25 120.525 20542.225
tp @s[scores={switch.temp.compteur=8}] 19960.125 121.1125 20542.2625
tp @s[scores={switch.temp.compteur=9}] 19957.0 121.7 20542.3
tp @s[scores={switch.temp.compteur=10}] 19953.875 122.2875 20542.3375
tp @s[scores={switch.temp.compteur=11}] 19950.75 122.875 20542.375
tp @s[scores={switch.temp.compteur=12}] 19947.625 123.4625 20542.4125
tp @s[scores={switch.temp.compteur=13}] 19944.5 124.05 20542.45
tp @s[scores={switch.temp.compteur=14}] 19941.375 124.6375 20542.4875
tp @s[scores={switch.temp.compteur=15}] 19938.25 125.225 20542.525
tp @s[scores={switch.temp.compteur=16}] 19935.125 125.8125 20542.5625
tp @s[scores={switch.temp.compteur=17}] 19932.0 126.4 20542.6
tp @s[scores={switch.temp.compteur=18}] 19928.875 126.9875 20542.6375
tp @s[scores={switch.temp.compteur=19}] 19925.75 127.575 20542.675
tp @s[scores={switch.temp.compteur=20}] 19922.625 128.1625 20542.7125
tp @s[scores={switch.temp.compteur=21}] 19919.5 128.75 20542.75
tp @s[scores={switch.temp.compteur=22}] 19916.375 129.3375 20542.7875
tp @s[scores={switch.temp.compteur=23}] 19913.25 129.925 20542.825
tp @s[scores={switch.temp.compteur=24}] 19910.125 130.5125 20542.8625
tp @s[scores={switch.temp.compteur=25}] 19907.0 131.1 20542.9
tp @s[scores={switch.temp.compteur=26}] 19903.875 131.6875 20542.9375
tp @s[scores={switch.temp.compteur=27}] 19900.75 132.275 20542.975
tp @s[scores={switch.temp.compteur=28}] 19897.625 132.8625 20543.0125
tp @s[scores={switch.temp.compteur=29}] 19894.5 133.45 20543.05
tp @s[scores={switch.temp.compteur=30}] 19891.375 134.0375 20543.0875
tp @s[scores={switch.temp.compteur=31}] 19888.25 134.625 20543.125
tp @s[scores={switch.temp.compteur=32}] 19885.125 135.2125 20543.1625
tp @s[scores={switch.temp.compteur=33}] 19882.0 135.8 20543.2
tp @s[scores={switch.temp.compteur=34}] 19878.875 136.3875 20543.2375
tp @s[scores={switch.temp.compteur=35}] 19875.75 136.975 20543.275
tp @s[scores={switch.temp.compteur=36}] 19872.625 137.5625 20543.3125
tp @s[scores={switch.temp.compteur=37}] 19869.5 138.15 20543.35
tp @s[scores={switch.temp.compteur=38}] 19866.375 138.7375 20543.3875
tp @s[scores={switch.temp.compteur=39}] 19863.25 139.325 20543.425
tp @s[scores={switch.temp.compteur=40}] 19860.125 139.9125 20543.4625
tp @s[scores={switch.temp.compteur=41}] 19857.0 140.5 20543.5
tp @s[scores={switch.temp.compteur=42}] 19853.875 141.0875 20543.5375
tp @s[scores={switch.temp.compteur=43}] 19850.75 141.675 20543.575
tp @s[scores={switch.temp.compteur=44}] 19847.625 142.2625 20543.6125
tp @s[scores={switch.temp.compteur=45}] 19844.5 142.85 20543.65
tp @s[scores={switch.temp.compteur=46}] 19841.375 143.4375 20543.6875
tp @s[scores={switch.temp.compteur=47}] 19838.25 144.025 20543.725
tp @s[scores={switch.temp.compteur=48}] 19835.125 144.6125 20543.7625
tp @s[scores={switch.temp.compteur=49}] 19832.0 145.2 20543.8
tp @s[scores={switch.temp.compteur=50}] 19828.875 145.7875 20543.8375
tp @s[scores={switch.temp.compteur=51}] 19825.75 146.375 20543.875
tp @s[scores={switch.temp.compteur=52}] 19822.625 146.9625 20543.9125
tp @s[scores={switch.temp.compteur=53}] 19819.5 147.55 20543.95
tp @s[scores={switch.temp.compteur=54}] 19816.375 148.1375 20543.9875
tp @s[scores={switch.temp.compteur=55}] 19813.25 148.725 20544.025
tp @s[scores={switch.temp.compteur=56}] 19810.125 149.3125 20544.0625
tp @s[scores={switch.temp.compteur=57}] 19807.0 149.9 20544.1
tp @s[scores={switch.temp.compteur=58}] 19803.875 150.4875 20544.1375
tp @s[scores={switch.temp.compteur=59}] 19800.75 151.075 20544.175
tp @s[scores={switch.temp.compteur=60}] 19797.625 151.6625 20544.2125
tp @s[scores={switch.temp.compteur=61}] 19794.5 152.25 20544.25
tp @s[scores={switch.temp.compteur=62}] 19791.375 152.8375 20544.2875
tp @s[scores={switch.temp.compteur=63}] 19788.25 153.425 20544.325
tp @s[scores={switch.temp.compteur=64}] 19785.125 154.0125 20544.3625
tp @s[scores={switch.temp.compteur=65}] 19782.0 154.6 20544.4
tp @s[scores={switch.temp.compteur=66}] 19778.875 155.1875 20544.4375
tp @s[scores={switch.temp.compteur=67}] 19775.75 155.775 20544.475
tp @s[scores={switch.temp.compteur=68}] 19772.625 156.3625 20544.5125
tp @s[scores={switch.temp.compteur=69}] 19769.5 156.95 20544.55
tp @s[scores={switch.temp.compteur=70}] 19766.375 157.5375 20544.5875
tp @s[scores={switch.temp.compteur=71}] 19763.25 158.125 20544.625
tp @s[scores={switch.temp.compteur=72}] 19760.125 158.7125 20544.6625
tp @s[scores={switch.temp.compteur=73}] 19757.0 159.3 20544.7
tp @s[scores={switch.temp.compteur=74}] 19753.875 159.8875 20544.7375
tp @s[scores={switch.temp.compteur=75}] 19750.75 160.475 20544.775
tp @s[scores={switch.temp.compteur=76}] 19747.625 161.0625 20544.8125
tp @s[scores={switch.temp.compteur=77}] 19744.5 161.65 20544.85
tp @s[scores={switch.temp.compteur=78}] 19741.375 162.2375 20544.8875
tp @s[scores={switch.temp.compteur=79}] 19738.25 162.825 20544.925
tp @s[scores={switch.temp.compteur=80}] 19735.125 163.4125 20544.9625
tp @s[scores={switch.temp.compteur=81}] 19732.0 164.0 20545.0

scoreboard players add @s switch.temp.compteur 1
execute if score @s switch.temp.compteur matches 82.. run scoreboard players operation @s shopping_kart.engine = @s switch.temp.old_speed 
scoreboard players reset @s[scores={switch.temp.compteur=82..}] switch.temp.compteur

