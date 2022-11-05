
#l1 = [20662, 110, 20382]
#l2 = [20732, 138, 20382]
#total = 40
#dx = (l2[0] - l1[0]) / total
#dy = (l2[1] - l1[1]) / total
#dz = (l2[2] - l1[2]) / total
#for i in range(0,total+1):
#    print('tp @s[scores={switch.temp.compteur='+str(i+1)+'}]', round(l1[0] + i*dx, 4), round(l1[1] + i*dy, 4), round(l1[2] + i*dz, 4))

execute if score @s switch.temp.compteur matches 1 run particle explosion 20662 110 20382 2 2 2 0 10 force
execute if score @s switch.temp.compteur matches 1 run playsound entity.generic.explode block @a 20662 110 20382

tp @s[scores={switch.temp.compteur=1}] 20662.0 110.0 20382.0
tp @s[scores={switch.temp.compteur=2}] 20663.75 110.7 20382.0
tp @s[scores={switch.temp.compteur=3}] 20665.5 111.4 20382.0
tp @s[scores={switch.temp.compteur=4}] 20667.25 112.1 20382.0
tp @s[scores={switch.temp.compteur=5}] 20669.0 112.8 20382.0
tp @s[scores={switch.temp.compteur=6}] 20670.75 113.5 20382.0
tp @s[scores={switch.temp.compteur=7}] 20672.5 114.2 20382.0
tp @s[scores={switch.temp.compteur=8}] 20674.25 114.9 20382.0
tp @s[scores={switch.temp.compteur=9}] 20676.0 115.6 20382.0
tp @s[scores={switch.temp.compteur=10}] 20677.75 116.3 20382.0
tp @s[scores={switch.temp.compteur=11}] 20679.5 117.0 20382.0
tp @s[scores={switch.temp.compteur=12}] 20681.25 117.7 20382.0
tp @s[scores={switch.temp.compteur=13}] 20683.0 118.4 20382.0
tp @s[scores={switch.temp.compteur=14}] 20684.75 119.1 20382.0
tp @s[scores={switch.temp.compteur=15}] 20686.5 119.8 20382.0
tp @s[scores={switch.temp.compteur=16}] 20688.25 120.5 20382.0
tp @s[scores={switch.temp.compteur=17}] 20690.0 121.2 20382.0
tp @s[scores={switch.temp.compteur=18}] 20691.75 121.9 20382.0
tp @s[scores={switch.temp.compteur=19}] 20693.5 122.6 20382.0
tp @s[scores={switch.temp.compteur=20}] 20695.25 123.3 20382.0
tp @s[scores={switch.temp.compteur=21}] 20697.0 124.0 20382.0
tp @s[scores={switch.temp.compteur=22}] 20698.75 124.7 20382.0
tp @s[scores={switch.temp.compteur=23}] 20700.5 125.4 20382.0
tp @s[scores={switch.temp.compteur=24}] 20702.25 126.1 20382.0
tp @s[scores={switch.temp.compteur=25}] 20704.0 126.8 20382.0
tp @s[scores={switch.temp.compteur=26}] 20705.75 127.5 20382.0
tp @s[scores={switch.temp.compteur=27}] 20707.5 128.2 20382.0
tp @s[scores={switch.temp.compteur=28}] 20709.25 128.9 20382.0
tp @s[scores={switch.temp.compteur=29}] 20711.0 129.6 20382.0
tp @s[scores={switch.temp.compteur=30}] 20712.75 130.3 20382.0
tp @s[scores={switch.temp.compteur=31}] 20714.5 131.0 20382.0
tp @s[scores={switch.temp.compteur=32}] 20716.25 131.7 20382.0
tp @s[scores={switch.temp.compteur=33}] 20718.0 132.4 20382.0
tp @s[scores={switch.temp.compteur=34}] 20719.75 133.1 20382.0
tp @s[scores={switch.temp.compteur=35}] 20721.5 133.8 20382.0
tp @s[scores={switch.temp.compteur=36}] 20723.25 134.5 20382.0
tp @s[scores={switch.temp.compteur=37}] 20725.0 135.2 20382.0
tp @s[scores={switch.temp.compteur=38}] 20726.75 135.9 20382.0
tp @s[scores={switch.temp.compteur=39}] 20728.5 136.6 20382.0
tp @s[scores={switch.temp.compteur=40}] 20730.25 137.3 20382.0
tp @s[scores={switch.temp.compteur=41}] 20732.0 138.0 20382.0

scoreboard players add @s switch.temp.compteur 1
scoreboard players reset @s[scores={switch.temp.compteur=42..}] switch.temp.compteur

