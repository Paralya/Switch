
scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 499 499 551 551

execute if score #regeneration_ticks switch.data matches 20 run clone 499 0 499 551 0 551 499 91 499 replace force
execute if score #regeneration_ticks switch.data matches 22 run clone 499 1 499 551 1 551 499 92 499 replace force
execute if score #regeneration_ticks switch.data matches 24 run clone 499 2 499 551 2 551 499 93 499 replace force
execute if score #regeneration_ticks switch.data matches 26 run clone 499 3 499 551 3 551 499 94 499 replace force
execute if score #regeneration_ticks switch.data matches 28 run clone 499 4 499 551 4 551 499 95 499 replace force
execute if score #regeneration_ticks switch.data matches 30 run clone 499 5 499 551 5 551 499 96 499 replace force
execute if score #regeneration_ticks switch.data matches 32 run clone 499 6 499 551 6 551 499 97 499 replace force
execute if score #regeneration_ticks switch.data matches 34 run clone 499 7 499 551 7 551 499 98 499 replace force
execute if score #regeneration_ticks switch.data matches 36 run clone 499 8 499 551 8 551 499 99 499 replace force
execute if score #regeneration_ticks switch.data matches 38 run clone 499 9 499 551 9 551 499 100 499 replace force
execute if score #regeneration_ticks switch.data matches 40 run clone 499 10 499 551 10 551 499 101 499 replace force
execute if score #regeneration_ticks switch.data matches 42 run clone 499 11 499 551 11 551 499 102 499 replace force
execute if score #regeneration_ticks switch.data matches 44 run clone 499 12 499 551 12 551 499 103 499 replace force
execute if score #regeneration_ticks switch.data matches 46 run clone 499 13 499 551 13 551 499 104 499 replace force
execute if score #regeneration_ticks switch.data matches 48 run clone 499 14 499 551 14 551 499 105 499 replace force
execute if score #regeneration_ticks switch.data matches 50 run clone 499 15 499 551 15 551 499 106 499 replace force
execute if score #regeneration_ticks switch.data matches 52 run clone 499 16 499 551 16 551 499 107 499 replace force
execute if score #regeneration_ticks switch.data matches 54 run clone 499 17 499 551 17 551 499 108 499 replace force
execute if score #regeneration_ticks switch.data matches 56 run clone 499 18 499 551 18 551 499 109 499 replace force
execute if score #regeneration_ticks switch.data matches 58 run clone 499 19 499 551 19 551 499 110 499 replace force
execute if score #regeneration_ticks switch.data matches 60 run clone 499 20 499 551 20 551 499 111 499 replace force
execute if score #regeneration_ticks switch.data matches 62 run clone 499 21 499 551 21 551 499 112 499 replace force
execute if score #regeneration_ticks switch.data matches 64 run clone 499 22 499 551 22 551 499 113 499 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 499 23 499 551 23 551 499 114 499 replace force
execute if score #regeneration_ticks switch.data matches 68 run clone 499 24 499 551 24 551 499 115 499 replace force
execute if score #regeneration_ticks switch.data matches 70 run clone 499 25 499 551 25 551 499 116 499 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 499 26 499 551 26 551 499 117 499 replace force
execute if score #regeneration_ticks switch.data matches 74 run clone 499 27 499 551 27 551 499 118 499 replace force
execute if score #regeneration_ticks switch.data matches 76 run clone 499 28 499 551 28 551 499 119 499 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 499 29 499 551 29 551 499 120 499 replace force
execute if score #regeneration_ticks switch.data matches 80 run clone 499 30 499 551 30 551 499 121 499 replace force
execute if score #regeneration_ticks switch.data matches 82 run clone 499 31 499 551 31 551 499 122 499 replace force
execute if score #regeneration_ticks switch.data matches 84 run clone 499 32 499 551 32 551 499 123 499 replace force
execute if score #regeneration_ticks switch.data matches 86 run clone 499 33 499 551 33 551 499 124 499 replace force
execute if score #regeneration_ticks switch.data matches 88 run clone 499 34 499 551 34 551 499 125 499 replace force
execute if score #regeneration_ticks switch.data matches 90 run clone 499 35 499 551 35 551 499 126 499 replace force
execute if score #regeneration_ticks switch.data matches 92 run clone 499 36 499 551 36 551 499 127 499 replace force
execute if score #regeneration_ticks switch.data matches 94 run clone 499 37 499 551 37 551 499 128 499 replace force
execute if score #regeneration_ticks switch.data matches 96 run clone 499 38 499 551 38 551 499 129 499 replace force
execute if score #regeneration_ticks switch.data matches 98 run clone 499 39 499 551 39 551 499 130 499 replace force
execute if score #regeneration_ticks switch.data matches 100 run clone 499 40 499 551 40 551 499 131 499 replace force
execute if score #regeneration_ticks switch.data matches 102 run clone 499 41 499 551 41 551 499 132 499 replace force
execute if score #regeneration_ticks switch.data matches 104 run clone 499 42 499 551 42 551 499 133 499 replace force
execute if score #regeneration_ticks switch.data matches 106 run clone 499 43 499 551 43 551 499 134 499 replace force

execute if score #regeneration_ticks switch.data matches 106 run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 106 run forceload remove 499 499 551 551
execute if score #regeneration_ticks switch.data matches 106 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/laser_game/regenerate 1t

