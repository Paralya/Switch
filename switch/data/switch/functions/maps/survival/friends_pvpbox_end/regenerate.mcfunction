
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 12955 12955 13046 13045

execute if score #regeneration_ticks switch.data matches 20 run clone 12955 0 12955 13046 0 13045 12955 100 12955 replace force
execute if score #regeneration_ticks switch.data matches 22 run clone 12955 1 12955 13046 1 13045 12955 101 12955 replace force
execute if score #regeneration_ticks switch.data matches 24 run clone 12955 2 12955 13046 2 13045 12955 102 12955 replace force
execute if score #regeneration_ticks switch.data matches 26 run clone 12955 3 12955 13046 3 13045 12955 103 12955 replace force
execute if score #regeneration_ticks switch.data matches 28 run clone 12955 4 12955 13046 4 13045 12955 104 12955 replace force
execute if score #regeneration_ticks switch.data matches 30 run clone 12955 5 12955 13046 5 13045 12955 105 12955 replace force
execute if score #regeneration_ticks switch.data matches 32 run clone 12955 6 12955 13046 6 13045 12955 106 12955 replace force
execute if score #regeneration_ticks switch.data matches 34 run clone 12955 7 12955 13046 7 13045 12955 107 12955 replace force
execute if score #regeneration_ticks switch.data matches 36 run clone 12955 8 12955 13046 8 13045 12955 108 12955 replace force
execute if score #regeneration_ticks switch.data matches 38 run clone 12955 9 12955 13046 9 13045 12955 109 12955 replace force
execute if score #regeneration_ticks switch.data matches 40 run clone 12955 10 12955 13046 10 13045 12955 110 12955 replace force
execute if score #regeneration_ticks switch.data matches 42 run clone 12955 11 12955 13046 11 13045 12955 111 12955 replace force
execute if score #regeneration_ticks switch.data matches 44 run clone 12955 12 12955 13046 12 13045 12955 112 12955 replace force
execute if score #regeneration_ticks switch.data matches 46 run clone 12955 13 12955 13046 13 13045 12955 113 12955 replace force
execute if score #regeneration_ticks switch.data matches 48 run clone 12955 14 12955 13046 14 13045 12955 114 12955 replace force
execute if score #regeneration_ticks switch.data matches 50 run clone 12955 15 12955 13046 15 13045 12955 115 12955 replace force
execute if score #regeneration_ticks switch.data matches 52 run clone 12955 16 12955 13046 16 13045 12955 116 12955 replace force
execute if score #regeneration_ticks switch.data matches 54 run clone 12955 17 12955 13046 17 13045 12955 117 12955 replace force
execute if score #regeneration_ticks switch.data matches 56 run clone 12955 18 12955 13046 18 13045 12955 118 12955 replace force
execute if score #regeneration_ticks switch.data matches 58 run clone 12955 19 12955 13046 19 13045 12955 119 12955 replace force
execute if score #regeneration_ticks switch.data matches 60 run clone 12955 20 12955 13046 20 13045 12955 120 12955 replace force
execute if score #regeneration_ticks switch.data matches 62 run clone 12955 21 12955 13046 21 13045 12955 121 12955 replace force
execute if score #regeneration_ticks switch.data matches 64 run clone 12955 22 12955 13046 22 13045 12955 122 12955 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 12955 23 12955 13046 23 13045 12955 123 12955 replace force
execute if score #regeneration_ticks switch.data matches 68 run clone 12955 24 12955 13046 24 13045 12955 124 12955 replace force
execute if score #regeneration_ticks switch.data matches 70 run clone 12955 25 12955 13046 25 13045 12955 125 12955 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 12955 26 12955 13046 26 13045 12955 126 12955 replace force
execute if score #regeneration_ticks switch.data matches 74 run clone 12955 27 12955 13046 27 13045 12955 127 12955 replace force
execute if score #regeneration_ticks switch.data matches 76 run clone 12955 28 12955 13046 28 13045 12955 128 12955 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 12955 29 12955 13046 29 13045 12955 129 12955 replace force
execute if score #regeneration_ticks switch.data matches 80 run clone 12955 30 12955 13046 30 13045 12955 130 12955 replace force
execute if score #regeneration_ticks switch.data matches 82 run clone 12955 31 12955 13046 31 13045 12955 131 12955 replace force
execute if score #regeneration_ticks switch.data matches 84 run clone 12955 32 12955 13046 32 13045 12955 132 12955 replace force
execute if score #regeneration_ticks switch.data matches 86 run clone 12955 33 12955 13046 33 13045 12955 133 12955 replace force

execute if score #regeneration_ticks switch.data matches 88.. run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 88.. run forceload remove 12955 12955 13046 13045
execute if score #regeneration_ticks switch.data matches 88.. run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/friends_pvpbox_end/regenerate 1t

