
data modify storage switch:main oldMotion set from entity @e[type=pig,predicate=switch:mario_kart/have_player_passenger,limit=1] Motion

data modify entity @s Pos set value [0.0d, 0.0d, 0.0d]
data modify entity @s Pos[1] set value 0.0d

execute store result score #pos_x switch.data run data get entity @s Pos[0] 100000
execute store result score #pos_z switch.data run data get entity @s Pos[2] 100000
execute store result score #old_motion_x switch.data run data get entity @s Motion[0] 1000000
execute store result score #old_motion_z switch.data run data get entity @s Motion[2] 1000000
scoreboard players operation #old_motion_x switch.data *= #10 switch.data
scoreboard players operation #old_motion_z switch.data *= #10 switch.data
scoreboard players operation #pos_x switch.data += #motion_x switch.data
scoreboard players operation #pos_z switch.data += #motion_z switch.data
scoreboard players operation #pos_x switch.data += #old_motion_x switch.data
scoreboard players operation #pos_z switch.data += #old_motion_z switch.data

scoreboard players set #multiplier switch.data 100
scoreboard players operation #engine switch.data = @e[type=pig,predicate=switch:mario_kart/have_player_passenger,limit=1] switch.temp.engine
scoreboard players operation #engine switch.data /= #10 switch.data
scoreboard players operation #multiplier switch.data += #engine switch.data

execute store result entity @s Pos[0] double 0.000001 run scoreboard players get #pos_x switch.data
execute store result entity @s Pos[2] double 0.000001 run scoreboard players get #pos_z switch.data




data modify storage switch:main newPos set from entity @s Pos
#execute as @e[type=pig,predicate=switch:mario_kart/have_player_passenger] run data modify entity @s Motion[0] set from storage switch:main newPos[0]
#execute as @e[type=pig,predicate=switch:mario_kart/have_player_passenger] run data modify entity @s Motion[2] set from storage switch:main newPos[2]

#
#multiplier = 100
#while multiplier <= 200:
#    print('execute if score #multiplier switch.data matches '+str(multiplier)+' run attribute @e[type=pig,limit=1] generic.movement_speed base set '+str(round(0.2+(multiplier-100)*0.006,3)))
#    multiplier += 1
#

execute if score #multiplier switch.data matches 100 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.200
execute if score #multiplier switch.data matches 101 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.212
execute if score #multiplier switch.data matches 102 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.224
execute if score #multiplier switch.data matches 103 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.236
execute if score #multiplier switch.data matches 104 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.248
execute if score #multiplier switch.data matches 105 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.260
execute if score #multiplier switch.data matches 106 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.272
execute if score #multiplier switch.data matches 107 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.284
execute if score #multiplier switch.data matches 108 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.296
execute if score #multiplier switch.data matches 109 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.308
execute if score #multiplier switch.data matches 110 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.320
execute if score #multiplier switch.data matches 111 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.332
execute if score #multiplier switch.data matches 112 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.344
execute if score #multiplier switch.data matches 113 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.356
execute if score #multiplier switch.data matches 114 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.368
execute if score #multiplier switch.data matches 115 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.380
execute if score #multiplier switch.data matches 116 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.392
execute if score #multiplier switch.data matches 117 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.404
execute if score #multiplier switch.data matches 118 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.416
execute if score #multiplier switch.data matches 119 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.428
execute if score #multiplier switch.data matches 120 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.440
execute if score #multiplier switch.data matches 121 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.452
execute if score #multiplier switch.data matches 122 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.464
execute if score #multiplier switch.data matches 123 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.476
execute if score #multiplier switch.data matches 124 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.488
execute if score #multiplier switch.data matches 125 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.500
execute if score #multiplier switch.data matches 126 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.512
execute if score #multiplier switch.data matches 127 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.524
execute if score #multiplier switch.data matches 128 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.536
execute if score #multiplier switch.data matches 129 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.548
execute if score #multiplier switch.data matches 130 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.560
execute if score #multiplier switch.data matches 131 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.572
execute if score #multiplier switch.data matches 132 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.584
execute if score #multiplier switch.data matches 133 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.596
execute if score #multiplier switch.data matches 134 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.608
execute if score #multiplier switch.data matches 135 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.620
execute if score #multiplier switch.data matches 136 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.632
execute if score #multiplier switch.data matches 137 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.644
execute if score #multiplier switch.data matches 138 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.656
execute if score #multiplier switch.data matches 139 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.668
execute if score #multiplier switch.data matches 140 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.680
execute if score #multiplier switch.data matches 141 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.692
execute if score #multiplier switch.data matches 142 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.704
execute if score #multiplier switch.data matches 143 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.716
execute if score #multiplier switch.data matches 144 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.728
execute if score #multiplier switch.data matches 145 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.740
execute if score #multiplier switch.data matches 146 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.752
execute if score #multiplier switch.data matches 147 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.764
execute if score #multiplier switch.data matches 148 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.776
execute if score #multiplier switch.data matches 149 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.788
execute if score #multiplier switch.data matches 150 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.800
execute if score #multiplier switch.data matches 151 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.812
execute if score #multiplier switch.data matches 152 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.824
execute if score #multiplier switch.data matches 153 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.836
execute if score #multiplier switch.data matches 154 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.848
execute if score #multiplier switch.data matches 155 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.860
execute if score #multiplier switch.data matches 156 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.872
execute if score #multiplier switch.data matches 157 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.884
execute if score #multiplier switch.data matches 158 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.896
execute if score #multiplier switch.data matches 159 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.908
execute if score #multiplier switch.data matches 160 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.920
execute if score #multiplier switch.data matches 161 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.932
execute if score #multiplier switch.data matches 162 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.944
execute if score #multiplier switch.data matches 163 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.956
execute if score #multiplier switch.data matches 164 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.968
execute if score #multiplier switch.data matches 165 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.980
execute if score #multiplier switch.data matches 166 run attribute @e[type=pig,limit=1] generic.movement_speed base set 0.992
execute if score #multiplier switch.data matches 167 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.004
execute if score #multiplier switch.data matches 168 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.016
execute if score #multiplier switch.data matches 169 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.028
execute if score #multiplier switch.data matches 170 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.040
execute if score #multiplier switch.data matches 171 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.052
execute if score #multiplier switch.data matches 172 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.064
execute if score #multiplier switch.data matches 173 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.076
execute if score #multiplier switch.data matches 174 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.088
execute if score #multiplier switch.data matches 175 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.100
execute if score #multiplier switch.data matches 176 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.112
execute if score #multiplier switch.data matches 177 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.124
execute if score #multiplier switch.data matches 178 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.136
execute if score #multiplier switch.data matches 179 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.148
execute if score #multiplier switch.data matches 180 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.160
execute if score #multiplier switch.data matches 181 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.172
execute if score #multiplier switch.data matches 182 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.184
execute if score #multiplier switch.data matches 183 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.196
execute if score #multiplier switch.data matches 184 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.208
execute if score #multiplier switch.data matches 185 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.220
execute if score #multiplier switch.data matches 186 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.232
execute if score #multiplier switch.data matches 187 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.244
execute if score #multiplier switch.data matches 188 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.256
execute if score #multiplier switch.data matches 189 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.268
execute if score #multiplier switch.data matches 190 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.280
execute if score #multiplier switch.data matches 191 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.292
execute if score #multiplier switch.data matches 192 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.304
execute if score #multiplier switch.data matches 193 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.316
execute if score #multiplier switch.data matches 194 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.328
execute if score #multiplier switch.data matches 195 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.340
execute if score #multiplier switch.data matches 196 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.352
execute if score #multiplier switch.data matches 197 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.364
execute if score #multiplier switch.data matches 198 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.376
execute if score #multiplier switch.data matches 199 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.388
execute if score #multiplier switch.data matches 200 run attribute @e[type=pig,limit=1] generic.movement_speed base set 1.400

scoreboard players add @e[type=pig,predicate=switch:mario_kart/have_player_passenger] switch.temp.engine 0
scoreboard players add @e[type=pig,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=..2}] switch.temp.engine 100
scoreboard players operation @e[type=pig,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=..100000}] switch.temp.engine *= #10 switch.data
scoreboard players operation @e[type=pig,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=..100000}] switch.temp.engine /= #9 switch.data
scoreboard players set @e[type=pig,predicate=switch:mario_kart/have_player_passenger,scores={switch.temp.engine=1001..}] switch.temp.engine 1000



#/attribute @e[type=pig,limit=1] generic.movement_speed base set 0.4
#multiplication selon le moteur
#On retient le Motion et on l'ajoute tout en ajoutant le nouveau et en divisant le tout par 2



kill @s
