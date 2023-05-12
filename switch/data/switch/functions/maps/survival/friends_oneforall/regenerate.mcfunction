
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 7977 7976 8025 8024

execute if score #regeneration_ticks switch.data matches 20 run clone 7977 0 7976 8025 0 8024 7977 100 7976 replace force
execute if score #regeneration_ticks switch.data matches 22 run clone 7977 1 7976 8025 1 8024 7977 101 7976 replace force
execute if score #regeneration_ticks switch.data matches 24 run clone 7977 2 7976 8025 2 8024 7977 102 7976 replace force
execute if score #regeneration_ticks switch.data matches 26 run clone 7977 3 7976 8025 3 8024 7977 103 7976 replace force
execute if score #regeneration_ticks switch.data matches 28 run clone 7977 4 7976 8025 4 8024 7977 104 7976 replace force
execute if score #regeneration_ticks switch.data matches 30 run clone 7977 5 7976 8025 5 8024 7977 105 7976 replace force
execute if score #regeneration_ticks switch.data matches 32 run clone 7977 6 7976 8025 6 8024 7977 106 7976 replace force
execute if score #regeneration_ticks switch.data matches 34 run clone 7977 7 7976 8025 7 8024 7977 107 7976 replace force
execute if score #regeneration_ticks switch.data matches 36 run clone 7977 8 7976 8025 8 8024 7977 108 7976 replace force
execute if score #regeneration_ticks switch.data matches 38 run clone 7977 9 7976 8025 9 8024 7977 109 7976 replace force
execute if score #regeneration_ticks switch.data matches 40 run clone 7977 10 7976 8025 10 8024 7977 110 7976 replace force
execute if score #regeneration_ticks switch.data matches 42 run clone 7977 11 7976 8025 11 8024 7977 111 7976 replace force
execute if score #regeneration_ticks switch.data matches 44 run clone 7977 12 7976 8025 12 8024 7977 112 7976 replace force
execute if score #regeneration_ticks switch.data matches 46 run clone 7977 13 7976 8025 13 8024 7977 113 7976 replace force
execute if score #regeneration_ticks switch.data matches 48 run clone 7977 14 7976 8025 14 8024 7977 114 7976 replace force
execute if score #regeneration_ticks switch.data matches 50 run clone 7977 15 7976 8025 15 8024 7977 115 7976 replace force
execute if score #regeneration_ticks switch.data matches 52 run clone 7977 16 7976 8025 16 8024 7977 116 7976 replace force
execute if score #regeneration_ticks switch.data matches 54 run clone 7977 17 7976 8025 17 8024 7977 117 7976 replace force
execute if score #regeneration_ticks switch.data matches 56 run clone 7977 18 7976 8025 18 8024 7977 118 7976 replace force
execute if score #regeneration_ticks switch.data matches 58 run clone 7977 19 7976 8025 19 8024 7977 119 7976 replace force
execute if score #regeneration_ticks switch.data matches 60 run clone 7977 20 7976 8025 20 8024 7977 120 7976 replace force
execute if score #regeneration_ticks switch.data matches 62 run clone 7977 21 7976 8025 21 8024 7977 121 7976 replace force
execute if score #regeneration_ticks switch.data matches 64 run clone 7977 22 7976 8025 22 8024 7977 122 7976 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 7977 23 7976 8025 23 8024 7977 123 7976 replace force
execute if score #regeneration_ticks switch.data matches 68 run clone 7977 24 7976 8025 24 8024 7977 124 7976 replace force
execute if score #regeneration_ticks switch.data matches 70 run clone 7977 25 7976 8025 25 8024 7977 125 7976 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 7977 26 7976 8025 26 8024 7977 126 7976 replace force
execute if score #regeneration_ticks switch.data matches 74 run clone 7977 27 7976 8025 27 8024 7977 127 7976 replace force
execute if score #regeneration_ticks switch.data matches 76 run clone 7977 28 7976 8025 28 8024 7977 128 7976 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 7977 29 7976 8025 29 8024 7977 129 7976 replace force
execute if score #regeneration_ticks switch.data matches 80 run clone 7977 30 7976 8025 30 8024 7977 130 7976 replace force
execute if score #regeneration_ticks switch.data matches 82 run clone 7977 31 7976 8025 31 8024 7977 131 7976 replace force

execute if score #regeneration_ticks switch.data matches 84.. run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 84.. run forceload remove 7977 7976 8025 8024
execute if score #regeneration_ticks switch.data matches 84.. run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/friends_oneforall/regenerate 1t

