
#> switch:maps/survival/abandoned_city/regeneration_on_marker
#
# @within	switch:maps/survival/abandoned_city/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_abandoned_city_y switch.data

execute if score #rg_abandoned_city_mod switch.data matches 0 at @s in switch:game run particle cloud 44000 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 0 at @s run clone from minecraft:overworld 43999 ~ 43999 44001 ~ 46001 to switch:game 43999 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 1 at @s in switch:game run particle cloud 44001 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 1 at @s run clone from minecraft:overworld 44001 ~ 43999 44002 ~ 46001 to switch:game 44001 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 2 at @s in switch:game run particle cloud 44003 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 2 at @s run clone from minecraft:overworld 44002 ~ 43999 44004 ~ 46001 to switch:game 44002 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 3 at @s in switch:game run particle cloud 44004 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 3 at @s run clone from minecraft:overworld 44004 ~ 43999 44005 ~ 46001 to switch:game 44004 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 4 at @s in switch:game run particle cloud 44006 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 4 at @s run clone from minecraft:overworld 44005 ~ 43999 44007 ~ 46001 to switch:game 44005 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 5 at @s in switch:game run particle cloud 44008 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 5 at @s run clone from minecraft:overworld 44007 ~ 43999 44009 ~ 46001 to switch:game 44007 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 6 at @s in switch:game run particle cloud 44009 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 6 at @s run clone from minecraft:overworld 44009 ~ 43999 44010 ~ 46001 to switch:game 44009 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 7 at @s in switch:game run particle cloud 44011 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 7 at @s run clone from minecraft:overworld 44010 ~ 43999 44012 ~ 46001 to switch:game 44010 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 8 at @s in switch:game run particle cloud 44012 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 8 at @s run clone from minecraft:overworld 44012 ~ 43999 44013 ~ 46001 to switch:game 44012 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 9 at @s in switch:game run particle cloud 44014 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 9 at @s run clone from minecraft:overworld 44013 ~ 43999 44015 ~ 46001 to switch:game 44013 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 10 at @s in switch:game run particle cloud 44016 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 10 at @s run clone from minecraft:overworld 44015 ~ 43999 44017 ~ 46001 to switch:game 44015 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 11 at @s in switch:game run particle cloud 44017 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 11 at @s run clone from minecraft:overworld 44017 ~ 43999 44018 ~ 46001 to switch:game 44017 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 12 at @s in switch:game run particle cloud 44019 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 12 at @s run clone from minecraft:overworld 44018 ~ 43999 44020 ~ 46001 to switch:game 44018 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 13 at @s in switch:game run particle cloud 44020 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 13 at @s run clone from minecraft:overworld 44020 ~ 43999 44021 ~ 46001 to switch:game 44020 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 14 at @s in switch:game run particle cloud 44022 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 14 at @s run clone from minecraft:overworld 44021 ~ 43999 44023 ~ 46001 to switch:game 44021 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 15 at @s in switch:game run particle cloud 44024 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 15 at @s run clone from minecraft:overworld 44023 ~ 43999 44025 ~ 46001 to switch:game 44023 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 16 at @s in switch:game run particle cloud 44025 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 16 at @s run clone from minecraft:overworld 44025 ~ 43999 44026 ~ 46001 to switch:game 44025 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 17 at @s in switch:game run particle cloud 44027 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 17 at @s run clone from minecraft:overworld 44026 ~ 43999 44028 ~ 46001 to switch:game 44026 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 18 at @s in switch:game run particle cloud 44028 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 18 at @s run clone from minecraft:overworld 44028 ~ 43999 44029 ~ 46001 to switch:game 44028 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 19 at @s in switch:game run particle cloud 44030 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 19 at @s run clone from minecraft:overworld 44029 ~ 43999 44031 ~ 46001 to switch:game 44029 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 20 at @s in switch:game run particle cloud 44032 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 20 at @s run clone from minecraft:overworld 44031 ~ 43999 44033 ~ 46001 to switch:game 44031 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 21 at @s in switch:game run particle cloud 44033 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 21 at @s run clone from minecraft:overworld 44033 ~ 43999 44034 ~ 46001 to switch:game 44033 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 22 at @s in switch:game run particle cloud 44035 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 22 at @s run clone from minecraft:overworld 44034 ~ 43999 44036 ~ 46001 to switch:game 44034 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 23 at @s in switch:game run particle cloud 44036 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 23 at @s run clone from minecraft:overworld 44036 ~ 43999 44037 ~ 46001 to switch:game 44036 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 24 at @s in switch:game run particle cloud 44038 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 24 at @s run clone from minecraft:overworld 44037 ~ 43999 44039 ~ 46001 to switch:game 44037 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 25 at @s in switch:game run particle cloud 44039 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 25 at @s run clone from minecraft:overworld 44039 ~ 43999 44040 ~ 46001 to switch:game 44039 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 26 at @s in switch:game run particle cloud 44041 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 26 at @s run clone from minecraft:overworld 44040 ~ 43999 44042 ~ 46001 to switch:game 44040 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 27 at @s in switch:game run particle cloud 44043 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 27 at @s run clone from minecraft:overworld 44042 ~ 43999 44044 ~ 46001 to switch:game 44042 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 28 at @s in switch:game run particle cloud 44044 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 28 at @s run clone from minecraft:overworld 44044 ~ 43999 44045 ~ 46001 to switch:game 44044 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 29 at @s in switch:game run particle cloud 44046 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 29 at @s run clone from minecraft:overworld 44045 ~ 43999 44047 ~ 46001 to switch:game 44045 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 30 at @s in switch:game run particle cloud 44047 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 30 at @s run clone from minecraft:overworld 44047 ~ 43999 44048 ~ 46001 to switch:game 44047 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 31 at @s in switch:game run particle cloud 44049 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 31 at @s run clone from minecraft:overworld 44048 ~ 43999 44050 ~ 46001 to switch:game 44048 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 32 at @s in switch:game run particle cloud 44051 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 32 at @s run clone from minecraft:overworld 44050 ~ 43999 44052 ~ 46001 to switch:game 44050 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 33 at @s in switch:game run particle cloud 44052 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 33 at @s run clone from minecraft:overworld 44052 ~ 43999 44053 ~ 46001 to switch:game 44052 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 34 at @s in switch:game run particle cloud 44054 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 34 at @s run clone from minecraft:overworld 44053 ~ 43999 44055 ~ 46001 to switch:game 44053 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 35 at @s in switch:game run particle cloud 44055 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 35 at @s run clone from minecraft:overworld 44055 ~ 43999 44056 ~ 46001 to switch:game 44055 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 36 at @s in switch:game run particle cloud 44057 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 36 at @s run clone from minecraft:overworld 44056 ~ 43999 44058 ~ 46001 to switch:game 44056 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 37 at @s in switch:game run particle cloud 44059 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 37 at @s run clone from minecraft:overworld 44058 ~ 43999 44060 ~ 46001 to switch:game 44058 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 38 at @s in switch:game run particle cloud 44060 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 38 at @s run clone from minecraft:overworld 44060 ~ 43999 44061 ~ 46001 to switch:game 44060 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 39 at @s in switch:game run particle cloud 44062 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 39 at @s run clone from minecraft:overworld 44061 ~ 43999 44063 ~ 46001 to switch:game 44061 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 40 at @s in switch:game run particle cloud 44063 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 40 at @s run clone from minecraft:overworld 44063 ~ 43999 44064 ~ 46001 to switch:game 44063 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 41 at @s in switch:game run particle cloud 44065 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 41 at @s run clone from minecraft:overworld 44064 ~ 43999 44066 ~ 46001 to switch:game 44064 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 42 at @s in switch:game run particle cloud 44067 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 42 at @s run clone from minecraft:overworld 44066 ~ 43999 44068 ~ 46001 to switch:game 44066 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 43 at @s in switch:game run particle cloud 44068 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 43 at @s run clone from minecraft:overworld 44068 ~ 43999 44069 ~ 46001 to switch:game 44068 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 44 at @s in switch:game run particle cloud 44070 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 44 at @s run clone from minecraft:overworld 44069 ~ 43999 44071 ~ 46001 to switch:game 44069 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 45 at @s in switch:game run particle cloud 44071 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 45 at @s run clone from minecraft:overworld 44071 ~ 43999 44072 ~ 46001 to switch:game 44071 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 46 at @s in switch:game run particle cloud 44073 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 46 at @s run clone from minecraft:overworld 44072 ~ 43999 44074 ~ 46001 to switch:game 44072 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 47 at @s in switch:game run particle cloud 44075 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 47 at @s run clone from minecraft:overworld 44074 ~ 43999 44076 ~ 46001 to switch:game 44074 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 48 at @s in switch:game run particle cloud 44076 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 48 at @s run clone from minecraft:overworld 44076 ~ 43999 44077 ~ 46001 to switch:game 44076 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 49 at @s in switch:game run particle cloud 44078 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 49 at @s run clone from minecraft:overworld 44077 ~ 43999 44079 ~ 46001 to switch:game 44077 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 50 at @s in switch:game run particle cloud 44079 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 50 at @s run clone from minecraft:overworld 44079 ~ 43999 44080 ~ 46001 to switch:game 44079 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 51 at @s in switch:game run particle cloud 44081 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 51 at @s run clone from minecraft:overworld 44080 ~ 43999 44082 ~ 46001 to switch:game 44080 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 52 at @s in switch:game run particle cloud 44083 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 52 at @s run clone from minecraft:overworld 44082 ~ 43999 44084 ~ 46001 to switch:game 44082 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 53 at @s in switch:game run particle cloud 44084 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 53 at @s run clone from minecraft:overworld 44084 ~ 43999 44085 ~ 46001 to switch:game 44084 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 54 at @s in switch:game run particle cloud 44086 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 54 at @s run clone from minecraft:overworld 44085 ~ 43999 44087 ~ 46001 to switch:game 44085 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 55 at @s in switch:game run particle cloud 44087 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 55 at @s run clone from minecraft:overworld 44087 ~ 43999 44088 ~ 46001 to switch:game 44087 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 56 at @s in switch:game run particle cloud 44089 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 56 at @s run clone from minecraft:overworld 44088 ~ 43999 44090 ~ 46001 to switch:game 44088 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 57 at @s in switch:game run particle cloud 44091 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 57 at @s run clone from minecraft:overworld 44090 ~ 43999 44092 ~ 46001 to switch:game 44090 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 58 at @s in switch:game run particle cloud 44092 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 58 at @s run clone from minecraft:overworld 44092 ~ 43999 44093 ~ 46001 to switch:game 44092 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 59 at @s in switch:game run particle cloud 44094 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 59 at @s run clone from minecraft:overworld 44093 ~ 43999 44095 ~ 46001 to switch:game 44093 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 60 at @s in switch:game run particle cloud 44095 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 60 at @s run clone from minecraft:overworld 44095 ~ 43999 44096 ~ 46001 to switch:game 44095 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 61 at @s in switch:game run particle cloud 44097 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 61 at @s run clone from minecraft:overworld 44096 ~ 43999 44098 ~ 46001 to switch:game 44096 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 62 at @s in switch:game run particle cloud 44099 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 62 at @s run clone from minecraft:overworld 44098 ~ 43999 44100 ~ 46001 to switch:game 44098 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 63 at @s in switch:game run particle cloud 44100 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 63 at @s run clone from minecraft:overworld 44100 ~ 43999 44101 ~ 46001 to switch:game 44100 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 64 at @s in switch:game run particle cloud 44102 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 64 at @s run clone from minecraft:overworld 44101 ~ 43999 44103 ~ 46001 to switch:game 44101 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 65 at @s in switch:game run particle cloud 44103 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 65 at @s run clone from minecraft:overworld 44103 ~ 43999 44104 ~ 46001 to switch:game 44103 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 66 at @s in switch:game run particle cloud 44105 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 66 at @s run clone from minecraft:overworld 44104 ~ 43999 44106 ~ 46001 to switch:game 44104 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 67 at @s in switch:game run particle cloud 44106 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 67 at @s run clone from minecraft:overworld 44106 ~ 43999 44107 ~ 46001 to switch:game 44106 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 68 at @s in switch:game run particle cloud 44108 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 68 at @s run clone from minecraft:overworld 44107 ~ 43999 44109 ~ 46001 to switch:game 44107 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 69 at @s in switch:game run particle cloud 44110 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 69 at @s run clone from minecraft:overworld 44109 ~ 43999 44111 ~ 46001 to switch:game 44109 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 70 at @s in switch:game run particle cloud 44111 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 70 at @s run clone from minecraft:overworld 44111 ~ 43999 44112 ~ 46001 to switch:game 44111 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 71 at @s in switch:game run particle cloud 44113 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 71 at @s run clone from minecraft:overworld 44112 ~ 43999 44114 ~ 46001 to switch:game 44112 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 72 at @s in switch:game run particle cloud 44114 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 72 at @s run clone from minecraft:overworld 44114 ~ 43999 44115 ~ 46001 to switch:game 44114 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 73 at @s in switch:game run particle cloud 44116 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 73 at @s run clone from minecraft:overworld 44115 ~ 43999 44117 ~ 46001 to switch:game 44115 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 74 at @s in switch:game run particle cloud 44118 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 74 at @s run clone from minecraft:overworld 44117 ~ 43999 44119 ~ 46001 to switch:game 44117 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 75 at @s in switch:game run particle cloud 44119 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 75 at @s run clone from minecraft:overworld 44119 ~ 43999 44120 ~ 46001 to switch:game 44119 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 76 at @s in switch:game run particle cloud 44121 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 76 at @s run clone from minecraft:overworld 44120 ~ 43999 44122 ~ 46001 to switch:game 44120 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 77 at @s in switch:game run particle cloud 44122 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 77 at @s run clone from minecraft:overworld 44122 ~ 43999 44123 ~ 46001 to switch:game 44122 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 78 at @s in switch:game run particle cloud 44124 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 78 at @s run clone from minecraft:overworld 44123 ~ 43999 44125 ~ 46001 to switch:game 44123 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 79 at @s in switch:game run particle cloud 44126 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 79 at @s run clone from minecraft:overworld 44125 ~ 43999 44127 ~ 46001 to switch:game 44125 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 80 at @s in switch:game run particle cloud 44127 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 80 at @s run clone from minecraft:overworld 44127 ~ 43999 44128 ~ 46001 to switch:game 44127 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 81 at @s in switch:game run particle cloud 44129 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 81 at @s run clone from minecraft:overworld 44128 ~ 43999 44130 ~ 46001 to switch:game 44128 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 82 at @s in switch:game run particle cloud 44130 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 82 at @s run clone from minecraft:overworld 44130 ~ 43999 44131 ~ 46001 to switch:game 44130 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 83 at @s in switch:game run particle cloud 44132 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 83 at @s run clone from minecraft:overworld 44131 ~ 43999 44133 ~ 46001 to switch:game 44131 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 84 at @s in switch:game run particle cloud 44134 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 84 at @s run clone from minecraft:overworld 44133 ~ 43999 44135 ~ 46001 to switch:game 44133 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 85 at @s in switch:game run particle cloud 44135 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 85 at @s run clone from minecraft:overworld 44135 ~ 43999 44136 ~ 46001 to switch:game 44135 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 86 at @s in switch:game run particle cloud 44137 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 86 at @s run clone from minecraft:overworld 44136 ~ 43999 44138 ~ 46001 to switch:game 44136 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 87 at @s in switch:game run particle cloud 44138 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 87 at @s run clone from minecraft:overworld 44138 ~ 43999 44139 ~ 46001 to switch:game 44138 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 88 at @s in switch:game run particle cloud 44140 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 88 at @s run clone from minecraft:overworld 44139 ~ 43999 44141 ~ 46001 to switch:game 44139 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 89 at @s in switch:game run particle cloud 44142 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 89 at @s run clone from minecraft:overworld 44141 ~ 43999 44143 ~ 46001 to switch:game 44141 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 90 at @s in switch:game run particle cloud 44143 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 90 at @s run clone from minecraft:overworld 44143 ~ 43999 44144 ~ 46001 to switch:game 44143 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 91 at @s in switch:game run particle cloud 44145 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 91 at @s run clone from minecraft:overworld 44144 ~ 43999 44146 ~ 46001 to switch:game 44144 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 92 at @s in switch:game run particle cloud 44146 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 92 at @s run clone from minecraft:overworld 44146 ~ 43999 44147 ~ 46001 to switch:game 44146 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 93 at @s in switch:game run particle cloud 44148 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 93 at @s run clone from minecraft:overworld 44147 ~ 43999 44149 ~ 46001 to switch:game 44147 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 94 at @s in switch:game run particle cloud 44150 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 94 at @s run clone from minecraft:overworld 44149 ~ 43999 44151 ~ 46001 to switch:game 44149 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 95 at @s in switch:game run particle cloud 44151 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 95 at @s run clone from minecraft:overworld 44151 ~ 43999 44152 ~ 46001 to switch:game 44151 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 96 at @s in switch:game run particle cloud 44153 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 96 at @s run clone from minecraft:overworld 44152 ~ 43999 44154 ~ 46001 to switch:game 44152 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 97 at @s in switch:game run particle cloud 44154 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 97 at @s run clone from minecraft:overworld 44154 ~ 43999 44155 ~ 46001 to switch:game 44154 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 98 at @s in switch:game run particle cloud 44156 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 98 at @s run clone from minecraft:overworld 44155 ~ 43999 44157 ~ 46001 to switch:game 44155 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 99 at @s in switch:game run particle cloud 44158 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 99 at @s run clone from minecraft:overworld 44157 ~ 43999 44159 ~ 46001 to switch:game 44157 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 100 at @s in switch:game run particle cloud 44159 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 100 at @s run clone from minecraft:overworld 44159 ~ 43999 44160 ~ 46001 to switch:game 44159 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 101 at @s in switch:game run particle cloud 44161 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 101 at @s run clone from minecraft:overworld 44160 ~ 43999 44162 ~ 46001 to switch:game 44160 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 102 at @s in switch:game run particle cloud 44162 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 102 at @s run clone from minecraft:overworld 44162 ~ 43999 44163 ~ 46001 to switch:game 44162 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 103 at @s in switch:game run particle cloud 44164 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 103 at @s run clone from minecraft:overworld 44163 ~ 43999 44165 ~ 46001 to switch:game 44163 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 104 at @s in switch:game run particle cloud 44166 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 104 at @s run clone from minecraft:overworld 44165 ~ 43999 44167 ~ 46001 to switch:game 44165 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 105 at @s in switch:game run particle cloud 44167 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 105 at @s run clone from minecraft:overworld 44167 ~ 43999 44168 ~ 46001 to switch:game 44167 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 106 at @s in switch:game run particle cloud 44169 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 106 at @s run clone from minecraft:overworld 44168 ~ 43999 44170 ~ 46001 to switch:game 44168 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 107 at @s in switch:game run particle cloud 44170 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 107 at @s run clone from minecraft:overworld 44170 ~ 43999 44171 ~ 46001 to switch:game 44170 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 108 at @s in switch:game run particle cloud 44172 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 108 at @s run clone from minecraft:overworld 44171 ~ 43999 44173 ~ 46001 to switch:game 44171 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 109 at @s in switch:game run particle cloud 44174 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 109 at @s run clone from minecraft:overworld 44173 ~ 43999 44175 ~ 46001 to switch:game 44173 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 110 at @s in switch:game run particle cloud 44175 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 110 at @s run clone from minecraft:overworld 44175 ~ 43999 44176 ~ 46001 to switch:game 44175 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 111 at @s in switch:game run particle cloud 44177 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 111 at @s run clone from minecraft:overworld 44176 ~ 43999 44178 ~ 46001 to switch:game 44176 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 112 at @s in switch:game run particle cloud 44178 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 112 at @s run clone from minecraft:overworld 44178 ~ 43999 44179 ~ 46001 to switch:game 44178 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 113 at @s in switch:game run particle cloud 44180 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 113 at @s run clone from minecraft:overworld 44179 ~ 43999 44181 ~ 46001 to switch:game 44179 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 114 at @s in switch:game run particle cloud 44181 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 114 at @s run clone from minecraft:overworld 44181 ~ 43999 44182 ~ 46001 to switch:game 44181 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 115 at @s in switch:game run particle cloud 44183 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 115 at @s run clone from minecraft:overworld 44182 ~ 43999 44184 ~ 46001 to switch:game 44182 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 116 at @s in switch:game run particle cloud 44185 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 116 at @s run clone from minecraft:overworld 44184 ~ 43999 44186 ~ 46001 to switch:game 44184 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 117 at @s in switch:game run particle cloud 44186 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 117 at @s run clone from minecraft:overworld 44186 ~ 43999 44187 ~ 46001 to switch:game 44186 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 118 at @s in switch:game run particle cloud 44188 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 118 at @s run clone from minecraft:overworld 44187 ~ 43999 44189 ~ 46001 to switch:game 44187 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 119 at @s in switch:game run particle cloud 44189 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 119 at @s run clone from minecraft:overworld 44189 ~ 43999 44190 ~ 46001 to switch:game 44189 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 120 at @s in switch:game run particle cloud 44191 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 120 at @s run clone from minecraft:overworld 44190 ~ 43999 44192 ~ 46001 to switch:game 44190 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 121 at @s in switch:game run particle cloud 44193 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 121 at @s run clone from minecraft:overworld 44192 ~ 43999 44194 ~ 46001 to switch:game 44192 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 122 at @s in switch:game run particle cloud 44194 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 122 at @s run clone from minecraft:overworld 44194 ~ 43999 44195 ~ 46001 to switch:game 44194 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 123 at @s in switch:game run particle cloud 44196 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 123 at @s run clone from minecraft:overworld 44195 ~ 43999 44197 ~ 46001 to switch:game 44195 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 124 at @s in switch:game run particle cloud 44197 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 124 at @s run clone from minecraft:overworld 44197 ~ 43999 44198 ~ 46001 to switch:game 44197 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 125 at @s in switch:game run particle cloud 44199 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 125 at @s run clone from minecraft:overworld 44198 ~ 43999 44200 ~ 46001 to switch:game 44198 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 126 at @s in switch:game run particle cloud 44201 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 126 at @s run clone from minecraft:overworld 44200 ~ 43999 44202 ~ 46001 to switch:game 44200 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 127 at @s in switch:game run particle cloud 44202 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 127 at @s run clone from minecraft:overworld 44202 ~ 43999 44203 ~ 46001 to switch:game 44202 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 128 at @s in switch:game run particle cloud 44204 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 128 at @s run clone from minecraft:overworld 44203 ~ 43999 44205 ~ 46001 to switch:game 44203 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 129 at @s in switch:game run particle cloud 44205 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 129 at @s run clone from minecraft:overworld 44205 ~ 43999 44206 ~ 46001 to switch:game 44205 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 130 at @s in switch:game run particle cloud 44207 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 130 at @s run clone from minecraft:overworld 44206 ~ 43999 44208 ~ 46001 to switch:game 44206 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 131 at @s in switch:game run particle cloud 44209 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 131 at @s run clone from minecraft:overworld 44208 ~ 43999 44210 ~ 46001 to switch:game 44208 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 132 at @s in switch:game run particle cloud 44210 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 132 at @s run clone from minecraft:overworld 44210 ~ 43999 44211 ~ 46001 to switch:game 44210 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 133 at @s in switch:game run particle cloud 44212 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 133 at @s run clone from minecraft:overworld 44211 ~ 43999 44213 ~ 46001 to switch:game 44211 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 134 at @s in switch:game run particle cloud 44213 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 134 at @s run clone from minecraft:overworld 44213 ~ 43999 44214 ~ 46001 to switch:game 44213 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 135 at @s in switch:game run particle cloud 44215 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 135 at @s run clone from minecraft:overworld 44214 ~ 43999 44216 ~ 46001 to switch:game 44214 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 136 at @s in switch:game run particle cloud 44217 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 136 at @s run clone from minecraft:overworld 44216 ~ 43999 44218 ~ 46001 to switch:game 44216 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 137 at @s in switch:game run particle cloud 44218 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 137 at @s run clone from minecraft:overworld 44218 ~ 43999 44219 ~ 46001 to switch:game 44218 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 138 at @s in switch:game run particle cloud 44220 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 138 at @s run clone from minecraft:overworld 44219 ~ 43999 44221 ~ 46001 to switch:game 44219 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 139 at @s in switch:game run particle cloud 44221 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 139 at @s run clone from minecraft:overworld 44221 ~ 43999 44222 ~ 46001 to switch:game 44221 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 140 at @s in switch:game run particle cloud 44223 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 140 at @s run clone from minecraft:overworld 44222 ~ 43999 44224 ~ 46001 to switch:game 44222 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 141 at @s in switch:game run particle cloud 44225 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 141 at @s run clone from minecraft:overworld 44224 ~ 43999 44226 ~ 46001 to switch:game 44224 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 142 at @s in switch:game run particle cloud 44226 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 142 at @s run clone from minecraft:overworld 44226 ~ 43999 44227 ~ 46001 to switch:game 44226 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 143 at @s in switch:game run particle cloud 44228 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 143 at @s run clone from minecraft:overworld 44227 ~ 43999 44229 ~ 46001 to switch:game 44227 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 144 at @s in switch:game run particle cloud 44229 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 144 at @s run clone from minecraft:overworld 44229 ~ 43999 44230 ~ 46001 to switch:game 44229 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 145 at @s in switch:game run particle cloud 44231 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 145 at @s run clone from minecraft:overworld 44230 ~ 43999 44232 ~ 46001 to switch:game 44230 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 146 at @s in switch:game run particle cloud 44233 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 146 at @s run clone from minecraft:overworld 44232 ~ 43999 44234 ~ 46001 to switch:game 44232 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 147 at @s in switch:game run particle cloud 44234 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 147 at @s run clone from minecraft:overworld 44234 ~ 43999 44235 ~ 46001 to switch:game 44234 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 148 at @s in switch:game run particle cloud 44236 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 148 at @s run clone from minecraft:overworld 44235 ~ 43999 44237 ~ 46001 to switch:game 44235 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 149 at @s in switch:game run particle cloud 44237 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 149 at @s run clone from minecraft:overworld 44237 ~ 43999 44238 ~ 46001 to switch:game 44237 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 150 at @s in switch:game run particle cloud 44239 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 150 at @s run clone from minecraft:overworld 44238 ~ 43999 44240 ~ 46001 to switch:game 44238 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 151 at @s in switch:game run particle cloud 44241 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 151 at @s run clone from minecraft:overworld 44240 ~ 43999 44242 ~ 46001 to switch:game 44240 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 152 at @s in switch:game run particle cloud 44242 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 152 at @s run clone from minecraft:overworld 44242 ~ 43999 44243 ~ 46001 to switch:game 44242 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 153 at @s in switch:game run particle cloud 44244 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 153 at @s run clone from minecraft:overworld 44243 ~ 43999 44245 ~ 46001 to switch:game 44243 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 154 at @s in switch:game run particle cloud 44245 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 154 at @s run clone from minecraft:overworld 44245 ~ 43999 44246 ~ 46001 to switch:game 44245 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 155 at @s in switch:game run particle cloud 44247 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 155 at @s run clone from minecraft:overworld 44246 ~ 43999 44248 ~ 46001 to switch:game 44246 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 156 at @s in switch:game run particle cloud 44249 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 156 at @s run clone from minecraft:overworld 44248 ~ 43999 44250 ~ 46001 to switch:game 44248 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 157 at @s in switch:game run particle cloud 44250 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 157 at @s run clone from minecraft:overworld 44250 ~ 43999 44251 ~ 46001 to switch:game 44250 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 158 at @s in switch:game run particle cloud 44252 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 158 at @s run clone from minecraft:overworld 44251 ~ 43999 44253 ~ 46001 to switch:game 44251 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 159 at @s in switch:game run particle cloud 44253 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 159 at @s run clone from minecraft:overworld 44253 ~ 43999 44254 ~ 46001 to switch:game 44253 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 160 at @s in switch:game run particle cloud 44255 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 160 at @s run clone from minecraft:overworld 44254 ~ 43999 44256 ~ 46001 to switch:game 44254 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 161 at @s in switch:game run particle cloud 44256 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 161 at @s run clone from minecraft:overworld 44256 ~ 43999 44257 ~ 46001 to switch:game 44256 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 162 at @s in switch:game run particle cloud 44258 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 162 at @s run clone from minecraft:overworld 44257 ~ 43999 44259 ~ 46001 to switch:game 44257 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 163 at @s in switch:game run particle cloud 44260 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 163 at @s run clone from minecraft:overworld 44259 ~ 43999 44261 ~ 46001 to switch:game 44259 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 164 at @s in switch:game run particle cloud 44261 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 164 at @s run clone from minecraft:overworld 44261 ~ 43999 44262 ~ 46001 to switch:game 44261 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 165 at @s in switch:game run particle cloud 44263 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 165 at @s run clone from minecraft:overworld 44262 ~ 43999 44264 ~ 46001 to switch:game 44262 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 166 at @s in switch:game run particle cloud 44264 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 166 at @s run clone from minecraft:overworld 44264 ~ 43999 44265 ~ 46001 to switch:game 44264 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 167 at @s in switch:game run particle cloud 44266 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 167 at @s run clone from minecraft:overworld 44265 ~ 43999 44267 ~ 46001 to switch:game 44265 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 168 at @s in switch:game run particle cloud 44268 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 168 at @s run clone from minecraft:overworld 44267 ~ 43999 44269 ~ 46001 to switch:game 44267 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 169 at @s in switch:game run particle cloud 44269 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 169 at @s run clone from minecraft:overworld 44269 ~ 43999 44270 ~ 46001 to switch:game 44269 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 170 at @s in switch:game run particle cloud 44271 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 170 at @s run clone from minecraft:overworld 44270 ~ 43999 44272 ~ 46001 to switch:game 44270 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 171 at @s in switch:game run particle cloud 44272 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 171 at @s run clone from minecraft:overworld 44272 ~ 43999 44273 ~ 46001 to switch:game 44272 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 172 at @s in switch:game run particle cloud 44274 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 172 at @s run clone from minecraft:overworld 44273 ~ 43999 44275 ~ 46001 to switch:game 44273 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 173 at @s in switch:game run particle cloud 44276 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 173 at @s run clone from minecraft:overworld 44275 ~ 43999 44277 ~ 46001 to switch:game 44275 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 174 at @s in switch:game run particle cloud 44277 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 174 at @s run clone from minecraft:overworld 44277 ~ 43999 44278 ~ 46001 to switch:game 44277 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 175 at @s in switch:game run particle cloud 44279 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 175 at @s run clone from minecraft:overworld 44278 ~ 43999 44280 ~ 46001 to switch:game 44278 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 176 at @s in switch:game run particle cloud 44280 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 176 at @s run clone from minecraft:overworld 44280 ~ 43999 44281 ~ 46001 to switch:game 44280 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 177 at @s in switch:game run particle cloud 44282 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 177 at @s run clone from minecraft:overworld 44281 ~ 43999 44283 ~ 46001 to switch:game 44281 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 178 at @s in switch:game run particle cloud 44284 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 178 at @s run clone from minecraft:overworld 44283 ~ 43999 44285 ~ 46001 to switch:game 44283 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 179 at @s in switch:game run particle cloud 44285 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 179 at @s run clone from minecraft:overworld 44285 ~ 43999 44286 ~ 46001 to switch:game 44285 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 180 at @s in switch:game run particle cloud 44287 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 180 at @s run clone from minecraft:overworld 44286 ~ 43999 44288 ~ 46001 to switch:game 44286 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 181 at @s in switch:game run particle cloud 44288 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 181 at @s run clone from minecraft:overworld 44288 ~ 43999 44289 ~ 46001 to switch:game 44288 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 182 at @s in switch:game run particle cloud 44290 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 182 at @s run clone from minecraft:overworld 44289 ~ 43999 44291 ~ 46001 to switch:game 44289 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 183 at @s in switch:game run particle cloud 44292 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 183 at @s run clone from minecraft:overworld 44291 ~ 43999 44293 ~ 46001 to switch:game 44291 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 184 at @s in switch:game run particle cloud 44293 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 184 at @s run clone from minecraft:overworld 44293 ~ 43999 44294 ~ 46001 to switch:game 44293 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 185 at @s in switch:game run particle cloud 44295 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 185 at @s run clone from minecraft:overworld 44294 ~ 43999 44296 ~ 46001 to switch:game 44294 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 186 at @s in switch:game run particle cloud 44296 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 186 at @s run clone from minecraft:overworld 44296 ~ 43999 44297 ~ 46001 to switch:game 44296 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 187 at @s in switch:game run particle cloud 44298 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 187 at @s run clone from minecraft:overworld 44297 ~ 43999 44299 ~ 46001 to switch:game 44297 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 188 at @s in switch:game run particle cloud 44300 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 188 at @s run clone from minecraft:overworld 44299 ~ 43999 44301 ~ 46001 to switch:game 44299 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 189 at @s in switch:game run particle cloud 44301 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 189 at @s run clone from minecraft:overworld 44301 ~ 43999 44302 ~ 46001 to switch:game 44301 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 190 at @s in switch:game run particle cloud 44303 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 190 at @s run clone from minecraft:overworld 44302 ~ 43999 44304 ~ 46001 to switch:game 44302 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 191 at @s in switch:game run particle cloud 44304 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 191 at @s run clone from minecraft:overworld 44304 ~ 43999 44305 ~ 46001 to switch:game 44304 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 192 at @s in switch:game run particle cloud 44306 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 192 at @s run clone from minecraft:overworld 44305 ~ 43999 44307 ~ 46001 to switch:game 44305 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 193 at @s in switch:game run particle cloud 44308 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 193 at @s run clone from minecraft:overworld 44307 ~ 43999 44309 ~ 46001 to switch:game 44307 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 194 at @s in switch:game run particle cloud 44309 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 194 at @s run clone from minecraft:overworld 44309 ~ 43999 44310 ~ 46001 to switch:game 44309 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 195 at @s in switch:game run particle cloud 44311 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 195 at @s run clone from minecraft:overworld 44310 ~ 43999 44312 ~ 46001 to switch:game 44310 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 196 at @s in switch:game run particle cloud 44312 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 196 at @s run clone from minecraft:overworld 44312 ~ 43999 44313 ~ 46001 to switch:game 44312 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 197 at @s in switch:game run particle cloud 44314 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 197 at @s run clone from minecraft:overworld 44313 ~ 43999 44315 ~ 46001 to switch:game 44313 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 198 at @s in switch:game run particle cloud 44316 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 198 at @s run clone from minecraft:overworld 44315 ~ 43999 44317 ~ 46001 to switch:game 44315 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 199 at @s in switch:game run particle cloud 44317 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 199 at @s run clone from minecraft:overworld 44317 ~ 43999 44318 ~ 46001 to switch:game 44317 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 200 at @s in switch:game run particle cloud 44319 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 200 at @s run clone from minecraft:overworld 44318 ~ 43999 44320 ~ 46001 to switch:game 44318 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 201 at @s in switch:game run particle cloud 44320 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 201 at @s run clone from minecraft:overworld 44320 ~ 43999 44321 ~ 46001 to switch:game 44320 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 202 at @s in switch:game run particle cloud 44322 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 202 at @s run clone from minecraft:overworld 44321 ~ 43999 44323 ~ 46001 to switch:game 44321 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 203 at @s in switch:game run particle cloud 44323 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 203 at @s run clone from minecraft:overworld 44323 ~ 43999 44324 ~ 46001 to switch:game 44323 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 204 at @s in switch:game run particle cloud 44325 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 204 at @s run clone from minecraft:overworld 44324 ~ 43999 44326 ~ 46001 to switch:game 44324 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 205 at @s in switch:game run particle cloud 44327 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 205 at @s run clone from minecraft:overworld 44326 ~ 43999 44328 ~ 46001 to switch:game 44326 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 206 at @s in switch:game run particle cloud 44328 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 206 at @s run clone from minecraft:overworld 44328 ~ 43999 44329 ~ 46001 to switch:game 44328 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 207 at @s in switch:game run particle cloud 44330 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 207 at @s run clone from minecraft:overworld 44329 ~ 43999 44331 ~ 46001 to switch:game 44329 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 208 at @s in switch:game run particle cloud 44331 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 208 at @s run clone from minecraft:overworld 44331 ~ 43999 44332 ~ 46001 to switch:game 44331 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 209 at @s in switch:game run particle cloud 44333 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 209 at @s run clone from minecraft:overworld 44332 ~ 43999 44334 ~ 46001 to switch:game 44332 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 210 at @s in switch:game run particle cloud 44335 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 210 at @s run clone from minecraft:overworld 44334 ~ 43999 44336 ~ 46001 to switch:game 44334 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 211 at @s in switch:game run particle cloud 44336 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 211 at @s run clone from minecraft:overworld 44336 ~ 43999 44337 ~ 46001 to switch:game 44336 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 212 at @s in switch:game run particle cloud 44338 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 212 at @s run clone from minecraft:overworld 44337 ~ 43999 44339 ~ 46001 to switch:game 44337 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 213 at @s in switch:game run particle cloud 44339 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 213 at @s run clone from minecraft:overworld 44339 ~ 43999 44340 ~ 46001 to switch:game 44339 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 214 at @s in switch:game run particle cloud 44341 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 214 at @s run clone from minecraft:overworld 44340 ~ 43999 44342 ~ 46001 to switch:game 44340 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 215 at @s in switch:game run particle cloud 44343 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 215 at @s run clone from minecraft:overworld 44342 ~ 43999 44344 ~ 46001 to switch:game 44342 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 216 at @s in switch:game run particle cloud 44344 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 216 at @s run clone from minecraft:overworld 44344 ~ 43999 44345 ~ 46001 to switch:game 44344 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 217 at @s in switch:game run particle cloud 44346 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 217 at @s run clone from minecraft:overworld 44345 ~ 43999 44347 ~ 46001 to switch:game 44345 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 218 at @s in switch:game run particle cloud 44347 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 218 at @s run clone from minecraft:overworld 44347 ~ 43999 44348 ~ 46001 to switch:game 44347 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 219 at @s in switch:game run particle cloud 44349 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 219 at @s run clone from minecraft:overworld 44348 ~ 43999 44350 ~ 46001 to switch:game 44348 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 220 at @s in switch:game run particle cloud 44351 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 220 at @s run clone from minecraft:overworld 44350 ~ 43999 44352 ~ 46001 to switch:game 44350 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 221 at @s in switch:game run particle cloud 44352 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 221 at @s run clone from minecraft:overworld 44352 ~ 43999 44353 ~ 46001 to switch:game 44352 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 222 at @s in switch:game run particle cloud 44354 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 222 at @s run clone from minecraft:overworld 44353 ~ 43999 44355 ~ 46001 to switch:game 44353 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 223 at @s in switch:game run particle cloud 44355 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 223 at @s run clone from minecraft:overworld 44355 ~ 43999 44356 ~ 46001 to switch:game 44355 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 224 at @s in switch:game run particle cloud 44357 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 224 at @s run clone from minecraft:overworld 44356 ~ 43999 44358 ~ 46001 to switch:game 44356 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 225 at @s in switch:game run particle cloud 44359 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 225 at @s run clone from minecraft:overworld 44358 ~ 43999 44360 ~ 46001 to switch:game 44358 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 226 at @s in switch:game run particle cloud 44360 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 226 at @s run clone from minecraft:overworld 44360 ~ 43999 44361 ~ 46001 to switch:game 44360 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 227 at @s in switch:game run particle cloud 44362 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 227 at @s run clone from minecraft:overworld 44361 ~ 43999 44363 ~ 46001 to switch:game 44361 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 228 at @s in switch:game run particle cloud 44363 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 228 at @s run clone from minecraft:overworld 44363 ~ 43999 44364 ~ 46001 to switch:game 44363 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 229 at @s in switch:game run particle cloud 44365 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 229 at @s run clone from minecraft:overworld 44364 ~ 43999 44366 ~ 46001 to switch:game 44364 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 230 at @s in switch:game run particle cloud 44367 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 230 at @s run clone from minecraft:overworld 44366 ~ 43999 44368 ~ 46001 to switch:game 44366 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 231 at @s in switch:game run particle cloud 44368 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 231 at @s run clone from minecraft:overworld 44368 ~ 43999 44369 ~ 46001 to switch:game 44368 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 232 at @s in switch:game run particle cloud 44370 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 232 at @s run clone from minecraft:overworld 44369 ~ 43999 44371 ~ 46001 to switch:game 44369 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 233 at @s in switch:game run particle cloud 44371 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 233 at @s run clone from minecraft:overworld 44371 ~ 43999 44372 ~ 46001 to switch:game 44371 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 234 at @s in switch:game run particle cloud 44373 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 234 at @s run clone from minecraft:overworld 44372 ~ 43999 44374 ~ 46001 to switch:game 44372 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 235 at @s in switch:game run particle cloud 44375 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 235 at @s run clone from minecraft:overworld 44374 ~ 43999 44376 ~ 46001 to switch:game 44374 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 236 at @s in switch:game run particle cloud 44376 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 236 at @s run clone from minecraft:overworld 44376 ~ 43999 44377 ~ 46001 to switch:game 44376 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 237 at @s in switch:game run particle cloud 44378 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 237 at @s run clone from minecraft:overworld 44377 ~ 43999 44379 ~ 46001 to switch:game 44377 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 238 at @s in switch:game run particle cloud 44379 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 238 at @s run clone from minecraft:overworld 44379 ~ 43999 44380 ~ 46001 to switch:game 44379 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 239 at @s in switch:game run particle cloud 44381 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 239 at @s run clone from minecraft:overworld 44380 ~ 43999 44382 ~ 46001 to switch:game 44380 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 240 at @s in switch:game run particle cloud 44383 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 240 at @s run clone from minecraft:overworld 44382 ~ 43999 44384 ~ 46001 to switch:game 44382 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 241 at @s in switch:game run particle cloud 44384 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 241 at @s run clone from minecraft:overworld 44384 ~ 43999 44385 ~ 46001 to switch:game 44384 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 242 at @s in switch:game run particle cloud 44386 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 242 at @s run clone from minecraft:overworld 44385 ~ 43999 44387 ~ 46001 to switch:game 44385 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 243 at @s in switch:game run particle cloud 44387 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 243 at @s run clone from minecraft:overworld 44387 ~ 43999 44388 ~ 46001 to switch:game 44387 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 244 at @s in switch:game run particle cloud 44389 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 244 at @s run clone from minecraft:overworld 44388 ~ 43999 44390 ~ 46001 to switch:game 44388 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 245 at @s in switch:game run particle cloud 44391 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 245 at @s run clone from minecraft:overworld 44390 ~ 43999 44392 ~ 46001 to switch:game 44390 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 246 at @s in switch:game run particle cloud 44392 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 246 at @s run clone from minecraft:overworld 44392 ~ 43999 44393 ~ 46001 to switch:game 44392 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 247 at @s in switch:game run particle cloud 44394 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 247 at @s run clone from minecraft:overworld 44393 ~ 43999 44395 ~ 46001 to switch:game 44393 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 248 at @s in switch:game run particle cloud 44395 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 248 at @s run clone from minecraft:overworld 44395 ~ 43999 44396 ~ 46001 to switch:game 44395 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 249 at @s in switch:game run particle cloud 44397 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 249 at @s run clone from minecraft:overworld 44396 ~ 43999 44398 ~ 46001 to switch:game 44396 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 250 at @s in switch:game run particle cloud 44398 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 250 at @s run clone from minecraft:overworld 44398 ~ 43999 44399 ~ 46001 to switch:game 44398 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 251 at @s in switch:game run particle cloud 44400 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 251 at @s run clone from minecraft:overworld 44399 ~ 43999 44401 ~ 46001 to switch:game 44399 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 252 at @s in switch:game run particle cloud 44402 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 252 at @s run clone from minecraft:overworld 44401 ~ 43999 44403 ~ 46001 to switch:game 44401 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 253 at @s in switch:game run particle cloud 44403 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 253 at @s run clone from minecraft:overworld 44403 ~ 43999 44404 ~ 46001 to switch:game 44403 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 254 at @s in switch:game run particle cloud 44405 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 254 at @s run clone from minecraft:overworld 44404 ~ 43999 44406 ~ 46001 to switch:game 44404 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 255 at @s in switch:game run particle cloud 44406 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 255 at @s run clone from minecraft:overworld 44406 ~ 43999 44407 ~ 46001 to switch:game 44406 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 256 at @s in switch:game run particle cloud 44408 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 256 at @s run clone from minecraft:overworld 44407 ~ 43999 44409 ~ 46001 to switch:game 44407 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 257 at @s in switch:game run particle cloud 44410 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 257 at @s run clone from minecraft:overworld 44409 ~ 43999 44411 ~ 46001 to switch:game 44409 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 258 at @s in switch:game run particle cloud 44411 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 258 at @s run clone from minecraft:overworld 44411 ~ 43999 44412 ~ 46001 to switch:game 44411 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 259 at @s in switch:game run particle cloud 44413 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 259 at @s run clone from minecraft:overworld 44412 ~ 43999 44414 ~ 46001 to switch:game 44412 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 260 at @s in switch:game run particle cloud 44414 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 260 at @s run clone from minecraft:overworld 44414 ~ 43999 44415 ~ 46001 to switch:game 44414 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 261 at @s in switch:game run particle cloud 44416 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 261 at @s run clone from minecraft:overworld 44415 ~ 43999 44417 ~ 46001 to switch:game 44415 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 262 at @s in switch:game run particle cloud 44418 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 262 at @s run clone from minecraft:overworld 44417 ~ 43999 44419 ~ 46001 to switch:game 44417 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 263 at @s in switch:game run particle cloud 44419 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 263 at @s run clone from minecraft:overworld 44419 ~ 43999 44420 ~ 46001 to switch:game 44419 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 264 at @s in switch:game run particle cloud 44421 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 264 at @s run clone from minecraft:overworld 44420 ~ 43999 44422 ~ 46001 to switch:game 44420 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 265 at @s in switch:game run particle cloud 44422 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 265 at @s run clone from minecraft:overworld 44422 ~ 43999 44423 ~ 46001 to switch:game 44422 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 266 at @s in switch:game run particle cloud 44424 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 266 at @s run clone from minecraft:overworld 44423 ~ 43999 44425 ~ 46001 to switch:game 44423 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 267 at @s in switch:game run particle cloud 44426 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 267 at @s run clone from minecraft:overworld 44425 ~ 43999 44427 ~ 46001 to switch:game 44425 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 268 at @s in switch:game run particle cloud 44427 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 268 at @s run clone from minecraft:overworld 44427 ~ 43999 44428 ~ 46001 to switch:game 44427 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 269 at @s in switch:game run particle cloud 44429 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 269 at @s run clone from minecraft:overworld 44428 ~ 43999 44430 ~ 46001 to switch:game 44428 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 270 at @s in switch:game run particle cloud 44430 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 270 at @s run clone from minecraft:overworld 44430 ~ 43999 44431 ~ 46001 to switch:game 44430 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 271 at @s in switch:game run particle cloud 44432 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 271 at @s run clone from minecraft:overworld 44431 ~ 43999 44433 ~ 46001 to switch:game 44431 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 272 at @s in switch:game run particle cloud 44434 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 272 at @s run clone from minecraft:overworld 44433 ~ 43999 44435 ~ 46001 to switch:game 44433 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 273 at @s in switch:game run particle cloud 44435 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 273 at @s run clone from minecraft:overworld 44435 ~ 43999 44436 ~ 46001 to switch:game 44435 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 274 at @s in switch:game run particle cloud 44437 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 274 at @s run clone from minecraft:overworld 44436 ~ 43999 44438 ~ 46001 to switch:game 44436 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 275 at @s in switch:game run particle cloud 44438 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 275 at @s run clone from minecraft:overworld 44438 ~ 43999 44439 ~ 46001 to switch:game 44438 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 276 at @s in switch:game run particle cloud 44440 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 276 at @s run clone from minecraft:overworld 44439 ~ 43999 44441 ~ 46001 to switch:game 44439 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 277 at @s in switch:game run particle cloud 44442 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 277 at @s run clone from minecraft:overworld 44441 ~ 43999 44443 ~ 46001 to switch:game 44441 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 278 at @s in switch:game run particle cloud 44443 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 278 at @s run clone from minecraft:overworld 44443 ~ 43999 44444 ~ 46001 to switch:game 44443 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 279 at @s in switch:game run particle cloud 44445 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 279 at @s run clone from minecraft:overworld 44444 ~ 43999 44446 ~ 46001 to switch:game 44444 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 280 at @s in switch:game run particle cloud 44446 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 280 at @s run clone from minecraft:overworld 44446 ~ 43999 44447 ~ 46001 to switch:game 44446 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 281 at @s in switch:game run particle cloud 44448 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 281 at @s run clone from minecraft:overworld 44447 ~ 43999 44449 ~ 46001 to switch:game 44447 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 282 at @s in switch:game run particle cloud 44450 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 282 at @s run clone from minecraft:overworld 44449 ~ 43999 44451 ~ 46001 to switch:game 44449 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 283 at @s in switch:game run particle cloud 44451 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 283 at @s run clone from minecraft:overworld 44451 ~ 43999 44452 ~ 46001 to switch:game 44451 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 284 at @s in switch:game run particle cloud 44453 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 284 at @s run clone from minecraft:overworld 44452 ~ 43999 44454 ~ 46001 to switch:game 44452 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 285 at @s in switch:game run particle cloud 44454 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 285 at @s run clone from minecraft:overworld 44454 ~ 43999 44455 ~ 46001 to switch:game 44454 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 286 at @s in switch:game run particle cloud 44456 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 286 at @s run clone from minecraft:overworld 44455 ~ 43999 44457 ~ 46001 to switch:game 44455 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 287 at @s in switch:game run particle cloud 44458 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 287 at @s run clone from minecraft:overworld 44457 ~ 43999 44459 ~ 46001 to switch:game 44457 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 288 at @s in switch:game run particle cloud 44459 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 288 at @s run clone from minecraft:overworld 44459 ~ 43999 44460 ~ 46001 to switch:game 44459 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 289 at @s in switch:game run particle cloud 44461 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 289 at @s run clone from minecraft:overworld 44460 ~ 43999 44462 ~ 46001 to switch:game 44460 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 290 at @s in switch:game run particle cloud 44462 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 290 at @s run clone from minecraft:overworld 44462 ~ 43999 44463 ~ 46001 to switch:game 44462 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 291 at @s in switch:game run particle cloud 44464 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 291 at @s run clone from minecraft:overworld 44463 ~ 43999 44465 ~ 46001 to switch:game 44463 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 292 at @s in switch:game run particle cloud 44465 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 292 at @s run clone from minecraft:overworld 44465 ~ 43999 44466 ~ 46001 to switch:game 44465 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 293 at @s in switch:game run particle cloud 44467 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 293 at @s run clone from minecraft:overworld 44466 ~ 43999 44468 ~ 46001 to switch:game 44466 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 294 at @s in switch:game run particle cloud 44469 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 294 at @s run clone from minecraft:overworld 44468 ~ 43999 44470 ~ 46001 to switch:game 44468 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 295 at @s in switch:game run particle cloud 44470 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 295 at @s run clone from minecraft:overworld 44470 ~ 43999 44471 ~ 46001 to switch:game 44470 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 296 at @s in switch:game run particle cloud 44472 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 296 at @s run clone from minecraft:overworld 44471 ~ 43999 44473 ~ 46001 to switch:game 44471 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 297 at @s in switch:game run particle cloud 44473 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 297 at @s run clone from minecraft:overworld 44473 ~ 43999 44474 ~ 46001 to switch:game 44473 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 298 at @s in switch:game run particle cloud 44475 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 298 at @s run clone from minecraft:overworld 44474 ~ 43999 44476 ~ 46001 to switch:game 44474 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 299 at @s in switch:game run particle cloud 44477 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 299 at @s run clone from minecraft:overworld 44476 ~ 43999 44478 ~ 46001 to switch:game 44476 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 300 at @s in switch:game run particle cloud 44478 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 300 at @s run clone from minecraft:overworld 44478 ~ 43999 44479 ~ 46001 to switch:game 44478 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 301 at @s in switch:game run particle cloud 44480 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 301 at @s run clone from minecraft:overworld 44479 ~ 43999 44481 ~ 46001 to switch:game 44479 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 302 at @s in switch:game run particle cloud 44481 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 302 at @s run clone from minecraft:overworld 44481 ~ 43999 44482 ~ 46001 to switch:game 44481 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 303 at @s in switch:game run particle cloud 44483 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 303 at @s run clone from minecraft:overworld 44482 ~ 43999 44484 ~ 46001 to switch:game 44482 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 304 at @s in switch:game run particle cloud 44485 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 304 at @s run clone from minecraft:overworld 44484 ~ 43999 44486 ~ 46001 to switch:game 44484 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 305 at @s in switch:game run particle cloud 44486 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 305 at @s run clone from minecraft:overworld 44486 ~ 43999 44487 ~ 46001 to switch:game 44486 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 306 at @s in switch:game run particle cloud 44488 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 306 at @s run clone from minecraft:overworld 44487 ~ 43999 44489 ~ 46001 to switch:game 44487 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 307 at @s in switch:game run particle cloud 44489 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 307 at @s run clone from minecraft:overworld 44489 ~ 43999 44490 ~ 46001 to switch:game 44489 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 308 at @s in switch:game run particle cloud 44491 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 308 at @s run clone from minecraft:overworld 44490 ~ 43999 44492 ~ 46001 to switch:game 44490 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 309 at @s in switch:game run particle cloud 44493 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 309 at @s run clone from minecraft:overworld 44492 ~ 43999 44494 ~ 46001 to switch:game 44492 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 310 at @s in switch:game run particle cloud 44494 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 310 at @s run clone from minecraft:overworld 44494 ~ 43999 44495 ~ 46001 to switch:game 44494 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 311 at @s in switch:game run particle cloud 44496 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 311 at @s run clone from minecraft:overworld 44495 ~ 43999 44497 ~ 46001 to switch:game 44495 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 312 at @s in switch:game run particle cloud 44497 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 312 at @s run clone from minecraft:overworld 44497 ~ 43999 44498 ~ 46001 to switch:game 44497 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 313 at @s in switch:game run particle cloud 44499 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 313 at @s run clone from minecraft:overworld 44498 ~ 43999 44500 ~ 46001 to switch:game 44498 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 314 at @s in switch:game run particle cloud 44501 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 314 at @s run clone from minecraft:overworld 44500 ~ 43999 44502 ~ 46001 to switch:game 44500 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 315 at @s in switch:game run particle cloud 44502 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 315 at @s run clone from minecraft:overworld 44502 ~ 43999 44503 ~ 46001 to switch:game 44502 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 316 at @s in switch:game run particle cloud 44504 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 316 at @s run clone from minecraft:overworld 44503 ~ 43999 44505 ~ 46001 to switch:game 44503 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 317 at @s in switch:game run particle cloud 44505 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 317 at @s run clone from minecraft:overworld 44505 ~ 43999 44506 ~ 46001 to switch:game 44505 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 318 at @s in switch:game run particle cloud 44507 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 318 at @s run clone from minecraft:overworld 44506 ~ 43999 44508 ~ 46001 to switch:game 44506 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 319 at @s in switch:game run particle cloud 44509 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 319 at @s run clone from minecraft:overworld 44508 ~ 43999 44510 ~ 46001 to switch:game 44508 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 320 at @s in switch:game run particle cloud 44510 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 320 at @s run clone from minecraft:overworld 44510 ~ 43999 44511 ~ 46001 to switch:game 44510 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 321 at @s in switch:game run particle cloud 44512 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 321 at @s run clone from minecraft:overworld 44511 ~ 43999 44513 ~ 46001 to switch:game 44511 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 322 at @s in switch:game run particle cloud 44513 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 322 at @s run clone from minecraft:overworld 44513 ~ 43999 44514 ~ 46001 to switch:game 44513 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 323 at @s in switch:game run particle cloud 44515 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 323 at @s run clone from minecraft:overworld 44514 ~ 43999 44516 ~ 46001 to switch:game 44514 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 324 at @s in switch:game run particle cloud 44517 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 324 at @s run clone from minecraft:overworld 44516 ~ 43999 44518 ~ 46001 to switch:game 44516 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 325 at @s in switch:game run particle cloud 44518 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 325 at @s run clone from minecraft:overworld 44518 ~ 43999 44519 ~ 46001 to switch:game 44518 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 326 at @s in switch:game run particle cloud 44520 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 326 at @s run clone from minecraft:overworld 44519 ~ 43999 44521 ~ 46001 to switch:game 44519 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 327 at @s in switch:game run particle cloud 44521 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 327 at @s run clone from minecraft:overworld 44521 ~ 43999 44522 ~ 46001 to switch:game 44521 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 328 at @s in switch:game run particle cloud 44523 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 328 at @s run clone from minecraft:overworld 44522 ~ 43999 44524 ~ 46001 to switch:game 44522 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 329 at @s in switch:game run particle cloud 44525 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 329 at @s run clone from minecraft:overworld 44524 ~ 43999 44526 ~ 46001 to switch:game 44524 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 330 at @s in switch:game run particle cloud 44526 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 330 at @s run clone from minecraft:overworld 44526 ~ 43999 44527 ~ 46001 to switch:game 44526 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 331 at @s in switch:game run particle cloud 44528 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 331 at @s run clone from minecraft:overworld 44527 ~ 43999 44529 ~ 46001 to switch:game 44527 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 332 at @s in switch:game run particle cloud 44529 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 332 at @s run clone from minecraft:overworld 44529 ~ 43999 44530 ~ 46001 to switch:game 44529 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 333 at @s in switch:game run particle cloud 44531 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 333 at @s run clone from minecraft:overworld 44530 ~ 43999 44532 ~ 46001 to switch:game 44530 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 334 at @s in switch:game run particle cloud 44533 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 334 at @s run clone from minecraft:overworld 44532 ~ 43999 44534 ~ 46001 to switch:game 44532 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 335 at @s in switch:game run particle cloud 44534 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 335 at @s run clone from minecraft:overworld 44534 ~ 43999 44535 ~ 46001 to switch:game 44534 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 336 at @s in switch:game run particle cloud 44536 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 336 at @s run clone from minecraft:overworld 44535 ~ 43999 44537 ~ 46001 to switch:game 44535 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 337 at @s in switch:game run particle cloud 44537 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 337 at @s run clone from minecraft:overworld 44537 ~ 43999 44538 ~ 46001 to switch:game 44537 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 338 at @s in switch:game run particle cloud 44539 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 338 at @s run clone from minecraft:overworld 44538 ~ 43999 44540 ~ 46001 to switch:game 44538 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 339 at @s in switch:game run particle cloud 44540 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 339 at @s run clone from minecraft:overworld 44540 ~ 43999 44541 ~ 46001 to switch:game 44540 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 340 at @s in switch:game run particle cloud 44542 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 340 at @s run clone from minecraft:overworld 44541 ~ 43999 44543 ~ 46001 to switch:game 44541 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 341 at @s in switch:game run particle cloud 44544 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 341 at @s run clone from minecraft:overworld 44543 ~ 43999 44545 ~ 46001 to switch:game 44543 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 342 at @s in switch:game run particle cloud 44545 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 342 at @s run clone from minecraft:overworld 44545 ~ 43999 44546 ~ 46001 to switch:game 44545 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 343 at @s in switch:game run particle cloud 44547 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 343 at @s run clone from minecraft:overworld 44546 ~ 43999 44548 ~ 46001 to switch:game 44546 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 344 at @s in switch:game run particle cloud 44548 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 344 at @s run clone from minecraft:overworld 44548 ~ 43999 44549 ~ 46001 to switch:game 44548 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 345 at @s in switch:game run particle cloud 44550 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 345 at @s run clone from minecraft:overworld 44549 ~ 43999 44551 ~ 46001 to switch:game 44549 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 346 at @s in switch:game run particle cloud 44552 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 346 at @s run clone from minecraft:overworld 44551 ~ 43999 44553 ~ 46001 to switch:game 44551 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 347 at @s in switch:game run particle cloud 44553 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 347 at @s run clone from minecraft:overworld 44553 ~ 43999 44554 ~ 46001 to switch:game 44553 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 348 at @s in switch:game run particle cloud 44555 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 348 at @s run clone from minecraft:overworld 44554 ~ 43999 44556 ~ 46001 to switch:game 44554 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 349 at @s in switch:game run particle cloud 44556 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 349 at @s run clone from minecraft:overworld 44556 ~ 43999 44557 ~ 46001 to switch:game 44556 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 350 at @s in switch:game run particle cloud 44558 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 350 at @s run clone from minecraft:overworld 44557 ~ 43999 44559 ~ 46001 to switch:game 44557 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 351 at @s in switch:game run particle cloud 44560 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 351 at @s run clone from minecraft:overworld 44559 ~ 43999 44561 ~ 46001 to switch:game 44559 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 352 at @s in switch:game run particle cloud 44561 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 352 at @s run clone from minecraft:overworld 44561 ~ 43999 44562 ~ 46001 to switch:game 44561 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 353 at @s in switch:game run particle cloud 44563 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 353 at @s run clone from minecraft:overworld 44562 ~ 43999 44564 ~ 46001 to switch:game 44562 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 354 at @s in switch:game run particle cloud 44564 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 354 at @s run clone from minecraft:overworld 44564 ~ 43999 44565 ~ 46001 to switch:game 44564 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 355 at @s in switch:game run particle cloud 44566 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 355 at @s run clone from minecraft:overworld 44565 ~ 43999 44567 ~ 46001 to switch:game 44565 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 356 at @s in switch:game run particle cloud 44568 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 356 at @s run clone from minecraft:overworld 44567 ~ 43999 44569 ~ 46001 to switch:game 44567 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 357 at @s in switch:game run particle cloud 44569 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 357 at @s run clone from minecraft:overworld 44569 ~ 43999 44570 ~ 46001 to switch:game 44569 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 358 at @s in switch:game run particle cloud 44571 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 358 at @s run clone from minecraft:overworld 44570 ~ 43999 44572 ~ 46001 to switch:game 44570 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 359 at @s in switch:game run particle cloud 44572 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 359 at @s run clone from minecraft:overworld 44572 ~ 43999 44573 ~ 46001 to switch:game 44572 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 360 at @s in switch:game run particle cloud 44574 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 360 at @s run clone from minecraft:overworld 44573 ~ 43999 44575 ~ 46001 to switch:game 44573 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 361 at @s in switch:game run particle cloud 44576 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 361 at @s run clone from minecraft:overworld 44575 ~ 43999 44577 ~ 46001 to switch:game 44575 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 362 at @s in switch:game run particle cloud 44577 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 362 at @s run clone from minecraft:overworld 44577 ~ 43999 44578 ~ 46001 to switch:game 44577 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 363 at @s in switch:game run particle cloud 44579 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 363 at @s run clone from minecraft:overworld 44578 ~ 43999 44580 ~ 46001 to switch:game 44578 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 364 at @s in switch:game run particle cloud 44580 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 364 at @s run clone from minecraft:overworld 44580 ~ 43999 44581 ~ 46001 to switch:game 44580 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 365 at @s in switch:game run particle cloud 44582 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 365 at @s run clone from minecraft:overworld 44581 ~ 43999 44583 ~ 46001 to switch:game 44581 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 366 at @s in switch:game run particle cloud 44584 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 366 at @s run clone from minecraft:overworld 44583 ~ 43999 44585 ~ 46001 to switch:game 44583 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 367 at @s in switch:game run particle cloud 44585 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 367 at @s run clone from minecraft:overworld 44585 ~ 43999 44586 ~ 46001 to switch:game 44585 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 368 at @s in switch:game run particle cloud 44587 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 368 at @s run clone from minecraft:overworld 44586 ~ 43999 44588 ~ 46001 to switch:game 44586 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 369 at @s in switch:game run particle cloud 44588 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 369 at @s run clone from minecraft:overworld 44588 ~ 43999 44589 ~ 46001 to switch:game 44588 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 370 at @s in switch:game run particle cloud 44590 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 370 at @s run clone from minecraft:overworld 44589 ~ 43999 44591 ~ 46001 to switch:game 44589 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 371 at @s in switch:game run particle cloud 44592 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 371 at @s run clone from minecraft:overworld 44591 ~ 43999 44593 ~ 46001 to switch:game 44591 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 372 at @s in switch:game run particle cloud 44593 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 372 at @s run clone from minecraft:overworld 44593 ~ 43999 44594 ~ 46001 to switch:game 44593 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 373 at @s in switch:game run particle cloud 44595 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 373 at @s run clone from minecraft:overworld 44594 ~ 43999 44596 ~ 46001 to switch:game 44594 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 374 at @s in switch:game run particle cloud 44596 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 374 at @s run clone from minecraft:overworld 44596 ~ 43999 44597 ~ 46001 to switch:game 44596 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 375 at @s in switch:game run particle cloud 44598 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 375 at @s run clone from minecraft:overworld 44597 ~ 43999 44599 ~ 46001 to switch:game 44597 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 376 at @s in switch:game run particle cloud 44600 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 376 at @s run clone from minecraft:overworld 44599 ~ 43999 44601 ~ 46001 to switch:game 44599 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 377 at @s in switch:game run particle cloud 44601 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 377 at @s run clone from minecraft:overworld 44601 ~ 43999 44602 ~ 46001 to switch:game 44601 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 378 at @s in switch:game run particle cloud 44603 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 378 at @s run clone from minecraft:overworld 44602 ~ 43999 44604 ~ 46001 to switch:game 44602 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 379 at @s in switch:game run particle cloud 44604 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 379 at @s run clone from minecraft:overworld 44604 ~ 43999 44605 ~ 46001 to switch:game 44604 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 380 at @s in switch:game run particle cloud 44606 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 380 at @s run clone from minecraft:overworld 44605 ~ 43999 44607 ~ 46001 to switch:game 44605 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 381 at @s in switch:game run particle cloud 44607 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 381 at @s run clone from minecraft:overworld 44607 ~ 43999 44608 ~ 46001 to switch:game 44607 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 382 at @s in switch:game run particle cloud 44609 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 382 at @s run clone from minecraft:overworld 44608 ~ 43999 44610 ~ 46001 to switch:game 44608 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 383 at @s in switch:game run particle cloud 44611 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 383 at @s run clone from minecraft:overworld 44610 ~ 43999 44612 ~ 46001 to switch:game 44610 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 384 at @s in switch:game run particle cloud 44612 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 384 at @s run clone from minecraft:overworld 44612 ~ 43999 44613 ~ 46001 to switch:game 44612 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 385 at @s in switch:game run particle cloud 44614 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 385 at @s run clone from minecraft:overworld 44613 ~ 43999 44615 ~ 46001 to switch:game 44613 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 386 at @s in switch:game run particle cloud 44615 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 386 at @s run clone from minecraft:overworld 44615 ~ 43999 44616 ~ 46001 to switch:game 44615 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 387 at @s in switch:game run particle cloud 44617 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 387 at @s run clone from minecraft:overworld 44616 ~ 43999 44618 ~ 46001 to switch:game 44616 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 388 at @s in switch:game run particle cloud 44619 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 388 at @s run clone from minecraft:overworld 44618 ~ 43999 44620 ~ 46001 to switch:game 44618 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 389 at @s in switch:game run particle cloud 44620 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 389 at @s run clone from minecraft:overworld 44620 ~ 43999 44621 ~ 46001 to switch:game 44620 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 390 at @s in switch:game run particle cloud 44622 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 390 at @s run clone from minecraft:overworld 44621 ~ 43999 44623 ~ 46001 to switch:game 44621 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 391 at @s in switch:game run particle cloud 44623 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 391 at @s run clone from minecraft:overworld 44623 ~ 43999 44624 ~ 46001 to switch:game 44623 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 392 at @s in switch:game run particle cloud 44625 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 392 at @s run clone from minecraft:overworld 44624 ~ 43999 44626 ~ 46001 to switch:game 44624 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 393 at @s in switch:game run particle cloud 44627 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 393 at @s run clone from minecraft:overworld 44626 ~ 43999 44628 ~ 46001 to switch:game 44626 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 394 at @s in switch:game run particle cloud 44628 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 394 at @s run clone from minecraft:overworld 44628 ~ 43999 44629 ~ 46001 to switch:game 44628 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 395 at @s in switch:game run particle cloud 44630 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 395 at @s run clone from minecraft:overworld 44629 ~ 43999 44631 ~ 46001 to switch:game 44629 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 396 at @s in switch:game run particle cloud 44631 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 396 at @s run clone from minecraft:overworld 44631 ~ 43999 44632 ~ 46001 to switch:game 44631 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 397 at @s in switch:game run particle cloud 44633 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 397 at @s run clone from minecraft:overworld 44632 ~ 43999 44634 ~ 46001 to switch:game 44632 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 398 at @s in switch:game run particle cloud 44635 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 398 at @s run clone from minecraft:overworld 44634 ~ 43999 44636 ~ 46001 to switch:game 44634 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 399 at @s in switch:game run particle cloud 44636 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 399 at @s run clone from minecraft:overworld 44636 ~ 43999 44637 ~ 46001 to switch:game 44636 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 400 at @s in switch:game run particle cloud 44638 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 400 at @s run clone from minecraft:overworld 44637 ~ 43999 44639 ~ 46001 to switch:game 44637 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 401 at @s in switch:game run particle cloud 44639 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 401 at @s run clone from minecraft:overworld 44639 ~ 43999 44640 ~ 46001 to switch:game 44639 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 402 at @s in switch:game run particle cloud 44641 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 402 at @s run clone from minecraft:overworld 44640 ~ 43999 44642 ~ 46001 to switch:game 44640 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 403 at @s in switch:game run particle cloud 44643 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 403 at @s run clone from minecraft:overworld 44642 ~ 43999 44644 ~ 46001 to switch:game 44642 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 404 at @s in switch:game run particle cloud 44644 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 404 at @s run clone from minecraft:overworld 44644 ~ 43999 44645 ~ 46001 to switch:game 44644 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 405 at @s in switch:game run particle cloud 44646 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 405 at @s run clone from minecraft:overworld 44645 ~ 43999 44647 ~ 46001 to switch:game 44645 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 406 at @s in switch:game run particle cloud 44647 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 406 at @s run clone from minecraft:overworld 44647 ~ 43999 44648 ~ 46001 to switch:game 44647 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 407 at @s in switch:game run particle cloud 44649 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 407 at @s run clone from minecraft:overworld 44648 ~ 43999 44650 ~ 46001 to switch:game 44648 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 408 at @s in switch:game run particle cloud 44651 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 408 at @s run clone from minecraft:overworld 44650 ~ 43999 44652 ~ 46001 to switch:game 44650 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 409 at @s in switch:game run particle cloud 44652 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 409 at @s run clone from minecraft:overworld 44652 ~ 43999 44653 ~ 46001 to switch:game 44652 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 410 at @s in switch:game run particle cloud 44654 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 410 at @s run clone from minecraft:overworld 44653 ~ 43999 44655 ~ 46001 to switch:game 44653 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 411 at @s in switch:game run particle cloud 44655 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 411 at @s run clone from minecraft:overworld 44655 ~ 43999 44656 ~ 46001 to switch:game 44655 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 412 at @s in switch:game run particle cloud 44657 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 412 at @s run clone from minecraft:overworld 44656 ~ 43999 44658 ~ 46001 to switch:game 44656 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 413 at @s in switch:game run particle cloud 44659 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 413 at @s run clone from minecraft:overworld 44658 ~ 43999 44660 ~ 46001 to switch:game 44658 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 414 at @s in switch:game run particle cloud 44660 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 414 at @s run clone from minecraft:overworld 44660 ~ 43999 44661 ~ 46001 to switch:game 44660 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 415 at @s in switch:game run particle cloud 44662 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 415 at @s run clone from minecraft:overworld 44661 ~ 43999 44663 ~ 46001 to switch:game 44661 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 416 at @s in switch:game run particle cloud 44663 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 416 at @s run clone from minecraft:overworld 44663 ~ 43999 44664 ~ 46001 to switch:game 44663 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 417 at @s in switch:game run particle cloud 44665 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 417 at @s run clone from minecraft:overworld 44664 ~ 43999 44666 ~ 46001 to switch:game 44664 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 418 at @s in switch:game run particle cloud 44667 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 418 at @s run clone from minecraft:overworld 44666 ~ 43999 44668 ~ 46001 to switch:game 44666 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 419 at @s in switch:game run particle cloud 44668 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 419 at @s run clone from minecraft:overworld 44668 ~ 43999 44669 ~ 46001 to switch:game 44668 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 420 at @s in switch:game run particle cloud 44670 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 420 at @s run clone from minecraft:overworld 44669 ~ 43999 44671 ~ 46001 to switch:game 44669 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 421 at @s in switch:game run particle cloud 44671 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 421 at @s run clone from minecraft:overworld 44671 ~ 43999 44672 ~ 46001 to switch:game 44671 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 422 at @s in switch:game run particle cloud 44673 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 422 at @s run clone from minecraft:overworld 44672 ~ 43999 44674 ~ 46001 to switch:game 44672 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 423 at @s in switch:game run particle cloud 44675 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 423 at @s run clone from minecraft:overworld 44674 ~ 43999 44676 ~ 46001 to switch:game 44674 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 424 at @s in switch:game run particle cloud 44676 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 424 at @s run clone from minecraft:overworld 44676 ~ 43999 44677 ~ 46001 to switch:game 44676 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 425 at @s in switch:game run particle cloud 44678 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 425 at @s run clone from minecraft:overworld 44677 ~ 43999 44679 ~ 46001 to switch:game 44677 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 426 at @s in switch:game run particle cloud 44679 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 426 at @s run clone from minecraft:overworld 44679 ~ 43999 44680 ~ 46001 to switch:game 44679 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 427 at @s in switch:game run particle cloud 44681 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 427 at @s run clone from minecraft:overworld 44680 ~ 43999 44682 ~ 46001 to switch:game 44680 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 428 at @s in switch:game run particle cloud 44682 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 428 at @s run clone from minecraft:overworld 44682 ~ 43999 44683 ~ 46001 to switch:game 44682 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 429 at @s in switch:game run particle cloud 44684 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 429 at @s run clone from minecraft:overworld 44683 ~ 43999 44685 ~ 46001 to switch:game 44683 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 430 at @s in switch:game run particle cloud 44686 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 430 at @s run clone from minecraft:overworld 44685 ~ 43999 44687 ~ 46001 to switch:game 44685 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 431 at @s in switch:game run particle cloud 44687 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 431 at @s run clone from minecraft:overworld 44687 ~ 43999 44688 ~ 46001 to switch:game 44687 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 432 at @s in switch:game run particle cloud 44689 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 432 at @s run clone from minecraft:overworld 44688 ~ 43999 44690 ~ 46001 to switch:game 44688 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 433 at @s in switch:game run particle cloud 44690 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 433 at @s run clone from minecraft:overworld 44690 ~ 43999 44691 ~ 46001 to switch:game 44690 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 434 at @s in switch:game run particle cloud 44692 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 434 at @s run clone from minecraft:overworld 44691 ~ 43999 44693 ~ 46001 to switch:game 44691 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 435 at @s in switch:game run particle cloud 44694 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 435 at @s run clone from minecraft:overworld 44693 ~ 43999 44695 ~ 46001 to switch:game 44693 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 436 at @s in switch:game run particle cloud 44695 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 436 at @s run clone from minecraft:overworld 44695 ~ 43999 44696 ~ 46001 to switch:game 44695 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 437 at @s in switch:game run particle cloud 44697 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 437 at @s run clone from minecraft:overworld 44696 ~ 43999 44698 ~ 46001 to switch:game 44696 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 438 at @s in switch:game run particle cloud 44698 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 438 at @s run clone from minecraft:overworld 44698 ~ 43999 44699 ~ 46001 to switch:game 44698 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 439 at @s in switch:game run particle cloud 44700 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 439 at @s run clone from minecraft:overworld 44699 ~ 43999 44701 ~ 46001 to switch:game 44699 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 440 at @s in switch:game run particle cloud 44702 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 440 at @s run clone from minecraft:overworld 44701 ~ 43999 44703 ~ 46001 to switch:game 44701 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 441 at @s in switch:game run particle cloud 44703 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 441 at @s run clone from minecraft:overworld 44703 ~ 43999 44704 ~ 46001 to switch:game 44703 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 442 at @s in switch:game run particle cloud 44705 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 442 at @s run clone from minecraft:overworld 44704 ~ 43999 44706 ~ 46001 to switch:game 44704 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 443 at @s in switch:game run particle cloud 44706 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 443 at @s run clone from minecraft:overworld 44706 ~ 43999 44707 ~ 46001 to switch:game 44706 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 444 at @s in switch:game run particle cloud 44708 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 444 at @s run clone from minecraft:overworld 44707 ~ 43999 44709 ~ 46001 to switch:game 44707 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 445 at @s in switch:game run particle cloud 44710 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 445 at @s run clone from minecraft:overworld 44709 ~ 43999 44711 ~ 46001 to switch:game 44709 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 446 at @s in switch:game run particle cloud 44711 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 446 at @s run clone from minecraft:overworld 44711 ~ 43999 44712 ~ 46001 to switch:game 44711 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 447 at @s in switch:game run particle cloud 44713 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 447 at @s run clone from minecraft:overworld 44712 ~ 43999 44714 ~ 46001 to switch:game 44712 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 448 at @s in switch:game run particle cloud 44714 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 448 at @s run clone from minecraft:overworld 44714 ~ 43999 44715 ~ 46001 to switch:game 44714 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 449 at @s in switch:game run particle cloud 44716 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 449 at @s run clone from minecraft:overworld 44715 ~ 43999 44717 ~ 46001 to switch:game 44715 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 450 at @s in switch:game run particle cloud 44718 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 450 at @s run clone from minecraft:overworld 44717 ~ 43999 44719 ~ 46001 to switch:game 44717 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 451 at @s in switch:game run particle cloud 44719 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 451 at @s run clone from minecraft:overworld 44719 ~ 43999 44720 ~ 46001 to switch:game 44719 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 452 at @s in switch:game run particle cloud 44721 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 452 at @s run clone from minecraft:overworld 44720 ~ 43999 44722 ~ 46001 to switch:game 44720 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 453 at @s in switch:game run particle cloud 44722 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 453 at @s run clone from minecraft:overworld 44722 ~ 43999 44723 ~ 46001 to switch:game 44722 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 454 at @s in switch:game run particle cloud 44724 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 454 at @s run clone from minecraft:overworld 44723 ~ 43999 44725 ~ 46001 to switch:game 44723 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 455 at @s in switch:game run particle cloud 44726 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 455 at @s run clone from minecraft:overworld 44725 ~ 43999 44727 ~ 46001 to switch:game 44725 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 456 at @s in switch:game run particle cloud 44727 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 456 at @s run clone from minecraft:overworld 44727 ~ 43999 44728 ~ 46001 to switch:game 44727 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 457 at @s in switch:game run particle cloud 44729 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 457 at @s run clone from minecraft:overworld 44728 ~ 43999 44730 ~ 46001 to switch:game 44728 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 458 at @s in switch:game run particle cloud 44730 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 458 at @s run clone from minecraft:overworld 44730 ~ 43999 44731 ~ 46001 to switch:game 44730 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 459 at @s in switch:game run particle cloud 44732 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 459 at @s run clone from minecraft:overworld 44731 ~ 43999 44733 ~ 46001 to switch:game 44731 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 460 at @s in switch:game run particle cloud 44734 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 460 at @s run clone from minecraft:overworld 44733 ~ 43999 44735 ~ 46001 to switch:game 44733 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 461 at @s in switch:game run particle cloud 44735 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 461 at @s run clone from minecraft:overworld 44735 ~ 43999 44736 ~ 46001 to switch:game 44735 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 462 at @s in switch:game run particle cloud 44737 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 462 at @s run clone from minecraft:overworld 44736 ~ 43999 44738 ~ 46001 to switch:game 44736 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 463 at @s in switch:game run particle cloud 44738 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 463 at @s run clone from minecraft:overworld 44738 ~ 43999 44739 ~ 46001 to switch:game 44738 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 464 at @s in switch:game run particle cloud 44740 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 464 at @s run clone from minecraft:overworld 44739 ~ 43999 44741 ~ 46001 to switch:game 44739 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 465 at @s in switch:game run particle cloud 44742 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 465 at @s run clone from minecraft:overworld 44741 ~ 43999 44743 ~ 46001 to switch:game 44741 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 466 at @s in switch:game run particle cloud 44743 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 466 at @s run clone from minecraft:overworld 44743 ~ 43999 44744 ~ 46001 to switch:game 44743 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 467 at @s in switch:game run particle cloud 44745 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 467 at @s run clone from minecraft:overworld 44744 ~ 43999 44746 ~ 46001 to switch:game 44744 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 468 at @s in switch:game run particle cloud 44746 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 468 at @s run clone from minecraft:overworld 44746 ~ 43999 44747 ~ 46001 to switch:game 44746 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 469 at @s in switch:game run particle cloud 44748 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 469 at @s run clone from minecraft:overworld 44747 ~ 43999 44749 ~ 46001 to switch:game 44747 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 470 at @s in switch:game run particle cloud 44749 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 470 at @s run clone from minecraft:overworld 44749 ~ 43999 44750 ~ 46001 to switch:game 44749 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 471 at @s in switch:game run particle cloud 44751 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 471 at @s run clone from minecraft:overworld 44750 ~ 43999 44752 ~ 46001 to switch:game 44750 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 472 at @s in switch:game run particle cloud 44753 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 472 at @s run clone from minecraft:overworld 44752 ~ 43999 44754 ~ 46001 to switch:game 44752 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 473 at @s in switch:game run particle cloud 44754 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 473 at @s run clone from minecraft:overworld 44754 ~ 43999 44755 ~ 46001 to switch:game 44754 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 474 at @s in switch:game run particle cloud 44756 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 474 at @s run clone from minecraft:overworld 44755 ~ 43999 44757 ~ 46001 to switch:game 44755 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 475 at @s in switch:game run particle cloud 44757 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 475 at @s run clone from minecraft:overworld 44757 ~ 43999 44758 ~ 46001 to switch:game 44757 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 476 at @s in switch:game run particle cloud 44759 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 476 at @s run clone from minecraft:overworld 44758 ~ 43999 44760 ~ 46001 to switch:game 44758 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 477 at @s in switch:game run particle cloud 44761 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 477 at @s run clone from minecraft:overworld 44760 ~ 43999 44762 ~ 46001 to switch:game 44760 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 478 at @s in switch:game run particle cloud 44762 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 478 at @s run clone from minecraft:overworld 44762 ~ 43999 44763 ~ 46001 to switch:game 44762 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 479 at @s in switch:game run particle cloud 44764 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 479 at @s run clone from minecraft:overworld 44763 ~ 43999 44765 ~ 46001 to switch:game 44763 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 480 at @s in switch:game run particle cloud 44765 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 480 at @s run clone from minecraft:overworld 44765 ~ 43999 44766 ~ 46001 to switch:game 44765 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 481 at @s in switch:game run particle cloud 44767 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 481 at @s run clone from minecraft:overworld 44766 ~ 43999 44768 ~ 46001 to switch:game 44766 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 482 at @s in switch:game run particle cloud 44769 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 482 at @s run clone from minecraft:overworld 44768 ~ 43999 44770 ~ 46001 to switch:game 44768 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 483 at @s in switch:game run particle cloud 44770 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 483 at @s run clone from minecraft:overworld 44770 ~ 43999 44771 ~ 46001 to switch:game 44770 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 484 at @s in switch:game run particle cloud 44772 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 484 at @s run clone from minecraft:overworld 44771 ~ 43999 44773 ~ 46001 to switch:game 44771 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 485 at @s in switch:game run particle cloud 44773 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 485 at @s run clone from minecraft:overworld 44773 ~ 43999 44774 ~ 46001 to switch:game 44773 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 486 at @s in switch:game run particle cloud 44775 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 486 at @s run clone from minecraft:overworld 44774 ~ 43999 44776 ~ 46001 to switch:game 44774 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 487 at @s in switch:game run particle cloud 44777 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 487 at @s run clone from minecraft:overworld 44776 ~ 43999 44778 ~ 46001 to switch:game 44776 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 488 at @s in switch:game run particle cloud 44778 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 488 at @s run clone from minecraft:overworld 44778 ~ 43999 44779 ~ 46001 to switch:game 44778 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 489 at @s in switch:game run particle cloud 44780 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 489 at @s run clone from minecraft:overworld 44779 ~ 43999 44781 ~ 46001 to switch:game 44779 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 490 at @s in switch:game run particle cloud 44781 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 490 at @s run clone from minecraft:overworld 44781 ~ 43999 44782 ~ 46001 to switch:game 44781 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 491 at @s in switch:game run particle cloud 44783 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 491 at @s run clone from minecraft:overworld 44782 ~ 43999 44784 ~ 46001 to switch:game 44782 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 492 at @s in switch:game run particle cloud 44785 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 492 at @s run clone from minecraft:overworld 44784 ~ 43999 44786 ~ 46001 to switch:game 44784 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 493 at @s in switch:game run particle cloud 44786 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 493 at @s run clone from minecraft:overworld 44786 ~ 43999 44787 ~ 46001 to switch:game 44786 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 494 at @s in switch:game run particle cloud 44788 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 494 at @s run clone from minecraft:overworld 44787 ~ 43999 44789 ~ 46001 to switch:game 44787 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 495 at @s in switch:game run particle cloud 44789 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 495 at @s run clone from minecraft:overworld 44789 ~ 43999 44790 ~ 46001 to switch:game 44789 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 496 at @s in switch:game run particle cloud 44791 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 496 at @s run clone from minecraft:overworld 44790 ~ 43999 44792 ~ 46001 to switch:game 44790 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 497 at @s in switch:game run particle cloud 44793 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 497 at @s run clone from minecraft:overworld 44792 ~ 43999 44794 ~ 46001 to switch:game 44792 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 498 at @s in switch:game run particle cloud 44794 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 498 at @s run clone from minecraft:overworld 44794 ~ 43999 44795 ~ 46001 to switch:game 44794 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 499 at @s in switch:game run particle cloud 44796 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 499 at @s run clone from minecraft:overworld 44795 ~ 43999 44797 ~ 46001 to switch:game 44795 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 500 at @s in switch:game run particle cloud 44797 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 500 at @s run clone from minecraft:overworld 44797 ~ 43999 44798 ~ 46001 to switch:game 44797 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 501 at @s in switch:game run particle cloud 44799 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 501 at @s run clone from minecraft:overworld 44798 ~ 43999 44800 ~ 46001 to switch:game 44798 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 502 at @s in switch:game run particle cloud 44801 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 502 at @s run clone from minecraft:overworld 44800 ~ 43999 44802 ~ 46001 to switch:game 44800 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 503 at @s in switch:game run particle cloud 44802 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 503 at @s run clone from minecraft:overworld 44802 ~ 43999 44803 ~ 46001 to switch:game 44802 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 504 at @s in switch:game run particle cloud 44804 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 504 at @s run clone from minecraft:overworld 44803 ~ 43999 44805 ~ 46001 to switch:game 44803 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 505 at @s in switch:game run particle cloud 44805 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 505 at @s run clone from minecraft:overworld 44805 ~ 43999 44806 ~ 46001 to switch:game 44805 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 506 at @s in switch:game run particle cloud 44807 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 506 at @s run clone from minecraft:overworld 44806 ~ 43999 44808 ~ 46001 to switch:game 44806 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 507 at @s in switch:game run particle cloud 44809 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 507 at @s run clone from minecraft:overworld 44808 ~ 43999 44810 ~ 46001 to switch:game 44808 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 508 at @s in switch:game run particle cloud 44810 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 508 at @s run clone from minecraft:overworld 44810 ~ 43999 44811 ~ 46001 to switch:game 44810 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 509 at @s in switch:game run particle cloud 44812 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 509 at @s run clone from minecraft:overworld 44811 ~ 43999 44813 ~ 46001 to switch:game 44811 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 510 at @s in switch:game run particle cloud 44813 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 510 at @s run clone from minecraft:overworld 44813 ~ 43999 44814 ~ 46001 to switch:game 44813 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 511 at @s in switch:game run particle cloud 44815 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 511 at @s run clone from minecraft:overworld 44814 ~ 43999 44816 ~ 46001 to switch:game 44814 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 512 at @s in switch:game run particle cloud 44817 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 512 at @s run clone from minecraft:overworld 44816 ~ 43999 44818 ~ 46001 to switch:game 44816 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 513 at @s in switch:game run particle cloud 44818 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 513 at @s run clone from minecraft:overworld 44818 ~ 43999 44819 ~ 46001 to switch:game 44818 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 514 at @s in switch:game run particle cloud 44820 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 514 at @s run clone from minecraft:overworld 44819 ~ 43999 44821 ~ 46001 to switch:game 44819 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 515 at @s in switch:game run particle cloud 44821 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 515 at @s run clone from minecraft:overworld 44821 ~ 43999 44822 ~ 46001 to switch:game 44821 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 516 at @s in switch:game run particle cloud 44823 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 516 at @s run clone from minecraft:overworld 44822 ~ 43999 44824 ~ 46001 to switch:game 44822 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 517 at @s in switch:game run particle cloud 44824 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 517 at @s run clone from minecraft:overworld 44824 ~ 43999 44825 ~ 46001 to switch:game 44824 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 518 at @s in switch:game run particle cloud 44826 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 518 at @s run clone from minecraft:overworld 44825 ~ 43999 44827 ~ 46001 to switch:game 44825 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 519 at @s in switch:game run particle cloud 44828 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 519 at @s run clone from minecraft:overworld 44827 ~ 43999 44829 ~ 46001 to switch:game 44827 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 520 at @s in switch:game run particle cloud 44829 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 520 at @s run clone from minecraft:overworld 44829 ~ 43999 44830 ~ 46001 to switch:game 44829 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 521 at @s in switch:game run particle cloud 44831 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 521 at @s run clone from minecraft:overworld 44830 ~ 43999 44832 ~ 46001 to switch:game 44830 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 522 at @s in switch:game run particle cloud 44832 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 522 at @s run clone from minecraft:overworld 44832 ~ 43999 44833 ~ 46001 to switch:game 44832 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 523 at @s in switch:game run particle cloud 44834 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 523 at @s run clone from minecraft:overworld 44833 ~ 43999 44835 ~ 46001 to switch:game 44833 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 524 at @s in switch:game run particle cloud 44836 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 524 at @s run clone from minecraft:overworld 44835 ~ 43999 44837 ~ 46001 to switch:game 44835 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 525 at @s in switch:game run particle cloud 44837 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 525 at @s run clone from minecraft:overworld 44837 ~ 43999 44838 ~ 46001 to switch:game 44837 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 526 at @s in switch:game run particle cloud 44839 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 526 at @s run clone from minecraft:overworld 44838 ~ 43999 44840 ~ 46001 to switch:game 44838 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 527 at @s in switch:game run particle cloud 44840 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 527 at @s run clone from minecraft:overworld 44840 ~ 43999 44841 ~ 46001 to switch:game 44840 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 528 at @s in switch:game run particle cloud 44842 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 528 at @s run clone from minecraft:overworld 44841 ~ 43999 44843 ~ 46001 to switch:game 44841 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 529 at @s in switch:game run particle cloud 44844 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 529 at @s run clone from minecraft:overworld 44843 ~ 43999 44845 ~ 46001 to switch:game 44843 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 530 at @s in switch:game run particle cloud 44845 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 530 at @s run clone from minecraft:overworld 44845 ~ 43999 44846 ~ 46001 to switch:game 44845 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 531 at @s in switch:game run particle cloud 44847 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 531 at @s run clone from minecraft:overworld 44846 ~ 43999 44848 ~ 46001 to switch:game 44846 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 532 at @s in switch:game run particle cloud 44848 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 532 at @s run clone from minecraft:overworld 44848 ~ 43999 44849 ~ 46001 to switch:game 44848 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 533 at @s in switch:game run particle cloud 44850 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 533 at @s run clone from minecraft:overworld 44849 ~ 43999 44851 ~ 46001 to switch:game 44849 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 534 at @s in switch:game run particle cloud 44852 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 534 at @s run clone from minecraft:overworld 44851 ~ 43999 44853 ~ 46001 to switch:game 44851 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 535 at @s in switch:game run particle cloud 44853 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 535 at @s run clone from minecraft:overworld 44853 ~ 43999 44854 ~ 46001 to switch:game 44853 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 536 at @s in switch:game run particle cloud 44855 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 536 at @s run clone from minecraft:overworld 44854 ~ 43999 44856 ~ 46001 to switch:game 44854 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 537 at @s in switch:game run particle cloud 44856 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 537 at @s run clone from minecraft:overworld 44856 ~ 43999 44857 ~ 46001 to switch:game 44856 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 538 at @s in switch:game run particle cloud 44858 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 538 at @s run clone from minecraft:overworld 44857 ~ 43999 44859 ~ 46001 to switch:game 44857 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 539 at @s in switch:game run particle cloud 44860 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 539 at @s run clone from minecraft:overworld 44859 ~ 43999 44861 ~ 46001 to switch:game 44859 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 540 at @s in switch:game run particle cloud 44861 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 540 at @s run clone from minecraft:overworld 44861 ~ 43999 44862 ~ 46001 to switch:game 44861 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 541 at @s in switch:game run particle cloud 44863 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 541 at @s run clone from minecraft:overworld 44862 ~ 43999 44864 ~ 46001 to switch:game 44862 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 542 at @s in switch:game run particle cloud 44864 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 542 at @s run clone from minecraft:overworld 44864 ~ 43999 44865 ~ 46001 to switch:game 44864 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 543 at @s in switch:game run particle cloud 44866 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 543 at @s run clone from minecraft:overworld 44865 ~ 43999 44867 ~ 46001 to switch:game 44865 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 544 at @s in switch:game run particle cloud 44868 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 544 at @s run clone from minecraft:overworld 44867 ~ 43999 44869 ~ 46001 to switch:game 44867 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 545 at @s in switch:game run particle cloud 44869 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 545 at @s run clone from minecraft:overworld 44869 ~ 43999 44870 ~ 46001 to switch:game 44869 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 546 at @s in switch:game run particle cloud 44871 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 546 at @s run clone from minecraft:overworld 44870 ~ 43999 44872 ~ 46001 to switch:game 44870 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 547 at @s in switch:game run particle cloud 44872 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 547 at @s run clone from minecraft:overworld 44872 ~ 43999 44873 ~ 46001 to switch:game 44872 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 548 at @s in switch:game run particle cloud 44874 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 548 at @s run clone from minecraft:overworld 44873 ~ 43999 44875 ~ 46001 to switch:game 44873 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 549 at @s in switch:game run particle cloud 44876 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 549 at @s run clone from minecraft:overworld 44875 ~ 43999 44877 ~ 46001 to switch:game 44875 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 550 at @s in switch:game run particle cloud 44877 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 550 at @s run clone from minecraft:overworld 44877 ~ 43999 44878 ~ 46001 to switch:game 44877 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 551 at @s in switch:game run particle cloud 44879 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 551 at @s run clone from minecraft:overworld 44878 ~ 43999 44880 ~ 46001 to switch:game 44878 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 552 at @s in switch:game run particle cloud 44880 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 552 at @s run clone from minecraft:overworld 44880 ~ 43999 44881 ~ 46001 to switch:game 44880 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 553 at @s in switch:game run particle cloud 44882 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 553 at @s run clone from minecraft:overworld 44881 ~ 43999 44883 ~ 46001 to switch:game 44881 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 554 at @s in switch:game run particle cloud 44884 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 554 at @s run clone from minecraft:overworld 44883 ~ 43999 44885 ~ 46001 to switch:game 44883 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 555 at @s in switch:game run particle cloud 44885 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 555 at @s run clone from minecraft:overworld 44885 ~ 43999 44886 ~ 46001 to switch:game 44885 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 556 at @s in switch:game run particle cloud 44887 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 556 at @s run clone from minecraft:overworld 44886 ~ 43999 44888 ~ 46001 to switch:game 44886 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 557 at @s in switch:game run particle cloud 44888 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 557 at @s run clone from minecraft:overworld 44888 ~ 43999 44889 ~ 46001 to switch:game 44888 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 558 at @s in switch:game run particle cloud 44890 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 558 at @s run clone from minecraft:overworld 44889 ~ 43999 44891 ~ 46001 to switch:game 44889 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 559 at @s in switch:game run particle cloud 44892 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 559 at @s run clone from minecraft:overworld 44891 ~ 43999 44893 ~ 46001 to switch:game 44891 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 560 at @s in switch:game run particle cloud 44893 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 560 at @s run clone from minecraft:overworld 44893 ~ 43999 44894 ~ 46001 to switch:game 44893 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 561 at @s in switch:game run particle cloud 44895 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 561 at @s run clone from minecraft:overworld 44894 ~ 43999 44896 ~ 46001 to switch:game 44894 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 562 at @s in switch:game run particle cloud 44896 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 562 at @s run clone from minecraft:overworld 44896 ~ 43999 44897 ~ 46001 to switch:game 44896 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 563 at @s in switch:game run particle cloud 44898 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 563 at @s run clone from minecraft:overworld 44897 ~ 43999 44899 ~ 46001 to switch:game 44897 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 564 at @s in switch:game run particle cloud 44899 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 564 at @s run clone from minecraft:overworld 44899 ~ 43999 44900 ~ 46001 to switch:game 44899 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 565 at @s in switch:game run particle cloud 44901 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 565 at @s run clone from minecraft:overworld 44900 ~ 43999 44902 ~ 46001 to switch:game 44900 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 566 at @s in switch:game run particle cloud 44903 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 566 at @s run clone from minecraft:overworld 44902 ~ 43999 44904 ~ 46001 to switch:game 44902 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 567 at @s in switch:game run particle cloud 44904 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 567 at @s run clone from minecraft:overworld 44904 ~ 43999 44905 ~ 46001 to switch:game 44904 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 568 at @s in switch:game run particle cloud 44906 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 568 at @s run clone from minecraft:overworld 44905 ~ 43999 44907 ~ 46001 to switch:game 44905 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 569 at @s in switch:game run particle cloud 44907 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 569 at @s run clone from minecraft:overworld 44907 ~ 43999 44908 ~ 46001 to switch:game 44907 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 570 at @s in switch:game run particle cloud 44909 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 570 at @s run clone from minecraft:overworld 44908 ~ 43999 44910 ~ 46001 to switch:game 44908 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 571 at @s in switch:game run particle cloud 44911 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 571 at @s run clone from minecraft:overworld 44910 ~ 43999 44912 ~ 46001 to switch:game 44910 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 572 at @s in switch:game run particle cloud 44912 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 572 at @s run clone from minecraft:overworld 44912 ~ 43999 44913 ~ 46001 to switch:game 44912 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 573 at @s in switch:game run particle cloud 44914 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 573 at @s run clone from minecraft:overworld 44913 ~ 43999 44915 ~ 46001 to switch:game 44913 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 574 at @s in switch:game run particle cloud 44915 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 574 at @s run clone from minecraft:overworld 44915 ~ 43999 44916 ~ 46001 to switch:game 44915 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 575 at @s in switch:game run particle cloud 44917 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 575 at @s run clone from minecraft:overworld 44916 ~ 43999 44918 ~ 46001 to switch:game 44916 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 576 at @s in switch:game run particle cloud 44919 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 576 at @s run clone from minecraft:overworld 44918 ~ 43999 44920 ~ 46001 to switch:game 44918 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 577 at @s in switch:game run particle cloud 44920 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 577 at @s run clone from minecraft:overworld 44920 ~ 43999 44921 ~ 46001 to switch:game 44920 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 578 at @s in switch:game run particle cloud 44922 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 578 at @s run clone from minecraft:overworld 44921 ~ 43999 44923 ~ 46001 to switch:game 44921 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 579 at @s in switch:game run particle cloud 44923 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 579 at @s run clone from minecraft:overworld 44923 ~ 43999 44924 ~ 46001 to switch:game 44923 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 580 at @s in switch:game run particle cloud 44925 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 580 at @s run clone from minecraft:overworld 44924 ~ 43999 44926 ~ 46001 to switch:game 44924 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 581 at @s in switch:game run particle cloud 44927 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 581 at @s run clone from minecraft:overworld 44926 ~ 43999 44928 ~ 46001 to switch:game 44926 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 582 at @s in switch:game run particle cloud 44928 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 582 at @s run clone from minecraft:overworld 44928 ~ 43999 44929 ~ 46001 to switch:game 44928 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 583 at @s in switch:game run particle cloud 44930 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 583 at @s run clone from minecraft:overworld 44929 ~ 43999 44931 ~ 46001 to switch:game 44929 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 584 at @s in switch:game run particle cloud 44931 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 584 at @s run clone from minecraft:overworld 44931 ~ 43999 44932 ~ 46001 to switch:game 44931 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 585 at @s in switch:game run particle cloud 44933 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 585 at @s run clone from minecraft:overworld 44932 ~ 43999 44934 ~ 46001 to switch:game 44932 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 586 at @s in switch:game run particle cloud 44935 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 586 at @s run clone from minecraft:overworld 44934 ~ 43999 44936 ~ 46001 to switch:game 44934 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 587 at @s in switch:game run particle cloud 44936 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 587 at @s run clone from minecraft:overworld 44936 ~ 43999 44937 ~ 46001 to switch:game 44936 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 588 at @s in switch:game run particle cloud 44938 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 588 at @s run clone from minecraft:overworld 44937 ~ 43999 44939 ~ 46001 to switch:game 44937 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 589 at @s in switch:game run particle cloud 44939 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 589 at @s run clone from minecraft:overworld 44939 ~ 43999 44940 ~ 46001 to switch:game 44939 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 590 at @s in switch:game run particle cloud 44941 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 590 at @s run clone from minecraft:overworld 44940 ~ 43999 44942 ~ 46001 to switch:game 44940 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 591 at @s in switch:game run particle cloud 44943 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 591 at @s run clone from minecraft:overworld 44942 ~ 43999 44944 ~ 46001 to switch:game 44942 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 592 at @s in switch:game run particle cloud 44944 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 592 at @s run clone from minecraft:overworld 44944 ~ 43999 44945 ~ 46001 to switch:game 44944 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 593 at @s in switch:game run particle cloud 44946 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 593 at @s run clone from minecraft:overworld 44945 ~ 43999 44947 ~ 46001 to switch:game 44945 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 594 at @s in switch:game run particle cloud 44947 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 594 at @s run clone from minecraft:overworld 44947 ~ 43999 44948 ~ 46001 to switch:game 44947 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 595 at @s in switch:game run particle cloud 44949 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 595 at @s run clone from minecraft:overworld 44948 ~ 43999 44950 ~ 46001 to switch:game 44948 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 596 at @s in switch:game run particle cloud 44951 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 596 at @s run clone from minecraft:overworld 44950 ~ 43999 44952 ~ 46001 to switch:game 44950 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 597 at @s in switch:game run particle cloud 44952 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 597 at @s run clone from minecraft:overworld 44952 ~ 43999 44953 ~ 46001 to switch:game 44952 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 598 at @s in switch:game run particle cloud 44954 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 598 at @s run clone from minecraft:overworld 44953 ~ 43999 44955 ~ 46001 to switch:game 44953 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 599 at @s in switch:game run particle cloud 44955 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 599 at @s run clone from minecraft:overworld 44955 ~ 43999 44956 ~ 46001 to switch:game 44955 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 600 at @s in switch:game run particle cloud 44957 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 600 at @s run clone from minecraft:overworld 44956 ~ 43999 44958 ~ 46001 to switch:game 44956 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 601 at @s in switch:game run particle cloud 44959 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 601 at @s run clone from minecraft:overworld 44958 ~ 43999 44960 ~ 46001 to switch:game 44958 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 602 at @s in switch:game run particle cloud 44960 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 602 at @s run clone from minecraft:overworld 44960 ~ 43999 44961 ~ 46001 to switch:game 44960 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 603 at @s in switch:game run particle cloud 44962 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 603 at @s run clone from minecraft:overworld 44961 ~ 43999 44963 ~ 46001 to switch:game 44961 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 604 at @s in switch:game run particle cloud 44963 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 604 at @s run clone from minecraft:overworld 44963 ~ 43999 44964 ~ 46001 to switch:game 44963 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 605 at @s in switch:game run particle cloud 44965 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 605 at @s run clone from minecraft:overworld 44964 ~ 43999 44966 ~ 46001 to switch:game 44964 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 606 at @s in switch:game run particle cloud 44966 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 606 at @s run clone from minecraft:overworld 44966 ~ 43999 44967 ~ 46001 to switch:game 44966 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 607 at @s in switch:game run particle cloud 44968 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 607 at @s run clone from minecraft:overworld 44967 ~ 43999 44969 ~ 46001 to switch:game 44967 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 608 at @s in switch:game run particle cloud 44970 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 608 at @s run clone from minecraft:overworld 44969 ~ 43999 44971 ~ 46001 to switch:game 44969 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 609 at @s in switch:game run particle cloud 44971 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 609 at @s run clone from minecraft:overworld 44971 ~ 43999 44972 ~ 46001 to switch:game 44971 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 610 at @s in switch:game run particle cloud 44973 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 610 at @s run clone from minecraft:overworld 44972 ~ 43999 44974 ~ 46001 to switch:game 44972 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 611 at @s in switch:game run particle cloud 44974 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 611 at @s run clone from minecraft:overworld 44974 ~ 43999 44975 ~ 46001 to switch:game 44974 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 612 at @s in switch:game run particle cloud 44976 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 612 at @s run clone from minecraft:overworld 44975 ~ 43999 44977 ~ 46001 to switch:game 44975 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 613 at @s in switch:game run particle cloud 44978 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 613 at @s run clone from minecraft:overworld 44977 ~ 43999 44979 ~ 46001 to switch:game 44977 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 614 at @s in switch:game run particle cloud 44979 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 614 at @s run clone from minecraft:overworld 44979 ~ 43999 44980 ~ 46001 to switch:game 44979 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 615 at @s in switch:game run particle cloud 44981 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 615 at @s run clone from minecraft:overworld 44980 ~ 43999 44982 ~ 46001 to switch:game 44980 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 616 at @s in switch:game run particle cloud 44982 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 616 at @s run clone from minecraft:overworld 44982 ~ 43999 44983 ~ 46001 to switch:game 44982 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 617 at @s in switch:game run particle cloud 44984 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 617 at @s run clone from minecraft:overworld 44983 ~ 43999 44985 ~ 46001 to switch:game 44983 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 618 at @s in switch:game run particle cloud 44986 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 618 at @s run clone from minecraft:overworld 44985 ~ 43999 44987 ~ 46001 to switch:game 44985 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 619 at @s in switch:game run particle cloud 44987 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 619 at @s run clone from minecraft:overworld 44987 ~ 43999 44988 ~ 46001 to switch:game 44987 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 620 at @s in switch:game run particle cloud 44989 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 620 at @s run clone from minecraft:overworld 44988 ~ 43999 44990 ~ 46001 to switch:game 44988 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 621 at @s in switch:game run particle cloud 44990 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 621 at @s run clone from minecraft:overworld 44990 ~ 43999 44991 ~ 46001 to switch:game 44990 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 622 at @s in switch:game run particle cloud 44992 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 622 at @s run clone from minecraft:overworld 44991 ~ 43999 44993 ~ 46001 to switch:game 44991 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 623 at @s in switch:game run particle cloud 44994 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 623 at @s run clone from minecraft:overworld 44993 ~ 43999 44995 ~ 46001 to switch:game 44993 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 624 at @s in switch:game run particle cloud 44995 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 624 at @s run clone from minecraft:overworld 44995 ~ 43999 44996 ~ 46001 to switch:game 44995 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 625 at @s in switch:game run particle cloud 44997 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 625 at @s run clone from minecraft:overworld 44996 ~ 43999 44998 ~ 46001 to switch:game 44996 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 626 at @s in switch:game run particle cloud 44998 ~101.5 45000 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 626 at @s run clone from minecraft:overworld 44998 ~ 43999 44999 ~ 46001 to switch:game 44998 ~101 43999 replace force

execute if score #rg_abandoned_city_mod switch.data matches 627 at @s in switch:game run particle cloud 45000 ~101.5 45000 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 627 at @s run clone from minecraft:overworld 44999 ~ 43999 45001 ~ 46001 to switch:game 44999 ~101 43999 replace force

scoreboard players add #rg_abandoned_city_mod switch.data 1
execute if score #rg_abandoned_city_mod switch.data matches 628 in switch:game run kill @e[type=item,x=44500,y=-1,z=45000,distance=..1000]
execute if score #rg_abandoned_city_mod switch.data matches 628 run scoreboard players add #rg_abandoned_city_y switch.data 1
execute if score #rg_abandoned_city_mod switch.data matches 628 run scoreboard players set #rg_abandoned_city_mod switch.data 0

kill @s

