
#> switch:maps/survival/abandoned_city/regeneration_on_marker
#
# @within	switch:maps/survival/abandoned_city/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_abandoned_city_y switch.data

execute if score #rg_abandoned_city_mod switch.data matches 0 at @s in switch:game run particle cloud 8001 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 0 at @s run clone from minecraft:overworld 8000 ~ -2000 8002 ~ 2 to switch:game 8000 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 1 at @s in switch:game run particle cloud 8002 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 1 at @s run clone from minecraft:overworld 8002 ~ -2000 8003 ~ 2 to switch:game 8002 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 2 at @s in switch:game run particle cloud 8004 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 2 at @s run clone from minecraft:overworld 8003 ~ -2000 8005 ~ 2 to switch:game 8003 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 3 at @s in switch:game run particle cloud 8005 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 3 at @s run clone from minecraft:overworld 8005 ~ -2000 8006 ~ 2 to switch:game 8005 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 4 at @s in switch:game run particle cloud 8007 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 4 at @s run clone from minecraft:overworld 8006 ~ -2000 8008 ~ 2 to switch:game 8006 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 5 at @s in switch:game run particle cloud 8009 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 5 at @s run clone from minecraft:overworld 8008 ~ -2000 8010 ~ 2 to switch:game 8008 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 6 at @s in switch:game run particle cloud 8010 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 6 at @s run clone from minecraft:overworld 8010 ~ -2000 8011 ~ 2 to switch:game 8010 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 7 at @s in switch:game run particle cloud 8012 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 7 at @s run clone from minecraft:overworld 8011 ~ -2000 8013 ~ 2 to switch:game 8011 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 8 at @s in switch:game run particle cloud 8013 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 8 at @s run clone from minecraft:overworld 8013 ~ -2000 8014 ~ 2 to switch:game 8013 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 9 at @s in switch:game run particle cloud 8015 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 9 at @s run clone from minecraft:overworld 8014 ~ -2000 8016 ~ 2 to switch:game 8014 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 10 at @s in switch:game run particle cloud 8017 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 10 at @s run clone from minecraft:overworld 8016 ~ -2000 8018 ~ 2 to switch:game 8016 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 11 at @s in switch:game run particle cloud 8018 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 11 at @s run clone from minecraft:overworld 8018 ~ -2000 8019 ~ 2 to switch:game 8018 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 12 at @s in switch:game run particle cloud 8020 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 12 at @s run clone from minecraft:overworld 8019 ~ -2000 8021 ~ 2 to switch:game 8019 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 13 at @s in switch:game run particle cloud 8021 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 13 at @s run clone from minecraft:overworld 8021 ~ -2000 8022 ~ 2 to switch:game 8021 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 14 at @s in switch:game run particle cloud 8023 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 14 at @s run clone from minecraft:overworld 8022 ~ -2000 8024 ~ 2 to switch:game 8022 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 15 at @s in switch:game run particle cloud 8025 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 15 at @s run clone from minecraft:overworld 8024 ~ -2000 8026 ~ 2 to switch:game 8024 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 16 at @s in switch:game run particle cloud 8026 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 16 at @s run clone from minecraft:overworld 8026 ~ -2000 8027 ~ 2 to switch:game 8026 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 17 at @s in switch:game run particle cloud 8028 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 17 at @s run clone from minecraft:overworld 8027 ~ -2000 8029 ~ 2 to switch:game 8027 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 18 at @s in switch:game run particle cloud 8029 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 18 at @s run clone from minecraft:overworld 8029 ~ -2000 8030 ~ 2 to switch:game 8029 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 19 at @s in switch:game run particle cloud 8031 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 19 at @s run clone from minecraft:overworld 8030 ~ -2000 8032 ~ 2 to switch:game 8030 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 20 at @s in switch:game run particle cloud 8033 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 20 at @s run clone from minecraft:overworld 8032 ~ -2000 8034 ~ 2 to switch:game 8032 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 21 at @s in switch:game run particle cloud 8034 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 21 at @s run clone from minecraft:overworld 8034 ~ -2000 8035 ~ 2 to switch:game 8034 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 22 at @s in switch:game run particle cloud 8036 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 22 at @s run clone from minecraft:overworld 8035 ~ -2000 8037 ~ 2 to switch:game 8035 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 23 at @s in switch:game run particle cloud 8037 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 23 at @s run clone from minecraft:overworld 8037 ~ -2000 8038 ~ 2 to switch:game 8037 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 24 at @s in switch:game run particle cloud 8039 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 24 at @s run clone from minecraft:overworld 8038 ~ -2000 8040 ~ 2 to switch:game 8038 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 25 at @s in switch:game run particle cloud 8040 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 25 at @s run clone from minecraft:overworld 8040 ~ -2000 8041 ~ 2 to switch:game 8040 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 26 at @s in switch:game run particle cloud 8042 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 26 at @s run clone from minecraft:overworld 8041 ~ -2000 8043 ~ 2 to switch:game 8041 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 27 at @s in switch:game run particle cloud 8044 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 27 at @s run clone from minecraft:overworld 8043 ~ -2000 8045 ~ 2 to switch:game 8043 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 28 at @s in switch:game run particle cloud 8045 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 28 at @s run clone from minecraft:overworld 8045 ~ -2000 8046 ~ 2 to switch:game 8045 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 29 at @s in switch:game run particle cloud 8047 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 29 at @s run clone from minecraft:overworld 8046 ~ -2000 8048 ~ 2 to switch:game 8046 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 30 at @s in switch:game run particle cloud 8048 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 30 at @s run clone from minecraft:overworld 8048 ~ -2000 8049 ~ 2 to switch:game 8048 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 31 at @s in switch:game run particle cloud 8050 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 31 at @s run clone from minecraft:overworld 8049 ~ -2000 8051 ~ 2 to switch:game 8049 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 32 at @s in switch:game run particle cloud 8052 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 32 at @s run clone from minecraft:overworld 8051 ~ -2000 8053 ~ 2 to switch:game 8051 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 33 at @s in switch:game run particle cloud 8053 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 33 at @s run clone from minecraft:overworld 8053 ~ -2000 8054 ~ 2 to switch:game 8053 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 34 at @s in switch:game run particle cloud 8055 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 34 at @s run clone from minecraft:overworld 8054 ~ -2000 8056 ~ 2 to switch:game 8054 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 35 at @s in switch:game run particle cloud 8056 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 35 at @s run clone from minecraft:overworld 8056 ~ -2000 8057 ~ 2 to switch:game 8056 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 36 at @s in switch:game run particle cloud 8058 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 36 at @s run clone from minecraft:overworld 8057 ~ -2000 8059 ~ 2 to switch:game 8057 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 37 at @s in switch:game run particle cloud 8060 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 37 at @s run clone from minecraft:overworld 8059 ~ -2000 8061 ~ 2 to switch:game 8059 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 38 at @s in switch:game run particle cloud 8061 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 38 at @s run clone from minecraft:overworld 8061 ~ -2000 8062 ~ 2 to switch:game 8061 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 39 at @s in switch:game run particle cloud 8063 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 39 at @s run clone from minecraft:overworld 8062 ~ -2000 8064 ~ 2 to switch:game 8062 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 40 at @s in switch:game run particle cloud 8064 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 40 at @s run clone from minecraft:overworld 8064 ~ -2000 8065 ~ 2 to switch:game 8064 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 41 at @s in switch:game run particle cloud 8066 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 41 at @s run clone from minecraft:overworld 8065 ~ -2000 8067 ~ 2 to switch:game 8065 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 42 at @s in switch:game run particle cloud 8068 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 42 at @s run clone from minecraft:overworld 8067 ~ -2000 8069 ~ 2 to switch:game 8067 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 43 at @s in switch:game run particle cloud 8069 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 43 at @s run clone from minecraft:overworld 8069 ~ -2000 8070 ~ 2 to switch:game 8069 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 44 at @s in switch:game run particle cloud 8071 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 44 at @s run clone from minecraft:overworld 8070 ~ -2000 8072 ~ 2 to switch:game 8070 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 45 at @s in switch:game run particle cloud 8072 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 45 at @s run clone from minecraft:overworld 8072 ~ -2000 8073 ~ 2 to switch:game 8072 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 46 at @s in switch:game run particle cloud 8074 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 46 at @s run clone from minecraft:overworld 8073 ~ -2000 8075 ~ 2 to switch:game 8073 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 47 at @s in switch:game run particle cloud 8076 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 47 at @s run clone from minecraft:overworld 8075 ~ -2000 8077 ~ 2 to switch:game 8075 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 48 at @s in switch:game run particle cloud 8077 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 48 at @s run clone from minecraft:overworld 8077 ~ -2000 8078 ~ 2 to switch:game 8077 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 49 at @s in switch:game run particle cloud 8079 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 49 at @s run clone from minecraft:overworld 8078 ~ -2000 8080 ~ 2 to switch:game 8078 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 50 at @s in switch:game run particle cloud 8080 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 50 at @s run clone from minecraft:overworld 8080 ~ -2000 8081 ~ 2 to switch:game 8080 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 51 at @s in switch:game run particle cloud 8082 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 51 at @s run clone from minecraft:overworld 8081 ~ -2000 8083 ~ 2 to switch:game 8081 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 52 at @s in switch:game run particle cloud 8084 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 52 at @s run clone from minecraft:overworld 8083 ~ -2000 8085 ~ 2 to switch:game 8083 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 53 at @s in switch:game run particle cloud 8085 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 53 at @s run clone from minecraft:overworld 8085 ~ -2000 8086 ~ 2 to switch:game 8085 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 54 at @s in switch:game run particle cloud 8087 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 54 at @s run clone from minecraft:overworld 8086 ~ -2000 8088 ~ 2 to switch:game 8086 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 55 at @s in switch:game run particle cloud 8088 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 55 at @s run clone from minecraft:overworld 8088 ~ -2000 8089 ~ 2 to switch:game 8088 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 56 at @s in switch:game run particle cloud 8090 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 56 at @s run clone from minecraft:overworld 8089 ~ -2000 8091 ~ 2 to switch:game 8089 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 57 at @s in switch:game run particle cloud 8092 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 57 at @s run clone from minecraft:overworld 8091 ~ -2000 8093 ~ 2 to switch:game 8091 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 58 at @s in switch:game run particle cloud 8093 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 58 at @s run clone from minecraft:overworld 8093 ~ -2000 8094 ~ 2 to switch:game 8093 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 59 at @s in switch:game run particle cloud 8095 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 59 at @s run clone from minecraft:overworld 8094 ~ -2000 8096 ~ 2 to switch:game 8094 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 60 at @s in switch:game run particle cloud 8096 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 60 at @s run clone from minecraft:overworld 8096 ~ -2000 8097 ~ 2 to switch:game 8096 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 61 at @s in switch:game run particle cloud 8098 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 61 at @s run clone from minecraft:overworld 8097 ~ -2000 8099 ~ 2 to switch:game 8097 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 62 at @s in switch:game run particle cloud 8100 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 62 at @s run clone from minecraft:overworld 8099 ~ -2000 8101 ~ 2 to switch:game 8099 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 63 at @s in switch:game run particle cloud 8101 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 63 at @s run clone from minecraft:overworld 8101 ~ -2000 8102 ~ 2 to switch:game 8101 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 64 at @s in switch:game run particle cloud 8103 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 64 at @s run clone from minecraft:overworld 8102 ~ -2000 8104 ~ 2 to switch:game 8102 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 65 at @s in switch:game run particle cloud 8104 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 65 at @s run clone from minecraft:overworld 8104 ~ -2000 8105 ~ 2 to switch:game 8104 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 66 at @s in switch:game run particle cloud 8106 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 66 at @s run clone from minecraft:overworld 8105 ~ -2000 8107 ~ 2 to switch:game 8105 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 67 at @s in switch:game run particle cloud 8107 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 67 at @s run clone from minecraft:overworld 8107 ~ -2000 8108 ~ 2 to switch:game 8107 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 68 at @s in switch:game run particle cloud 8109 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 68 at @s run clone from minecraft:overworld 8108 ~ -2000 8110 ~ 2 to switch:game 8108 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 69 at @s in switch:game run particle cloud 8111 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 69 at @s run clone from minecraft:overworld 8110 ~ -2000 8112 ~ 2 to switch:game 8110 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 70 at @s in switch:game run particle cloud 8112 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 70 at @s run clone from minecraft:overworld 8112 ~ -2000 8113 ~ 2 to switch:game 8112 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 71 at @s in switch:game run particle cloud 8114 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 71 at @s run clone from minecraft:overworld 8113 ~ -2000 8115 ~ 2 to switch:game 8113 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 72 at @s in switch:game run particle cloud 8115 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 72 at @s run clone from minecraft:overworld 8115 ~ -2000 8116 ~ 2 to switch:game 8115 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 73 at @s in switch:game run particle cloud 8117 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 73 at @s run clone from minecraft:overworld 8116 ~ -2000 8118 ~ 2 to switch:game 8116 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 74 at @s in switch:game run particle cloud 8119 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 74 at @s run clone from minecraft:overworld 8118 ~ -2000 8120 ~ 2 to switch:game 8118 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 75 at @s in switch:game run particle cloud 8120 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 75 at @s run clone from minecraft:overworld 8120 ~ -2000 8121 ~ 2 to switch:game 8120 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 76 at @s in switch:game run particle cloud 8122 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 76 at @s run clone from minecraft:overworld 8121 ~ -2000 8123 ~ 2 to switch:game 8121 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 77 at @s in switch:game run particle cloud 8123 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 77 at @s run clone from minecraft:overworld 8123 ~ -2000 8124 ~ 2 to switch:game 8123 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 78 at @s in switch:game run particle cloud 8125 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 78 at @s run clone from minecraft:overworld 8124 ~ -2000 8126 ~ 2 to switch:game 8124 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 79 at @s in switch:game run particle cloud 8127 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 79 at @s run clone from minecraft:overworld 8126 ~ -2000 8128 ~ 2 to switch:game 8126 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 80 at @s in switch:game run particle cloud 8128 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 80 at @s run clone from minecraft:overworld 8128 ~ -2000 8129 ~ 2 to switch:game 8128 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 81 at @s in switch:game run particle cloud 8130 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 81 at @s run clone from minecraft:overworld 8129 ~ -2000 8131 ~ 2 to switch:game 8129 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 82 at @s in switch:game run particle cloud 8131 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 82 at @s run clone from minecraft:overworld 8131 ~ -2000 8132 ~ 2 to switch:game 8131 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 83 at @s in switch:game run particle cloud 8133 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 83 at @s run clone from minecraft:overworld 8132 ~ -2000 8134 ~ 2 to switch:game 8132 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 84 at @s in switch:game run particle cloud 8135 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 84 at @s run clone from minecraft:overworld 8134 ~ -2000 8136 ~ 2 to switch:game 8134 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 85 at @s in switch:game run particle cloud 8136 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 85 at @s run clone from minecraft:overworld 8136 ~ -2000 8137 ~ 2 to switch:game 8136 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 86 at @s in switch:game run particle cloud 8138 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 86 at @s run clone from minecraft:overworld 8137 ~ -2000 8139 ~ 2 to switch:game 8137 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 87 at @s in switch:game run particle cloud 8139 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 87 at @s run clone from minecraft:overworld 8139 ~ -2000 8140 ~ 2 to switch:game 8139 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 88 at @s in switch:game run particle cloud 8141 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 88 at @s run clone from minecraft:overworld 8140 ~ -2000 8142 ~ 2 to switch:game 8140 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 89 at @s in switch:game run particle cloud 8143 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 89 at @s run clone from minecraft:overworld 8142 ~ -2000 8144 ~ 2 to switch:game 8142 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 90 at @s in switch:game run particle cloud 8144 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 90 at @s run clone from minecraft:overworld 8144 ~ -2000 8145 ~ 2 to switch:game 8144 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 91 at @s in switch:game run particle cloud 8146 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 91 at @s run clone from minecraft:overworld 8145 ~ -2000 8147 ~ 2 to switch:game 8145 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 92 at @s in switch:game run particle cloud 8147 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 92 at @s run clone from minecraft:overworld 8147 ~ -2000 8148 ~ 2 to switch:game 8147 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 93 at @s in switch:game run particle cloud 8149 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 93 at @s run clone from minecraft:overworld 8148 ~ -2000 8150 ~ 2 to switch:game 8148 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 94 at @s in switch:game run particle cloud 8151 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 94 at @s run clone from minecraft:overworld 8150 ~ -2000 8152 ~ 2 to switch:game 8150 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 95 at @s in switch:game run particle cloud 8152 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 95 at @s run clone from minecraft:overworld 8152 ~ -2000 8153 ~ 2 to switch:game 8152 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 96 at @s in switch:game run particle cloud 8154 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 96 at @s run clone from minecraft:overworld 8153 ~ -2000 8155 ~ 2 to switch:game 8153 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 97 at @s in switch:game run particle cloud 8155 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 97 at @s run clone from minecraft:overworld 8155 ~ -2000 8156 ~ 2 to switch:game 8155 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 98 at @s in switch:game run particle cloud 8157 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 98 at @s run clone from minecraft:overworld 8156 ~ -2000 8158 ~ 2 to switch:game 8156 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 99 at @s in switch:game run particle cloud 8159 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 99 at @s run clone from minecraft:overworld 8158 ~ -2000 8160 ~ 2 to switch:game 8158 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 100 at @s in switch:game run particle cloud 8160 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 100 at @s run clone from minecraft:overworld 8160 ~ -2000 8161 ~ 2 to switch:game 8160 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 101 at @s in switch:game run particle cloud 8162 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 101 at @s run clone from minecraft:overworld 8161 ~ -2000 8163 ~ 2 to switch:game 8161 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 102 at @s in switch:game run particle cloud 8163 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 102 at @s run clone from minecraft:overworld 8163 ~ -2000 8164 ~ 2 to switch:game 8163 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 103 at @s in switch:game run particle cloud 8165 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 103 at @s run clone from minecraft:overworld 8164 ~ -2000 8166 ~ 2 to switch:game 8164 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 104 at @s in switch:game run particle cloud 8167 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 104 at @s run clone from minecraft:overworld 8166 ~ -2000 8168 ~ 2 to switch:game 8166 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 105 at @s in switch:game run particle cloud 8168 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 105 at @s run clone from minecraft:overworld 8168 ~ -2000 8169 ~ 2 to switch:game 8168 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 106 at @s in switch:game run particle cloud 8170 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 106 at @s run clone from minecraft:overworld 8169 ~ -2000 8171 ~ 2 to switch:game 8169 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 107 at @s in switch:game run particle cloud 8171 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 107 at @s run clone from minecraft:overworld 8171 ~ -2000 8172 ~ 2 to switch:game 8171 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 108 at @s in switch:game run particle cloud 8173 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 108 at @s run clone from minecraft:overworld 8172 ~ -2000 8174 ~ 2 to switch:game 8172 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 109 at @s in switch:game run particle cloud 8175 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 109 at @s run clone from minecraft:overworld 8174 ~ -2000 8176 ~ 2 to switch:game 8174 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 110 at @s in switch:game run particle cloud 8176 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 110 at @s run clone from minecraft:overworld 8176 ~ -2000 8177 ~ 2 to switch:game 8176 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 111 at @s in switch:game run particle cloud 8178 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 111 at @s run clone from minecraft:overworld 8177 ~ -2000 8179 ~ 2 to switch:game 8177 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 112 at @s in switch:game run particle cloud 8179 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 112 at @s run clone from minecraft:overworld 8179 ~ -2000 8180 ~ 2 to switch:game 8179 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 113 at @s in switch:game run particle cloud 8181 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 113 at @s run clone from minecraft:overworld 8180 ~ -2000 8182 ~ 2 to switch:game 8180 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 114 at @s in switch:game run particle cloud 8182 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 114 at @s run clone from minecraft:overworld 8182 ~ -2000 8183 ~ 2 to switch:game 8182 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 115 at @s in switch:game run particle cloud 8184 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 115 at @s run clone from minecraft:overworld 8183 ~ -2000 8185 ~ 2 to switch:game 8183 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 116 at @s in switch:game run particle cloud 8186 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 116 at @s run clone from minecraft:overworld 8185 ~ -2000 8187 ~ 2 to switch:game 8185 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 117 at @s in switch:game run particle cloud 8187 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 117 at @s run clone from minecraft:overworld 8187 ~ -2000 8188 ~ 2 to switch:game 8187 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 118 at @s in switch:game run particle cloud 8189 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 118 at @s run clone from minecraft:overworld 8188 ~ -2000 8190 ~ 2 to switch:game 8188 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 119 at @s in switch:game run particle cloud 8190 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 119 at @s run clone from minecraft:overworld 8190 ~ -2000 8191 ~ 2 to switch:game 8190 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 120 at @s in switch:game run particle cloud 8192 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 120 at @s run clone from minecraft:overworld 8191 ~ -2000 8193 ~ 2 to switch:game 8191 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 121 at @s in switch:game run particle cloud 8194 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 121 at @s run clone from minecraft:overworld 8193 ~ -2000 8195 ~ 2 to switch:game 8193 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 122 at @s in switch:game run particle cloud 8195 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 122 at @s run clone from minecraft:overworld 8195 ~ -2000 8196 ~ 2 to switch:game 8195 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 123 at @s in switch:game run particle cloud 8197 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 123 at @s run clone from minecraft:overworld 8196 ~ -2000 8198 ~ 2 to switch:game 8196 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 124 at @s in switch:game run particle cloud 8198 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 124 at @s run clone from minecraft:overworld 8198 ~ -2000 8199 ~ 2 to switch:game 8198 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 125 at @s in switch:game run particle cloud 8200 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 125 at @s run clone from minecraft:overworld 8199 ~ -2000 8201 ~ 2 to switch:game 8199 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 126 at @s in switch:game run particle cloud 8202 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 126 at @s run clone from minecraft:overworld 8201 ~ -2000 8203 ~ 2 to switch:game 8201 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 127 at @s in switch:game run particle cloud 8203 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 127 at @s run clone from minecraft:overworld 8203 ~ -2000 8204 ~ 2 to switch:game 8203 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 128 at @s in switch:game run particle cloud 8205 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 128 at @s run clone from minecraft:overworld 8204 ~ -2000 8206 ~ 2 to switch:game 8204 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 129 at @s in switch:game run particle cloud 8206 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 129 at @s run clone from minecraft:overworld 8206 ~ -2000 8207 ~ 2 to switch:game 8206 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 130 at @s in switch:game run particle cloud 8208 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 130 at @s run clone from minecraft:overworld 8207 ~ -2000 8209 ~ 2 to switch:game 8207 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 131 at @s in switch:game run particle cloud 8210 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 131 at @s run clone from minecraft:overworld 8209 ~ -2000 8211 ~ 2 to switch:game 8209 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 132 at @s in switch:game run particle cloud 8211 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 132 at @s run clone from minecraft:overworld 8211 ~ -2000 8212 ~ 2 to switch:game 8211 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 133 at @s in switch:game run particle cloud 8213 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 133 at @s run clone from minecraft:overworld 8212 ~ -2000 8214 ~ 2 to switch:game 8212 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 134 at @s in switch:game run particle cloud 8214 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 134 at @s run clone from minecraft:overworld 8214 ~ -2000 8215 ~ 2 to switch:game 8214 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 135 at @s in switch:game run particle cloud 8216 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 135 at @s run clone from minecraft:overworld 8215 ~ -2000 8217 ~ 2 to switch:game 8215 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 136 at @s in switch:game run particle cloud 8218 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 136 at @s run clone from minecraft:overworld 8217 ~ -2000 8219 ~ 2 to switch:game 8217 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 137 at @s in switch:game run particle cloud 8219 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 137 at @s run clone from minecraft:overworld 8219 ~ -2000 8220 ~ 2 to switch:game 8219 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 138 at @s in switch:game run particle cloud 8221 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 138 at @s run clone from minecraft:overworld 8220 ~ -2000 8222 ~ 2 to switch:game 8220 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 139 at @s in switch:game run particle cloud 8222 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 139 at @s run clone from minecraft:overworld 8222 ~ -2000 8223 ~ 2 to switch:game 8222 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 140 at @s in switch:game run particle cloud 8224 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 140 at @s run clone from minecraft:overworld 8223 ~ -2000 8225 ~ 2 to switch:game 8223 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 141 at @s in switch:game run particle cloud 8226 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 141 at @s run clone from minecraft:overworld 8225 ~ -2000 8227 ~ 2 to switch:game 8225 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 142 at @s in switch:game run particle cloud 8227 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 142 at @s run clone from minecraft:overworld 8227 ~ -2000 8228 ~ 2 to switch:game 8227 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 143 at @s in switch:game run particle cloud 8229 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 143 at @s run clone from minecraft:overworld 8228 ~ -2000 8230 ~ 2 to switch:game 8228 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 144 at @s in switch:game run particle cloud 8230 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 144 at @s run clone from minecraft:overworld 8230 ~ -2000 8231 ~ 2 to switch:game 8230 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 145 at @s in switch:game run particle cloud 8232 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 145 at @s run clone from minecraft:overworld 8231 ~ -2000 8233 ~ 2 to switch:game 8231 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 146 at @s in switch:game run particle cloud 8234 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 146 at @s run clone from minecraft:overworld 8233 ~ -2000 8235 ~ 2 to switch:game 8233 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 147 at @s in switch:game run particle cloud 8235 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 147 at @s run clone from minecraft:overworld 8235 ~ -2000 8236 ~ 2 to switch:game 8235 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 148 at @s in switch:game run particle cloud 8237 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 148 at @s run clone from minecraft:overworld 8236 ~ -2000 8238 ~ 2 to switch:game 8236 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 149 at @s in switch:game run particle cloud 8238 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 149 at @s run clone from minecraft:overworld 8238 ~ -2000 8239 ~ 2 to switch:game 8238 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 150 at @s in switch:game run particle cloud 8240 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 150 at @s run clone from minecraft:overworld 8239 ~ -2000 8241 ~ 2 to switch:game 8239 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 151 at @s in switch:game run particle cloud 8242 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 151 at @s run clone from minecraft:overworld 8241 ~ -2000 8243 ~ 2 to switch:game 8241 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 152 at @s in switch:game run particle cloud 8243 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 152 at @s run clone from minecraft:overworld 8243 ~ -2000 8244 ~ 2 to switch:game 8243 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 153 at @s in switch:game run particle cloud 8245 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 153 at @s run clone from minecraft:overworld 8244 ~ -2000 8246 ~ 2 to switch:game 8244 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 154 at @s in switch:game run particle cloud 8246 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 154 at @s run clone from minecraft:overworld 8246 ~ -2000 8247 ~ 2 to switch:game 8246 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 155 at @s in switch:game run particle cloud 8248 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 155 at @s run clone from minecraft:overworld 8247 ~ -2000 8249 ~ 2 to switch:game 8247 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 156 at @s in switch:game run particle cloud 8249 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 156 at @s run clone from minecraft:overworld 8249 ~ -2000 8250 ~ 2 to switch:game 8249 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 157 at @s in switch:game run particle cloud 8251 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 157 at @s run clone from minecraft:overworld 8250 ~ -2000 8252 ~ 2 to switch:game 8250 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 158 at @s in switch:game run particle cloud 8253 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 158 at @s run clone from minecraft:overworld 8252 ~ -2000 8254 ~ 2 to switch:game 8252 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 159 at @s in switch:game run particle cloud 8254 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 159 at @s run clone from minecraft:overworld 8254 ~ -2000 8255 ~ 2 to switch:game 8254 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 160 at @s in switch:game run particle cloud 8256 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 160 at @s run clone from minecraft:overworld 8255 ~ -2000 8257 ~ 2 to switch:game 8255 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 161 at @s in switch:game run particle cloud 8257 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 161 at @s run clone from minecraft:overworld 8257 ~ -2000 8258 ~ 2 to switch:game 8257 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 162 at @s in switch:game run particle cloud 8259 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 162 at @s run clone from minecraft:overworld 8258 ~ -2000 8260 ~ 2 to switch:game 8258 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 163 at @s in switch:game run particle cloud 8261 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 163 at @s run clone from minecraft:overworld 8260 ~ -2000 8262 ~ 2 to switch:game 8260 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 164 at @s in switch:game run particle cloud 8262 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 164 at @s run clone from minecraft:overworld 8262 ~ -2000 8263 ~ 2 to switch:game 8262 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 165 at @s in switch:game run particle cloud 8264 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 165 at @s run clone from minecraft:overworld 8263 ~ -2000 8265 ~ 2 to switch:game 8263 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 166 at @s in switch:game run particle cloud 8265 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 166 at @s run clone from minecraft:overworld 8265 ~ -2000 8266 ~ 2 to switch:game 8265 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 167 at @s in switch:game run particle cloud 8267 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 167 at @s run clone from minecraft:overworld 8266 ~ -2000 8268 ~ 2 to switch:game 8266 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 168 at @s in switch:game run particle cloud 8269 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 168 at @s run clone from minecraft:overworld 8268 ~ -2000 8270 ~ 2 to switch:game 8268 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 169 at @s in switch:game run particle cloud 8270 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 169 at @s run clone from minecraft:overworld 8270 ~ -2000 8271 ~ 2 to switch:game 8270 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 170 at @s in switch:game run particle cloud 8272 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 170 at @s run clone from minecraft:overworld 8271 ~ -2000 8273 ~ 2 to switch:game 8271 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 171 at @s in switch:game run particle cloud 8273 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 171 at @s run clone from minecraft:overworld 8273 ~ -2000 8274 ~ 2 to switch:game 8273 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 172 at @s in switch:game run particle cloud 8275 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 172 at @s run clone from minecraft:overworld 8274 ~ -2000 8276 ~ 2 to switch:game 8274 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 173 at @s in switch:game run particle cloud 8277 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 173 at @s run clone from minecraft:overworld 8276 ~ -2000 8278 ~ 2 to switch:game 8276 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 174 at @s in switch:game run particle cloud 8278 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 174 at @s run clone from minecraft:overworld 8278 ~ -2000 8279 ~ 2 to switch:game 8278 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 175 at @s in switch:game run particle cloud 8280 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 175 at @s run clone from minecraft:overworld 8279 ~ -2000 8281 ~ 2 to switch:game 8279 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 176 at @s in switch:game run particle cloud 8281 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 176 at @s run clone from minecraft:overworld 8281 ~ -2000 8282 ~ 2 to switch:game 8281 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 177 at @s in switch:game run particle cloud 8283 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 177 at @s run clone from minecraft:overworld 8282 ~ -2000 8284 ~ 2 to switch:game 8282 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 178 at @s in switch:game run particle cloud 8285 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 178 at @s run clone from minecraft:overworld 8284 ~ -2000 8286 ~ 2 to switch:game 8284 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 179 at @s in switch:game run particle cloud 8286 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 179 at @s run clone from minecraft:overworld 8286 ~ -2000 8287 ~ 2 to switch:game 8286 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 180 at @s in switch:game run particle cloud 8288 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 180 at @s run clone from minecraft:overworld 8287 ~ -2000 8289 ~ 2 to switch:game 8287 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 181 at @s in switch:game run particle cloud 8289 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 181 at @s run clone from minecraft:overworld 8289 ~ -2000 8290 ~ 2 to switch:game 8289 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 182 at @s in switch:game run particle cloud 8291 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 182 at @s run clone from minecraft:overworld 8290 ~ -2000 8292 ~ 2 to switch:game 8290 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 183 at @s in switch:game run particle cloud 8293 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 183 at @s run clone from minecraft:overworld 8292 ~ -2000 8294 ~ 2 to switch:game 8292 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 184 at @s in switch:game run particle cloud 8294 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 184 at @s run clone from minecraft:overworld 8294 ~ -2000 8295 ~ 2 to switch:game 8294 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 185 at @s in switch:game run particle cloud 8296 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 185 at @s run clone from minecraft:overworld 8295 ~ -2000 8297 ~ 2 to switch:game 8295 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 186 at @s in switch:game run particle cloud 8297 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 186 at @s run clone from minecraft:overworld 8297 ~ -2000 8298 ~ 2 to switch:game 8297 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 187 at @s in switch:game run particle cloud 8299 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 187 at @s run clone from minecraft:overworld 8298 ~ -2000 8300 ~ 2 to switch:game 8298 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 188 at @s in switch:game run particle cloud 8301 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 188 at @s run clone from minecraft:overworld 8300 ~ -2000 8302 ~ 2 to switch:game 8300 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 189 at @s in switch:game run particle cloud 8302 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 189 at @s run clone from minecraft:overworld 8302 ~ -2000 8303 ~ 2 to switch:game 8302 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 190 at @s in switch:game run particle cloud 8304 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 190 at @s run clone from minecraft:overworld 8303 ~ -2000 8305 ~ 2 to switch:game 8303 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 191 at @s in switch:game run particle cloud 8305 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 191 at @s run clone from minecraft:overworld 8305 ~ -2000 8306 ~ 2 to switch:game 8305 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 192 at @s in switch:game run particle cloud 8307 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 192 at @s run clone from minecraft:overworld 8306 ~ -2000 8308 ~ 2 to switch:game 8306 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 193 at @s in switch:game run particle cloud 8309 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 193 at @s run clone from minecraft:overworld 8308 ~ -2000 8310 ~ 2 to switch:game 8308 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 194 at @s in switch:game run particle cloud 8310 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 194 at @s run clone from minecraft:overworld 8310 ~ -2000 8311 ~ 2 to switch:game 8310 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 195 at @s in switch:game run particle cloud 8312 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 195 at @s run clone from minecraft:overworld 8311 ~ -2000 8313 ~ 2 to switch:game 8311 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 196 at @s in switch:game run particle cloud 8313 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 196 at @s run clone from minecraft:overworld 8313 ~ -2000 8314 ~ 2 to switch:game 8313 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 197 at @s in switch:game run particle cloud 8315 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 197 at @s run clone from minecraft:overworld 8314 ~ -2000 8316 ~ 2 to switch:game 8314 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 198 at @s in switch:game run particle cloud 8317 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 198 at @s run clone from minecraft:overworld 8316 ~ -2000 8318 ~ 2 to switch:game 8316 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 199 at @s in switch:game run particle cloud 8318 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 199 at @s run clone from minecraft:overworld 8318 ~ -2000 8319 ~ 2 to switch:game 8318 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 200 at @s in switch:game run particle cloud 8320 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 200 at @s run clone from minecraft:overworld 8319 ~ -2000 8321 ~ 2 to switch:game 8319 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 201 at @s in switch:game run particle cloud 8321 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 201 at @s run clone from minecraft:overworld 8321 ~ -2000 8322 ~ 2 to switch:game 8321 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 202 at @s in switch:game run particle cloud 8323 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 202 at @s run clone from minecraft:overworld 8322 ~ -2000 8324 ~ 2 to switch:game 8322 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 203 at @s in switch:game run particle cloud 8324 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 203 at @s run clone from minecraft:overworld 8324 ~ -2000 8325 ~ 2 to switch:game 8324 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 204 at @s in switch:game run particle cloud 8326 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 204 at @s run clone from minecraft:overworld 8325 ~ -2000 8327 ~ 2 to switch:game 8325 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 205 at @s in switch:game run particle cloud 8328 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 205 at @s run clone from minecraft:overworld 8327 ~ -2000 8329 ~ 2 to switch:game 8327 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 206 at @s in switch:game run particle cloud 8329 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 206 at @s run clone from minecraft:overworld 8329 ~ -2000 8330 ~ 2 to switch:game 8329 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 207 at @s in switch:game run particle cloud 8331 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 207 at @s run clone from minecraft:overworld 8330 ~ -2000 8332 ~ 2 to switch:game 8330 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 208 at @s in switch:game run particle cloud 8332 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 208 at @s run clone from minecraft:overworld 8332 ~ -2000 8333 ~ 2 to switch:game 8332 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 209 at @s in switch:game run particle cloud 8334 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 209 at @s run clone from minecraft:overworld 8333 ~ -2000 8335 ~ 2 to switch:game 8333 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 210 at @s in switch:game run particle cloud 8336 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 210 at @s run clone from minecraft:overworld 8335 ~ -2000 8337 ~ 2 to switch:game 8335 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 211 at @s in switch:game run particle cloud 8337 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 211 at @s run clone from minecraft:overworld 8337 ~ -2000 8338 ~ 2 to switch:game 8337 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 212 at @s in switch:game run particle cloud 8339 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 212 at @s run clone from minecraft:overworld 8338 ~ -2000 8340 ~ 2 to switch:game 8338 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 213 at @s in switch:game run particle cloud 8340 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 213 at @s run clone from minecraft:overworld 8340 ~ -2000 8341 ~ 2 to switch:game 8340 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 214 at @s in switch:game run particle cloud 8342 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 214 at @s run clone from minecraft:overworld 8341 ~ -2000 8343 ~ 2 to switch:game 8341 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 215 at @s in switch:game run particle cloud 8344 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 215 at @s run clone from minecraft:overworld 8343 ~ -2000 8345 ~ 2 to switch:game 8343 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 216 at @s in switch:game run particle cloud 8345 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 216 at @s run clone from minecraft:overworld 8345 ~ -2000 8346 ~ 2 to switch:game 8345 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 217 at @s in switch:game run particle cloud 8347 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 217 at @s run clone from minecraft:overworld 8346 ~ -2000 8348 ~ 2 to switch:game 8346 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 218 at @s in switch:game run particle cloud 8348 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 218 at @s run clone from minecraft:overworld 8348 ~ -2000 8349 ~ 2 to switch:game 8348 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 219 at @s in switch:game run particle cloud 8350 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 219 at @s run clone from minecraft:overworld 8349 ~ -2000 8351 ~ 2 to switch:game 8349 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 220 at @s in switch:game run particle cloud 8352 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 220 at @s run clone from minecraft:overworld 8351 ~ -2000 8353 ~ 2 to switch:game 8351 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 221 at @s in switch:game run particle cloud 8353 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 221 at @s run clone from minecraft:overworld 8353 ~ -2000 8354 ~ 2 to switch:game 8353 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 222 at @s in switch:game run particle cloud 8355 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 222 at @s run clone from minecraft:overworld 8354 ~ -2000 8356 ~ 2 to switch:game 8354 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 223 at @s in switch:game run particle cloud 8356 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 223 at @s run clone from minecraft:overworld 8356 ~ -2000 8357 ~ 2 to switch:game 8356 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 224 at @s in switch:game run particle cloud 8358 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 224 at @s run clone from minecraft:overworld 8357 ~ -2000 8359 ~ 2 to switch:game 8357 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 225 at @s in switch:game run particle cloud 8360 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 225 at @s run clone from minecraft:overworld 8359 ~ -2000 8361 ~ 2 to switch:game 8359 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 226 at @s in switch:game run particle cloud 8361 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 226 at @s run clone from minecraft:overworld 8361 ~ -2000 8362 ~ 2 to switch:game 8361 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 227 at @s in switch:game run particle cloud 8363 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 227 at @s run clone from minecraft:overworld 8362 ~ -2000 8364 ~ 2 to switch:game 8362 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 228 at @s in switch:game run particle cloud 8364 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 228 at @s run clone from minecraft:overworld 8364 ~ -2000 8365 ~ 2 to switch:game 8364 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 229 at @s in switch:game run particle cloud 8366 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 229 at @s run clone from minecraft:overworld 8365 ~ -2000 8367 ~ 2 to switch:game 8365 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 230 at @s in switch:game run particle cloud 8368 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 230 at @s run clone from minecraft:overworld 8367 ~ -2000 8369 ~ 2 to switch:game 8367 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 231 at @s in switch:game run particle cloud 8369 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 231 at @s run clone from minecraft:overworld 8369 ~ -2000 8370 ~ 2 to switch:game 8369 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 232 at @s in switch:game run particle cloud 8371 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 232 at @s run clone from minecraft:overworld 8370 ~ -2000 8372 ~ 2 to switch:game 8370 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 233 at @s in switch:game run particle cloud 8372 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 233 at @s run clone from minecraft:overworld 8372 ~ -2000 8373 ~ 2 to switch:game 8372 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 234 at @s in switch:game run particle cloud 8374 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 234 at @s run clone from minecraft:overworld 8373 ~ -2000 8375 ~ 2 to switch:game 8373 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 235 at @s in switch:game run particle cloud 8376 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 235 at @s run clone from minecraft:overworld 8375 ~ -2000 8377 ~ 2 to switch:game 8375 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 236 at @s in switch:game run particle cloud 8377 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 236 at @s run clone from minecraft:overworld 8377 ~ -2000 8378 ~ 2 to switch:game 8377 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 237 at @s in switch:game run particle cloud 8379 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 237 at @s run clone from minecraft:overworld 8378 ~ -2000 8380 ~ 2 to switch:game 8378 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 238 at @s in switch:game run particle cloud 8380 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 238 at @s run clone from minecraft:overworld 8380 ~ -2000 8381 ~ 2 to switch:game 8380 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 239 at @s in switch:game run particle cloud 8382 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 239 at @s run clone from minecraft:overworld 8381 ~ -2000 8383 ~ 2 to switch:game 8381 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 240 at @s in switch:game run particle cloud 8384 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 240 at @s run clone from minecraft:overworld 8383 ~ -2000 8385 ~ 2 to switch:game 8383 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 241 at @s in switch:game run particle cloud 8385 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 241 at @s run clone from minecraft:overworld 8385 ~ -2000 8386 ~ 2 to switch:game 8385 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 242 at @s in switch:game run particle cloud 8387 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 242 at @s run clone from minecraft:overworld 8386 ~ -2000 8388 ~ 2 to switch:game 8386 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 243 at @s in switch:game run particle cloud 8388 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 243 at @s run clone from minecraft:overworld 8388 ~ -2000 8389 ~ 2 to switch:game 8388 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 244 at @s in switch:game run particle cloud 8390 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 244 at @s run clone from minecraft:overworld 8389 ~ -2000 8391 ~ 2 to switch:game 8389 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 245 at @s in switch:game run particle cloud 8392 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 245 at @s run clone from minecraft:overworld 8391 ~ -2000 8393 ~ 2 to switch:game 8391 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 246 at @s in switch:game run particle cloud 8393 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 246 at @s run clone from minecraft:overworld 8393 ~ -2000 8394 ~ 2 to switch:game 8393 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 247 at @s in switch:game run particle cloud 8395 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 247 at @s run clone from minecraft:overworld 8394 ~ -2000 8396 ~ 2 to switch:game 8394 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 248 at @s in switch:game run particle cloud 8396 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 248 at @s run clone from minecraft:overworld 8396 ~ -2000 8397 ~ 2 to switch:game 8396 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 249 at @s in switch:game run particle cloud 8398 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 249 at @s run clone from minecraft:overworld 8397 ~ -2000 8399 ~ 2 to switch:game 8397 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 250 at @s in switch:game run particle cloud 8399 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 250 at @s run clone from minecraft:overworld 8399 ~ -2000 8400 ~ 2 to switch:game 8399 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 251 at @s in switch:game run particle cloud 8401 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 251 at @s run clone from minecraft:overworld 8400 ~ -2000 8402 ~ 2 to switch:game 8400 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 252 at @s in switch:game run particle cloud 8403 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 252 at @s run clone from minecraft:overworld 8402 ~ -2000 8404 ~ 2 to switch:game 8402 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 253 at @s in switch:game run particle cloud 8404 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 253 at @s run clone from minecraft:overworld 8404 ~ -2000 8405 ~ 2 to switch:game 8404 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 254 at @s in switch:game run particle cloud 8406 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 254 at @s run clone from minecraft:overworld 8405 ~ -2000 8407 ~ 2 to switch:game 8405 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 255 at @s in switch:game run particle cloud 8407 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 255 at @s run clone from minecraft:overworld 8407 ~ -2000 8408 ~ 2 to switch:game 8407 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 256 at @s in switch:game run particle cloud 8409 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 256 at @s run clone from minecraft:overworld 8408 ~ -2000 8410 ~ 2 to switch:game 8408 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 257 at @s in switch:game run particle cloud 8411 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 257 at @s run clone from minecraft:overworld 8410 ~ -2000 8412 ~ 2 to switch:game 8410 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 258 at @s in switch:game run particle cloud 8412 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 258 at @s run clone from minecraft:overworld 8412 ~ -2000 8413 ~ 2 to switch:game 8412 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 259 at @s in switch:game run particle cloud 8414 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 259 at @s run clone from minecraft:overworld 8413 ~ -2000 8415 ~ 2 to switch:game 8413 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 260 at @s in switch:game run particle cloud 8415 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 260 at @s run clone from minecraft:overworld 8415 ~ -2000 8416 ~ 2 to switch:game 8415 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 261 at @s in switch:game run particle cloud 8417 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 261 at @s run clone from minecraft:overworld 8416 ~ -2000 8418 ~ 2 to switch:game 8416 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 262 at @s in switch:game run particle cloud 8419 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 262 at @s run clone from minecraft:overworld 8418 ~ -2000 8420 ~ 2 to switch:game 8418 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 263 at @s in switch:game run particle cloud 8420 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 263 at @s run clone from minecraft:overworld 8420 ~ -2000 8421 ~ 2 to switch:game 8420 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 264 at @s in switch:game run particle cloud 8422 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 264 at @s run clone from minecraft:overworld 8421 ~ -2000 8423 ~ 2 to switch:game 8421 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 265 at @s in switch:game run particle cloud 8423 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 265 at @s run clone from minecraft:overworld 8423 ~ -2000 8424 ~ 2 to switch:game 8423 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 266 at @s in switch:game run particle cloud 8425 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 266 at @s run clone from minecraft:overworld 8424 ~ -2000 8426 ~ 2 to switch:game 8424 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 267 at @s in switch:game run particle cloud 8427 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 267 at @s run clone from minecraft:overworld 8426 ~ -2000 8428 ~ 2 to switch:game 8426 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 268 at @s in switch:game run particle cloud 8428 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 268 at @s run clone from minecraft:overworld 8428 ~ -2000 8429 ~ 2 to switch:game 8428 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 269 at @s in switch:game run particle cloud 8430 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 269 at @s run clone from minecraft:overworld 8429 ~ -2000 8431 ~ 2 to switch:game 8429 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 270 at @s in switch:game run particle cloud 8431 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 270 at @s run clone from minecraft:overworld 8431 ~ -2000 8432 ~ 2 to switch:game 8431 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 271 at @s in switch:game run particle cloud 8433 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 271 at @s run clone from minecraft:overworld 8432 ~ -2000 8434 ~ 2 to switch:game 8432 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 272 at @s in switch:game run particle cloud 8435 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 272 at @s run clone from minecraft:overworld 8434 ~ -2000 8436 ~ 2 to switch:game 8434 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 273 at @s in switch:game run particle cloud 8436 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 273 at @s run clone from minecraft:overworld 8436 ~ -2000 8437 ~ 2 to switch:game 8436 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 274 at @s in switch:game run particle cloud 8438 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 274 at @s run clone from minecraft:overworld 8437 ~ -2000 8439 ~ 2 to switch:game 8437 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 275 at @s in switch:game run particle cloud 8439 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 275 at @s run clone from minecraft:overworld 8439 ~ -2000 8440 ~ 2 to switch:game 8439 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 276 at @s in switch:game run particle cloud 8441 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 276 at @s run clone from minecraft:overworld 8440 ~ -2000 8442 ~ 2 to switch:game 8440 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 277 at @s in switch:game run particle cloud 8443 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 277 at @s run clone from minecraft:overworld 8442 ~ -2000 8444 ~ 2 to switch:game 8442 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 278 at @s in switch:game run particle cloud 8444 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 278 at @s run clone from minecraft:overworld 8444 ~ -2000 8445 ~ 2 to switch:game 8444 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 279 at @s in switch:game run particle cloud 8446 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 279 at @s run clone from minecraft:overworld 8445 ~ -2000 8447 ~ 2 to switch:game 8445 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 280 at @s in switch:game run particle cloud 8447 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 280 at @s run clone from minecraft:overworld 8447 ~ -2000 8448 ~ 2 to switch:game 8447 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 281 at @s in switch:game run particle cloud 8449 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 281 at @s run clone from minecraft:overworld 8448 ~ -2000 8450 ~ 2 to switch:game 8448 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 282 at @s in switch:game run particle cloud 8451 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 282 at @s run clone from minecraft:overworld 8450 ~ -2000 8452 ~ 2 to switch:game 8450 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 283 at @s in switch:game run particle cloud 8452 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 283 at @s run clone from minecraft:overworld 8452 ~ -2000 8453 ~ 2 to switch:game 8452 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 284 at @s in switch:game run particle cloud 8454 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 284 at @s run clone from minecraft:overworld 8453 ~ -2000 8455 ~ 2 to switch:game 8453 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 285 at @s in switch:game run particle cloud 8455 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 285 at @s run clone from minecraft:overworld 8455 ~ -2000 8456 ~ 2 to switch:game 8455 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 286 at @s in switch:game run particle cloud 8457 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 286 at @s run clone from minecraft:overworld 8456 ~ -2000 8458 ~ 2 to switch:game 8456 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 287 at @s in switch:game run particle cloud 8459 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 287 at @s run clone from minecraft:overworld 8458 ~ -2000 8460 ~ 2 to switch:game 8458 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 288 at @s in switch:game run particle cloud 8460 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 288 at @s run clone from minecraft:overworld 8460 ~ -2000 8461 ~ 2 to switch:game 8460 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 289 at @s in switch:game run particle cloud 8462 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 289 at @s run clone from minecraft:overworld 8461 ~ -2000 8463 ~ 2 to switch:game 8461 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 290 at @s in switch:game run particle cloud 8463 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 290 at @s run clone from minecraft:overworld 8463 ~ -2000 8464 ~ 2 to switch:game 8463 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 291 at @s in switch:game run particle cloud 8465 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 291 at @s run clone from minecraft:overworld 8464 ~ -2000 8466 ~ 2 to switch:game 8464 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 292 at @s in switch:game run particle cloud 8466 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 292 at @s run clone from minecraft:overworld 8466 ~ -2000 8467 ~ 2 to switch:game 8466 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 293 at @s in switch:game run particle cloud 8468 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 293 at @s run clone from minecraft:overworld 8467 ~ -2000 8469 ~ 2 to switch:game 8467 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 294 at @s in switch:game run particle cloud 8470 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 294 at @s run clone from minecraft:overworld 8469 ~ -2000 8471 ~ 2 to switch:game 8469 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 295 at @s in switch:game run particle cloud 8471 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 295 at @s run clone from minecraft:overworld 8471 ~ -2000 8472 ~ 2 to switch:game 8471 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 296 at @s in switch:game run particle cloud 8473 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 296 at @s run clone from minecraft:overworld 8472 ~ -2000 8474 ~ 2 to switch:game 8472 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 297 at @s in switch:game run particle cloud 8474 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 297 at @s run clone from minecraft:overworld 8474 ~ -2000 8475 ~ 2 to switch:game 8474 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 298 at @s in switch:game run particle cloud 8476 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 298 at @s run clone from minecraft:overworld 8475 ~ -2000 8477 ~ 2 to switch:game 8475 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 299 at @s in switch:game run particle cloud 8478 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 299 at @s run clone from minecraft:overworld 8477 ~ -2000 8479 ~ 2 to switch:game 8477 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 300 at @s in switch:game run particle cloud 8479 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 300 at @s run clone from minecraft:overworld 8479 ~ -2000 8480 ~ 2 to switch:game 8479 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 301 at @s in switch:game run particle cloud 8481 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 301 at @s run clone from minecraft:overworld 8480 ~ -2000 8482 ~ 2 to switch:game 8480 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 302 at @s in switch:game run particle cloud 8482 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 302 at @s run clone from minecraft:overworld 8482 ~ -2000 8483 ~ 2 to switch:game 8482 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 303 at @s in switch:game run particle cloud 8484 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 303 at @s run clone from minecraft:overworld 8483 ~ -2000 8485 ~ 2 to switch:game 8483 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 304 at @s in switch:game run particle cloud 8486 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 304 at @s run clone from minecraft:overworld 8485 ~ -2000 8487 ~ 2 to switch:game 8485 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 305 at @s in switch:game run particle cloud 8487 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 305 at @s run clone from minecraft:overworld 8487 ~ -2000 8488 ~ 2 to switch:game 8487 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 306 at @s in switch:game run particle cloud 8489 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 306 at @s run clone from minecraft:overworld 8488 ~ -2000 8490 ~ 2 to switch:game 8488 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 307 at @s in switch:game run particle cloud 8490 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 307 at @s run clone from minecraft:overworld 8490 ~ -2000 8491 ~ 2 to switch:game 8490 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 308 at @s in switch:game run particle cloud 8492 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 308 at @s run clone from minecraft:overworld 8491 ~ -2000 8493 ~ 2 to switch:game 8491 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 309 at @s in switch:game run particle cloud 8494 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 309 at @s run clone from minecraft:overworld 8493 ~ -2000 8495 ~ 2 to switch:game 8493 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 310 at @s in switch:game run particle cloud 8495 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 310 at @s run clone from minecraft:overworld 8495 ~ -2000 8496 ~ 2 to switch:game 8495 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 311 at @s in switch:game run particle cloud 8497 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 311 at @s run clone from minecraft:overworld 8496 ~ -2000 8498 ~ 2 to switch:game 8496 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 312 at @s in switch:game run particle cloud 8498 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 312 at @s run clone from minecraft:overworld 8498 ~ -2000 8499 ~ 2 to switch:game 8498 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 313 at @s in switch:game run particle cloud 8500 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 313 at @s run clone from minecraft:overworld 8499 ~ -2000 8501 ~ 2 to switch:game 8499 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 314 at @s in switch:game run particle cloud 8502 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 314 at @s run clone from minecraft:overworld 8501 ~ -2000 8503 ~ 2 to switch:game 8501 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 315 at @s in switch:game run particle cloud 8503 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 315 at @s run clone from minecraft:overworld 8503 ~ -2000 8504 ~ 2 to switch:game 8503 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 316 at @s in switch:game run particle cloud 8505 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 316 at @s run clone from minecraft:overworld 8504 ~ -2000 8506 ~ 2 to switch:game 8504 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 317 at @s in switch:game run particle cloud 8506 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 317 at @s run clone from minecraft:overworld 8506 ~ -2000 8507 ~ 2 to switch:game 8506 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 318 at @s in switch:game run particle cloud 8508 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 318 at @s run clone from minecraft:overworld 8507 ~ -2000 8509 ~ 2 to switch:game 8507 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 319 at @s in switch:game run particle cloud 8510 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 319 at @s run clone from minecraft:overworld 8509 ~ -2000 8511 ~ 2 to switch:game 8509 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 320 at @s in switch:game run particle cloud 8511 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 320 at @s run clone from minecraft:overworld 8511 ~ -2000 8512 ~ 2 to switch:game 8511 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 321 at @s in switch:game run particle cloud 8513 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 321 at @s run clone from minecraft:overworld 8512 ~ -2000 8514 ~ 2 to switch:game 8512 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 322 at @s in switch:game run particle cloud 8514 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 322 at @s run clone from minecraft:overworld 8514 ~ -2000 8515 ~ 2 to switch:game 8514 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 323 at @s in switch:game run particle cloud 8516 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 323 at @s run clone from minecraft:overworld 8515 ~ -2000 8517 ~ 2 to switch:game 8515 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 324 at @s in switch:game run particle cloud 8518 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 324 at @s run clone from minecraft:overworld 8517 ~ -2000 8519 ~ 2 to switch:game 8517 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 325 at @s in switch:game run particle cloud 8519 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 325 at @s run clone from minecraft:overworld 8519 ~ -2000 8520 ~ 2 to switch:game 8519 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 326 at @s in switch:game run particle cloud 8521 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 326 at @s run clone from minecraft:overworld 8520 ~ -2000 8522 ~ 2 to switch:game 8520 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 327 at @s in switch:game run particle cloud 8522 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 327 at @s run clone from minecraft:overworld 8522 ~ -2000 8523 ~ 2 to switch:game 8522 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 328 at @s in switch:game run particle cloud 8524 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 328 at @s run clone from minecraft:overworld 8523 ~ -2000 8525 ~ 2 to switch:game 8523 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 329 at @s in switch:game run particle cloud 8526 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 329 at @s run clone from minecraft:overworld 8525 ~ -2000 8527 ~ 2 to switch:game 8525 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 330 at @s in switch:game run particle cloud 8527 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 330 at @s run clone from minecraft:overworld 8527 ~ -2000 8528 ~ 2 to switch:game 8527 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 331 at @s in switch:game run particle cloud 8529 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 331 at @s run clone from minecraft:overworld 8528 ~ -2000 8530 ~ 2 to switch:game 8528 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 332 at @s in switch:game run particle cloud 8530 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 332 at @s run clone from minecraft:overworld 8530 ~ -2000 8531 ~ 2 to switch:game 8530 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 333 at @s in switch:game run particle cloud 8532 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 333 at @s run clone from minecraft:overworld 8531 ~ -2000 8533 ~ 2 to switch:game 8531 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 334 at @s in switch:game run particle cloud 8534 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 334 at @s run clone from minecraft:overworld 8533 ~ -2000 8535 ~ 2 to switch:game 8533 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 335 at @s in switch:game run particle cloud 8535 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 335 at @s run clone from minecraft:overworld 8535 ~ -2000 8536 ~ 2 to switch:game 8535 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 336 at @s in switch:game run particle cloud 8537 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 336 at @s run clone from minecraft:overworld 8536 ~ -2000 8538 ~ 2 to switch:game 8536 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 337 at @s in switch:game run particle cloud 8538 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 337 at @s run clone from minecraft:overworld 8538 ~ -2000 8539 ~ 2 to switch:game 8538 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 338 at @s in switch:game run particle cloud 8540 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 338 at @s run clone from minecraft:overworld 8539 ~ -2000 8541 ~ 2 to switch:game 8539 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 339 at @s in switch:game run particle cloud 8541 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 339 at @s run clone from minecraft:overworld 8541 ~ -2000 8542 ~ 2 to switch:game 8541 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 340 at @s in switch:game run particle cloud 8543 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 340 at @s run clone from minecraft:overworld 8542 ~ -2000 8544 ~ 2 to switch:game 8542 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 341 at @s in switch:game run particle cloud 8545 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 341 at @s run clone from minecraft:overworld 8544 ~ -2000 8546 ~ 2 to switch:game 8544 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 342 at @s in switch:game run particle cloud 8546 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 342 at @s run clone from minecraft:overworld 8546 ~ -2000 8547 ~ 2 to switch:game 8546 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 343 at @s in switch:game run particle cloud 8548 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 343 at @s run clone from minecraft:overworld 8547 ~ -2000 8549 ~ 2 to switch:game 8547 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 344 at @s in switch:game run particle cloud 8549 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 344 at @s run clone from minecraft:overworld 8549 ~ -2000 8550 ~ 2 to switch:game 8549 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 345 at @s in switch:game run particle cloud 8551 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 345 at @s run clone from minecraft:overworld 8550 ~ -2000 8552 ~ 2 to switch:game 8550 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 346 at @s in switch:game run particle cloud 8553 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 346 at @s run clone from minecraft:overworld 8552 ~ -2000 8554 ~ 2 to switch:game 8552 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 347 at @s in switch:game run particle cloud 8554 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 347 at @s run clone from minecraft:overworld 8554 ~ -2000 8555 ~ 2 to switch:game 8554 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 348 at @s in switch:game run particle cloud 8556 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 348 at @s run clone from minecraft:overworld 8555 ~ -2000 8557 ~ 2 to switch:game 8555 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 349 at @s in switch:game run particle cloud 8557 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 349 at @s run clone from minecraft:overworld 8557 ~ -2000 8558 ~ 2 to switch:game 8557 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 350 at @s in switch:game run particle cloud 8559 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 350 at @s run clone from minecraft:overworld 8558 ~ -2000 8560 ~ 2 to switch:game 8558 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 351 at @s in switch:game run particle cloud 8561 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 351 at @s run clone from minecraft:overworld 8560 ~ -2000 8562 ~ 2 to switch:game 8560 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 352 at @s in switch:game run particle cloud 8562 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 352 at @s run clone from minecraft:overworld 8562 ~ -2000 8563 ~ 2 to switch:game 8562 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 353 at @s in switch:game run particle cloud 8564 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 353 at @s run clone from minecraft:overworld 8563 ~ -2000 8565 ~ 2 to switch:game 8563 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 354 at @s in switch:game run particle cloud 8565 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 354 at @s run clone from minecraft:overworld 8565 ~ -2000 8566 ~ 2 to switch:game 8565 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 355 at @s in switch:game run particle cloud 8567 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 355 at @s run clone from minecraft:overworld 8566 ~ -2000 8568 ~ 2 to switch:game 8566 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 356 at @s in switch:game run particle cloud 8569 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 356 at @s run clone from minecraft:overworld 8568 ~ -2000 8570 ~ 2 to switch:game 8568 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 357 at @s in switch:game run particle cloud 8570 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 357 at @s run clone from minecraft:overworld 8570 ~ -2000 8571 ~ 2 to switch:game 8570 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 358 at @s in switch:game run particle cloud 8572 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 358 at @s run clone from minecraft:overworld 8571 ~ -2000 8573 ~ 2 to switch:game 8571 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 359 at @s in switch:game run particle cloud 8573 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 359 at @s run clone from minecraft:overworld 8573 ~ -2000 8574 ~ 2 to switch:game 8573 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 360 at @s in switch:game run particle cloud 8575 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 360 at @s run clone from minecraft:overworld 8574 ~ -2000 8576 ~ 2 to switch:game 8574 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 361 at @s in switch:game run particle cloud 8577 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 361 at @s run clone from minecraft:overworld 8576 ~ -2000 8578 ~ 2 to switch:game 8576 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 362 at @s in switch:game run particle cloud 8578 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 362 at @s run clone from minecraft:overworld 8578 ~ -2000 8579 ~ 2 to switch:game 8578 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 363 at @s in switch:game run particle cloud 8580 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 363 at @s run clone from minecraft:overworld 8579 ~ -2000 8581 ~ 2 to switch:game 8579 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 364 at @s in switch:game run particle cloud 8581 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 364 at @s run clone from minecraft:overworld 8581 ~ -2000 8582 ~ 2 to switch:game 8581 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 365 at @s in switch:game run particle cloud 8583 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 365 at @s run clone from minecraft:overworld 8582 ~ -2000 8584 ~ 2 to switch:game 8582 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 366 at @s in switch:game run particle cloud 8585 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 366 at @s run clone from minecraft:overworld 8584 ~ -2000 8586 ~ 2 to switch:game 8584 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 367 at @s in switch:game run particle cloud 8586 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 367 at @s run clone from minecraft:overworld 8586 ~ -2000 8587 ~ 2 to switch:game 8586 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 368 at @s in switch:game run particle cloud 8588 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 368 at @s run clone from minecraft:overworld 8587 ~ -2000 8589 ~ 2 to switch:game 8587 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 369 at @s in switch:game run particle cloud 8589 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 369 at @s run clone from minecraft:overworld 8589 ~ -2000 8590 ~ 2 to switch:game 8589 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 370 at @s in switch:game run particle cloud 8591 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 370 at @s run clone from minecraft:overworld 8590 ~ -2000 8592 ~ 2 to switch:game 8590 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 371 at @s in switch:game run particle cloud 8593 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 371 at @s run clone from minecraft:overworld 8592 ~ -2000 8594 ~ 2 to switch:game 8592 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 372 at @s in switch:game run particle cloud 8594 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 372 at @s run clone from minecraft:overworld 8594 ~ -2000 8595 ~ 2 to switch:game 8594 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 373 at @s in switch:game run particle cloud 8596 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 373 at @s run clone from minecraft:overworld 8595 ~ -2000 8597 ~ 2 to switch:game 8595 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 374 at @s in switch:game run particle cloud 8597 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 374 at @s run clone from minecraft:overworld 8597 ~ -2000 8598 ~ 2 to switch:game 8597 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 375 at @s in switch:game run particle cloud 8599 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 375 at @s run clone from minecraft:overworld 8598 ~ -2000 8600 ~ 2 to switch:game 8598 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 376 at @s in switch:game run particle cloud 8601 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 376 at @s run clone from minecraft:overworld 8600 ~ -2000 8602 ~ 2 to switch:game 8600 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 377 at @s in switch:game run particle cloud 8602 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 377 at @s run clone from minecraft:overworld 8602 ~ -2000 8603 ~ 2 to switch:game 8602 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 378 at @s in switch:game run particle cloud 8604 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 378 at @s run clone from minecraft:overworld 8603 ~ -2000 8605 ~ 2 to switch:game 8603 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 379 at @s in switch:game run particle cloud 8605 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 379 at @s run clone from minecraft:overworld 8605 ~ -2000 8606 ~ 2 to switch:game 8605 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 380 at @s in switch:game run particle cloud 8607 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 380 at @s run clone from minecraft:overworld 8606 ~ -2000 8608 ~ 2 to switch:game 8606 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 381 at @s in switch:game run particle cloud 8608 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 381 at @s run clone from minecraft:overworld 8608 ~ -2000 8609 ~ 2 to switch:game 8608 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 382 at @s in switch:game run particle cloud 8610 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 382 at @s run clone from minecraft:overworld 8609 ~ -2000 8611 ~ 2 to switch:game 8609 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 383 at @s in switch:game run particle cloud 8612 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 383 at @s run clone from minecraft:overworld 8611 ~ -2000 8613 ~ 2 to switch:game 8611 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 384 at @s in switch:game run particle cloud 8613 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 384 at @s run clone from minecraft:overworld 8613 ~ -2000 8614 ~ 2 to switch:game 8613 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 385 at @s in switch:game run particle cloud 8615 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 385 at @s run clone from minecraft:overworld 8614 ~ -2000 8616 ~ 2 to switch:game 8614 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 386 at @s in switch:game run particle cloud 8616 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 386 at @s run clone from minecraft:overworld 8616 ~ -2000 8617 ~ 2 to switch:game 8616 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 387 at @s in switch:game run particle cloud 8618 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 387 at @s run clone from minecraft:overworld 8617 ~ -2000 8619 ~ 2 to switch:game 8617 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 388 at @s in switch:game run particle cloud 8620 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 388 at @s run clone from minecraft:overworld 8619 ~ -2000 8621 ~ 2 to switch:game 8619 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 389 at @s in switch:game run particle cloud 8621 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 389 at @s run clone from minecraft:overworld 8621 ~ -2000 8622 ~ 2 to switch:game 8621 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 390 at @s in switch:game run particle cloud 8623 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 390 at @s run clone from minecraft:overworld 8622 ~ -2000 8624 ~ 2 to switch:game 8622 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 391 at @s in switch:game run particle cloud 8624 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 391 at @s run clone from minecraft:overworld 8624 ~ -2000 8625 ~ 2 to switch:game 8624 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 392 at @s in switch:game run particle cloud 8626 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 392 at @s run clone from minecraft:overworld 8625 ~ -2000 8627 ~ 2 to switch:game 8625 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 393 at @s in switch:game run particle cloud 8628 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 393 at @s run clone from minecraft:overworld 8627 ~ -2000 8629 ~ 2 to switch:game 8627 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 394 at @s in switch:game run particle cloud 8629 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 394 at @s run clone from minecraft:overworld 8629 ~ -2000 8630 ~ 2 to switch:game 8629 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 395 at @s in switch:game run particle cloud 8631 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 395 at @s run clone from minecraft:overworld 8630 ~ -2000 8632 ~ 2 to switch:game 8630 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 396 at @s in switch:game run particle cloud 8632 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 396 at @s run clone from minecraft:overworld 8632 ~ -2000 8633 ~ 2 to switch:game 8632 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 397 at @s in switch:game run particle cloud 8634 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 397 at @s run clone from minecraft:overworld 8633 ~ -2000 8635 ~ 2 to switch:game 8633 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 398 at @s in switch:game run particle cloud 8636 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 398 at @s run clone from minecraft:overworld 8635 ~ -2000 8637 ~ 2 to switch:game 8635 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 399 at @s in switch:game run particle cloud 8637 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 399 at @s run clone from minecraft:overworld 8637 ~ -2000 8638 ~ 2 to switch:game 8637 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 400 at @s in switch:game run particle cloud 8639 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 400 at @s run clone from minecraft:overworld 8638 ~ -2000 8640 ~ 2 to switch:game 8638 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 401 at @s in switch:game run particle cloud 8640 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 401 at @s run clone from minecraft:overworld 8640 ~ -2000 8641 ~ 2 to switch:game 8640 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 402 at @s in switch:game run particle cloud 8642 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 402 at @s run clone from minecraft:overworld 8641 ~ -2000 8643 ~ 2 to switch:game 8641 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 403 at @s in switch:game run particle cloud 8644 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 403 at @s run clone from minecraft:overworld 8643 ~ -2000 8645 ~ 2 to switch:game 8643 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 404 at @s in switch:game run particle cloud 8645 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 404 at @s run clone from minecraft:overworld 8645 ~ -2000 8646 ~ 2 to switch:game 8645 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 405 at @s in switch:game run particle cloud 8647 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 405 at @s run clone from minecraft:overworld 8646 ~ -2000 8648 ~ 2 to switch:game 8646 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 406 at @s in switch:game run particle cloud 8648 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 406 at @s run clone from minecraft:overworld 8648 ~ -2000 8649 ~ 2 to switch:game 8648 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 407 at @s in switch:game run particle cloud 8650 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 407 at @s run clone from minecraft:overworld 8649 ~ -2000 8651 ~ 2 to switch:game 8649 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 408 at @s in switch:game run particle cloud 8652 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 408 at @s run clone from minecraft:overworld 8651 ~ -2000 8653 ~ 2 to switch:game 8651 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 409 at @s in switch:game run particle cloud 8653 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 409 at @s run clone from minecraft:overworld 8653 ~ -2000 8654 ~ 2 to switch:game 8653 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 410 at @s in switch:game run particle cloud 8655 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 410 at @s run clone from minecraft:overworld 8654 ~ -2000 8656 ~ 2 to switch:game 8654 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 411 at @s in switch:game run particle cloud 8656 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 411 at @s run clone from minecraft:overworld 8656 ~ -2000 8657 ~ 2 to switch:game 8656 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 412 at @s in switch:game run particle cloud 8658 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 412 at @s run clone from minecraft:overworld 8657 ~ -2000 8659 ~ 2 to switch:game 8657 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 413 at @s in switch:game run particle cloud 8660 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 413 at @s run clone from minecraft:overworld 8659 ~ -2000 8661 ~ 2 to switch:game 8659 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 414 at @s in switch:game run particle cloud 8661 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 414 at @s run clone from minecraft:overworld 8661 ~ -2000 8662 ~ 2 to switch:game 8661 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 415 at @s in switch:game run particle cloud 8663 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 415 at @s run clone from minecraft:overworld 8662 ~ -2000 8664 ~ 2 to switch:game 8662 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 416 at @s in switch:game run particle cloud 8664 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 416 at @s run clone from minecraft:overworld 8664 ~ -2000 8665 ~ 2 to switch:game 8664 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 417 at @s in switch:game run particle cloud 8666 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 417 at @s run clone from minecraft:overworld 8665 ~ -2000 8667 ~ 2 to switch:game 8665 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 418 at @s in switch:game run particle cloud 8668 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 418 at @s run clone from minecraft:overworld 8667 ~ -2000 8669 ~ 2 to switch:game 8667 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 419 at @s in switch:game run particle cloud 8669 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 419 at @s run clone from minecraft:overworld 8669 ~ -2000 8670 ~ 2 to switch:game 8669 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 420 at @s in switch:game run particle cloud 8671 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 420 at @s run clone from minecraft:overworld 8670 ~ -2000 8672 ~ 2 to switch:game 8670 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 421 at @s in switch:game run particle cloud 8672 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 421 at @s run clone from minecraft:overworld 8672 ~ -2000 8673 ~ 2 to switch:game 8672 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 422 at @s in switch:game run particle cloud 8674 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 422 at @s run clone from minecraft:overworld 8673 ~ -2000 8675 ~ 2 to switch:game 8673 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 423 at @s in switch:game run particle cloud 8676 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 423 at @s run clone from minecraft:overworld 8675 ~ -2000 8677 ~ 2 to switch:game 8675 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 424 at @s in switch:game run particle cloud 8677 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 424 at @s run clone from minecraft:overworld 8677 ~ -2000 8678 ~ 2 to switch:game 8677 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 425 at @s in switch:game run particle cloud 8679 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 425 at @s run clone from minecraft:overworld 8678 ~ -2000 8680 ~ 2 to switch:game 8678 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 426 at @s in switch:game run particle cloud 8680 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 426 at @s run clone from minecraft:overworld 8680 ~ -2000 8681 ~ 2 to switch:game 8680 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 427 at @s in switch:game run particle cloud 8682 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 427 at @s run clone from minecraft:overworld 8681 ~ -2000 8683 ~ 2 to switch:game 8681 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 428 at @s in switch:game run particle cloud 8683 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 428 at @s run clone from minecraft:overworld 8683 ~ -2000 8684 ~ 2 to switch:game 8683 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 429 at @s in switch:game run particle cloud 8685 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 429 at @s run clone from minecraft:overworld 8684 ~ -2000 8686 ~ 2 to switch:game 8684 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 430 at @s in switch:game run particle cloud 8687 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 430 at @s run clone from minecraft:overworld 8686 ~ -2000 8688 ~ 2 to switch:game 8686 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 431 at @s in switch:game run particle cloud 8688 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 431 at @s run clone from minecraft:overworld 8688 ~ -2000 8689 ~ 2 to switch:game 8688 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 432 at @s in switch:game run particle cloud 8690 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 432 at @s run clone from minecraft:overworld 8689 ~ -2000 8691 ~ 2 to switch:game 8689 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 433 at @s in switch:game run particle cloud 8691 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 433 at @s run clone from minecraft:overworld 8691 ~ -2000 8692 ~ 2 to switch:game 8691 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 434 at @s in switch:game run particle cloud 8693 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 434 at @s run clone from minecraft:overworld 8692 ~ -2000 8694 ~ 2 to switch:game 8692 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 435 at @s in switch:game run particle cloud 8695 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 435 at @s run clone from minecraft:overworld 8694 ~ -2000 8696 ~ 2 to switch:game 8694 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 436 at @s in switch:game run particle cloud 8696 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 436 at @s run clone from minecraft:overworld 8696 ~ -2000 8697 ~ 2 to switch:game 8696 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 437 at @s in switch:game run particle cloud 8698 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 437 at @s run clone from minecraft:overworld 8697 ~ -2000 8699 ~ 2 to switch:game 8697 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 438 at @s in switch:game run particle cloud 8699 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 438 at @s run clone from minecraft:overworld 8699 ~ -2000 8700 ~ 2 to switch:game 8699 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 439 at @s in switch:game run particle cloud 8701 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 439 at @s run clone from minecraft:overworld 8700 ~ -2000 8702 ~ 2 to switch:game 8700 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 440 at @s in switch:game run particle cloud 8703 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 440 at @s run clone from minecraft:overworld 8702 ~ -2000 8704 ~ 2 to switch:game 8702 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 441 at @s in switch:game run particle cloud 8704 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 441 at @s run clone from minecraft:overworld 8704 ~ -2000 8705 ~ 2 to switch:game 8704 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 442 at @s in switch:game run particle cloud 8706 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 442 at @s run clone from minecraft:overworld 8705 ~ -2000 8707 ~ 2 to switch:game 8705 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 443 at @s in switch:game run particle cloud 8707 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 443 at @s run clone from minecraft:overworld 8707 ~ -2000 8708 ~ 2 to switch:game 8707 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 444 at @s in switch:game run particle cloud 8709 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 444 at @s run clone from minecraft:overworld 8708 ~ -2000 8710 ~ 2 to switch:game 8708 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 445 at @s in switch:game run particle cloud 8711 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 445 at @s run clone from minecraft:overworld 8710 ~ -2000 8712 ~ 2 to switch:game 8710 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 446 at @s in switch:game run particle cloud 8712 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 446 at @s run clone from minecraft:overworld 8712 ~ -2000 8713 ~ 2 to switch:game 8712 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 447 at @s in switch:game run particle cloud 8714 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 447 at @s run clone from minecraft:overworld 8713 ~ -2000 8715 ~ 2 to switch:game 8713 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 448 at @s in switch:game run particle cloud 8715 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 448 at @s run clone from minecraft:overworld 8715 ~ -2000 8716 ~ 2 to switch:game 8715 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 449 at @s in switch:game run particle cloud 8717 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 449 at @s run clone from minecraft:overworld 8716 ~ -2000 8718 ~ 2 to switch:game 8716 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 450 at @s in switch:game run particle cloud 8719 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 450 at @s run clone from minecraft:overworld 8718 ~ -2000 8720 ~ 2 to switch:game 8718 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 451 at @s in switch:game run particle cloud 8720 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 451 at @s run clone from minecraft:overworld 8720 ~ -2000 8721 ~ 2 to switch:game 8720 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 452 at @s in switch:game run particle cloud 8722 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 452 at @s run clone from minecraft:overworld 8721 ~ -2000 8723 ~ 2 to switch:game 8721 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 453 at @s in switch:game run particle cloud 8723 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 453 at @s run clone from minecraft:overworld 8723 ~ -2000 8724 ~ 2 to switch:game 8723 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 454 at @s in switch:game run particle cloud 8725 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 454 at @s run clone from minecraft:overworld 8724 ~ -2000 8726 ~ 2 to switch:game 8724 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 455 at @s in switch:game run particle cloud 8727 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 455 at @s run clone from minecraft:overworld 8726 ~ -2000 8728 ~ 2 to switch:game 8726 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 456 at @s in switch:game run particle cloud 8728 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 456 at @s run clone from minecraft:overworld 8728 ~ -2000 8729 ~ 2 to switch:game 8728 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 457 at @s in switch:game run particle cloud 8730 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 457 at @s run clone from minecraft:overworld 8729 ~ -2000 8731 ~ 2 to switch:game 8729 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 458 at @s in switch:game run particle cloud 8731 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 458 at @s run clone from minecraft:overworld 8731 ~ -2000 8732 ~ 2 to switch:game 8731 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 459 at @s in switch:game run particle cloud 8733 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 459 at @s run clone from minecraft:overworld 8732 ~ -2000 8734 ~ 2 to switch:game 8732 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 460 at @s in switch:game run particle cloud 8735 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 460 at @s run clone from minecraft:overworld 8734 ~ -2000 8736 ~ 2 to switch:game 8734 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 461 at @s in switch:game run particle cloud 8736 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 461 at @s run clone from minecraft:overworld 8736 ~ -2000 8737 ~ 2 to switch:game 8736 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 462 at @s in switch:game run particle cloud 8738 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 462 at @s run clone from minecraft:overworld 8737 ~ -2000 8739 ~ 2 to switch:game 8737 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 463 at @s in switch:game run particle cloud 8739 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 463 at @s run clone from minecraft:overworld 8739 ~ -2000 8740 ~ 2 to switch:game 8739 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 464 at @s in switch:game run particle cloud 8741 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 464 at @s run clone from minecraft:overworld 8740 ~ -2000 8742 ~ 2 to switch:game 8740 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 465 at @s in switch:game run particle cloud 8743 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 465 at @s run clone from minecraft:overworld 8742 ~ -2000 8744 ~ 2 to switch:game 8742 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 466 at @s in switch:game run particle cloud 8744 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 466 at @s run clone from minecraft:overworld 8744 ~ -2000 8745 ~ 2 to switch:game 8744 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 467 at @s in switch:game run particle cloud 8746 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 467 at @s run clone from minecraft:overworld 8745 ~ -2000 8747 ~ 2 to switch:game 8745 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 468 at @s in switch:game run particle cloud 8747 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 468 at @s run clone from minecraft:overworld 8747 ~ -2000 8748 ~ 2 to switch:game 8747 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 469 at @s in switch:game run particle cloud 8749 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 469 at @s run clone from minecraft:overworld 8748 ~ -2000 8750 ~ 2 to switch:game 8748 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 470 at @s in switch:game run particle cloud 8751 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 470 at @s run clone from minecraft:overworld 8750 ~ -2000 8752 ~ 2 to switch:game 8750 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 471 at @s in switch:game run particle cloud 8752 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 471 at @s run clone from minecraft:overworld 8752 ~ -2000 8753 ~ 2 to switch:game 8752 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 472 at @s in switch:game run particle cloud 8754 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 472 at @s run clone from minecraft:overworld 8753 ~ -2000 8755 ~ 2 to switch:game 8753 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 473 at @s in switch:game run particle cloud 8755 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 473 at @s run clone from minecraft:overworld 8755 ~ -2000 8756 ~ 2 to switch:game 8755 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 474 at @s in switch:game run particle cloud 8757 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 474 at @s run clone from minecraft:overworld 8756 ~ -2000 8758 ~ 2 to switch:game 8756 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 475 at @s in switch:game run particle cloud 8758 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 475 at @s run clone from minecraft:overworld 8758 ~ -2000 8759 ~ 2 to switch:game 8758 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 476 at @s in switch:game run particle cloud 8760 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 476 at @s run clone from minecraft:overworld 8759 ~ -2000 8761 ~ 2 to switch:game 8759 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 477 at @s in switch:game run particle cloud 8762 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 477 at @s run clone from minecraft:overworld 8761 ~ -2000 8763 ~ 2 to switch:game 8761 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 478 at @s in switch:game run particle cloud 8763 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 478 at @s run clone from minecraft:overworld 8763 ~ -2000 8764 ~ 2 to switch:game 8763 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 479 at @s in switch:game run particle cloud 8765 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 479 at @s run clone from minecraft:overworld 8764 ~ -2000 8766 ~ 2 to switch:game 8764 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 480 at @s in switch:game run particle cloud 8766 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 480 at @s run clone from minecraft:overworld 8766 ~ -2000 8767 ~ 2 to switch:game 8766 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 481 at @s in switch:game run particle cloud 8768 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 481 at @s run clone from minecraft:overworld 8767 ~ -2000 8769 ~ 2 to switch:game 8767 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 482 at @s in switch:game run particle cloud 8770 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 482 at @s run clone from minecraft:overworld 8769 ~ -2000 8771 ~ 2 to switch:game 8769 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 483 at @s in switch:game run particle cloud 8771 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 483 at @s run clone from minecraft:overworld 8771 ~ -2000 8772 ~ 2 to switch:game 8771 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 484 at @s in switch:game run particle cloud 8773 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 484 at @s run clone from minecraft:overworld 8772 ~ -2000 8774 ~ 2 to switch:game 8772 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 485 at @s in switch:game run particle cloud 8774 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 485 at @s run clone from minecraft:overworld 8774 ~ -2000 8775 ~ 2 to switch:game 8774 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 486 at @s in switch:game run particle cloud 8776 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 486 at @s run clone from minecraft:overworld 8775 ~ -2000 8777 ~ 2 to switch:game 8775 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 487 at @s in switch:game run particle cloud 8778 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 487 at @s run clone from minecraft:overworld 8777 ~ -2000 8779 ~ 2 to switch:game 8777 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 488 at @s in switch:game run particle cloud 8779 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 488 at @s run clone from minecraft:overworld 8779 ~ -2000 8780 ~ 2 to switch:game 8779 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 489 at @s in switch:game run particle cloud 8781 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 489 at @s run clone from minecraft:overworld 8780 ~ -2000 8782 ~ 2 to switch:game 8780 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 490 at @s in switch:game run particle cloud 8782 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 490 at @s run clone from minecraft:overworld 8782 ~ -2000 8783 ~ 2 to switch:game 8782 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 491 at @s in switch:game run particle cloud 8784 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 491 at @s run clone from minecraft:overworld 8783 ~ -2000 8785 ~ 2 to switch:game 8783 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 492 at @s in switch:game run particle cloud 8786 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 492 at @s run clone from minecraft:overworld 8785 ~ -2000 8787 ~ 2 to switch:game 8785 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 493 at @s in switch:game run particle cloud 8787 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 493 at @s run clone from minecraft:overworld 8787 ~ -2000 8788 ~ 2 to switch:game 8787 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 494 at @s in switch:game run particle cloud 8789 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 494 at @s run clone from minecraft:overworld 8788 ~ -2000 8790 ~ 2 to switch:game 8788 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 495 at @s in switch:game run particle cloud 8790 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 495 at @s run clone from minecraft:overworld 8790 ~ -2000 8791 ~ 2 to switch:game 8790 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 496 at @s in switch:game run particle cloud 8792 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 496 at @s run clone from minecraft:overworld 8791 ~ -2000 8793 ~ 2 to switch:game 8791 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 497 at @s in switch:game run particle cloud 8794 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 497 at @s run clone from minecraft:overworld 8793 ~ -2000 8795 ~ 2 to switch:game 8793 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 498 at @s in switch:game run particle cloud 8795 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 498 at @s run clone from minecraft:overworld 8795 ~ -2000 8796 ~ 2 to switch:game 8795 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 499 at @s in switch:game run particle cloud 8797 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 499 at @s run clone from minecraft:overworld 8796 ~ -2000 8798 ~ 2 to switch:game 8796 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 500 at @s in switch:game run particle cloud 8798 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 500 at @s run clone from minecraft:overworld 8798 ~ -2000 8799 ~ 2 to switch:game 8798 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 501 at @s in switch:game run particle cloud 8800 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 501 at @s run clone from minecraft:overworld 8799 ~ -2000 8801 ~ 2 to switch:game 8799 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 502 at @s in switch:game run particle cloud 8802 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 502 at @s run clone from minecraft:overworld 8801 ~ -2000 8803 ~ 2 to switch:game 8801 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 503 at @s in switch:game run particle cloud 8803 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 503 at @s run clone from minecraft:overworld 8803 ~ -2000 8804 ~ 2 to switch:game 8803 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 504 at @s in switch:game run particle cloud 8805 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 504 at @s run clone from minecraft:overworld 8804 ~ -2000 8806 ~ 2 to switch:game 8804 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 505 at @s in switch:game run particle cloud 8806 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 505 at @s run clone from minecraft:overworld 8806 ~ -2000 8807 ~ 2 to switch:game 8806 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 506 at @s in switch:game run particle cloud 8808 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 506 at @s run clone from minecraft:overworld 8807 ~ -2000 8809 ~ 2 to switch:game 8807 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 507 at @s in switch:game run particle cloud 8810 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 507 at @s run clone from minecraft:overworld 8809 ~ -2000 8811 ~ 2 to switch:game 8809 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 508 at @s in switch:game run particle cloud 8811 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 508 at @s run clone from minecraft:overworld 8811 ~ -2000 8812 ~ 2 to switch:game 8811 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 509 at @s in switch:game run particle cloud 8813 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 509 at @s run clone from minecraft:overworld 8812 ~ -2000 8814 ~ 2 to switch:game 8812 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 510 at @s in switch:game run particle cloud 8814 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 510 at @s run clone from minecraft:overworld 8814 ~ -2000 8815 ~ 2 to switch:game 8814 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 511 at @s in switch:game run particle cloud 8816 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 511 at @s run clone from minecraft:overworld 8815 ~ -2000 8817 ~ 2 to switch:game 8815 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 512 at @s in switch:game run particle cloud 8818 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 512 at @s run clone from minecraft:overworld 8817 ~ -2000 8819 ~ 2 to switch:game 8817 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 513 at @s in switch:game run particle cloud 8819 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 513 at @s run clone from minecraft:overworld 8819 ~ -2000 8820 ~ 2 to switch:game 8819 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 514 at @s in switch:game run particle cloud 8821 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 514 at @s run clone from minecraft:overworld 8820 ~ -2000 8822 ~ 2 to switch:game 8820 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 515 at @s in switch:game run particle cloud 8822 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 515 at @s run clone from minecraft:overworld 8822 ~ -2000 8823 ~ 2 to switch:game 8822 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 516 at @s in switch:game run particle cloud 8824 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 516 at @s run clone from minecraft:overworld 8823 ~ -2000 8825 ~ 2 to switch:game 8823 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 517 at @s in switch:game run particle cloud 8825 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 517 at @s run clone from minecraft:overworld 8825 ~ -2000 8826 ~ 2 to switch:game 8825 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 518 at @s in switch:game run particle cloud 8827 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 518 at @s run clone from minecraft:overworld 8826 ~ -2000 8828 ~ 2 to switch:game 8826 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 519 at @s in switch:game run particle cloud 8829 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 519 at @s run clone from minecraft:overworld 8828 ~ -2000 8830 ~ 2 to switch:game 8828 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 520 at @s in switch:game run particle cloud 8830 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 520 at @s run clone from minecraft:overworld 8830 ~ -2000 8831 ~ 2 to switch:game 8830 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 521 at @s in switch:game run particle cloud 8832 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 521 at @s run clone from minecraft:overworld 8831 ~ -2000 8833 ~ 2 to switch:game 8831 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 522 at @s in switch:game run particle cloud 8833 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 522 at @s run clone from minecraft:overworld 8833 ~ -2000 8834 ~ 2 to switch:game 8833 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 523 at @s in switch:game run particle cloud 8835 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 523 at @s run clone from minecraft:overworld 8834 ~ -2000 8836 ~ 2 to switch:game 8834 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 524 at @s in switch:game run particle cloud 8837 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 524 at @s run clone from minecraft:overworld 8836 ~ -2000 8838 ~ 2 to switch:game 8836 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 525 at @s in switch:game run particle cloud 8838 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 525 at @s run clone from minecraft:overworld 8838 ~ -2000 8839 ~ 2 to switch:game 8838 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 526 at @s in switch:game run particle cloud 8840 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 526 at @s run clone from minecraft:overworld 8839 ~ -2000 8841 ~ 2 to switch:game 8839 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 527 at @s in switch:game run particle cloud 8841 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 527 at @s run clone from minecraft:overworld 8841 ~ -2000 8842 ~ 2 to switch:game 8841 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 528 at @s in switch:game run particle cloud 8843 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 528 at @s run clone from minecraft:overworld 8842 ~ -2000 8844 ~ 2 to switch:game 8842 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 529 at @s in switch:game run particle cloud 8845 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 529 at @s run clone from minecraft:overworld 8844 ~ -2000 8846 ~ 2 to switch:game 8844 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 530 at @s in switch:game run particle cloud 8846 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 530 at @s run clone from minecraft:overworld 8846 ~ -2000 8847 ~ 2 to switch:game 8846 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 531 at @s in switch:game run particle cloud 8848 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 531 at @s run clone from minecraft:overworld 8847 ~ -2000 8849 ~ 2 to switch:game 8847 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 532 at @s in switch:game run particle cloud 8849 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 532 at @s run clone from minecraft:overworld 8849 ~ -2000 8850 ~ 2 to switch:game 8849 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 533 at @s in switch:game run particle cloud 8851 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 533 at @s run clone from minecraft:overworld 8850 ~ -2000 8852 ~ 2 to switch:game 8850 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 534 at @s in switch:game run particle cloud 8853 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 534 at @s run clone from minecraft:overworld 8852 ~ -2000 8854 ~ 2 to switch:game 8852 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 535 at @s in switch:game run particle cloud 8854 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 535 at @s run clone from minecraft:overworld 8854 ~ -2000 8855 ~ 2 to switch:game 8854 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 536 at @s in switch:game run particle cloud 8856 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 536 at @s run clone from minecraft:overworld 8855 ~ -2000 8857 ~ 2 to switch:game 8855 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 537 at @s in switch:game run particle cloud 8857 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 537 at @s run clone from minecraft:overworld 8857 ~ -2000 8858 ~ 2 to switch:game 8857 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 538 at @s in switch:game run particle cloud 8859 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 538 at @s run clone from minecraft:overworld 8858 ~ -2000 8860 ~ 2 to switch:game 8858 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 539 at @s in switch:game run particle cloud 8861 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 539 at @s run clone from minecraft:overworld 8860 ~ -2000 8862 ~ 2 to switch:game 8860 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 540 at @s in switch:game run particle cloud 8862 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 540 at @s run clone from minecraft:overworld 8862 ~ -2000 8863 ~ 2 to switch:game 8862 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 541 at @s in switch:game run particle cloud 8864 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 541 at @s run clone from minecraft:overworld 8863 ~ -2000 8865 ~ 2 to switch:game 8863 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 542 at @s in switch:game run particle cloud 8865 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 542 at @s run clone from minecraft:overworld 8865 ~ -2000 8866 ~ 2 to switch:game 8865 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 543 at @s in switch:game run particle cloud 8867 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 543 at @s run clone from minecraft:overworld 8866 ~ -2000 8868 ~ 2 to switch:game 8866 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 544 at @s in switch:game run particle cloud 8869 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 544 at @s run clone from minecraft:overworld 8868 ~ -2000 8870 ~ 2 to switch:game 8868 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 545 at @s in switch:game run particle cloud 8870 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 545 at @s run clone from minecraft:overworld 8870 ~ -2000 8871 ~ 2 to switch:game 8870 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 546 at @s in switch:game run particle cloud 8872 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 546 at @s run clone from minecraft:overworld 8871 ~ -2000 8873 ~ 2 to switch:game 8871 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 547 at @s in switch:game run particle cloud 8873 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 547 at @s run clone from minecraft:overworld 8873 ~ -2000 8874 ~ 2 to switch:game 8873 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 548 at @s in switch:game run particle cloud 8875 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 548 at @s run clone from minecraft:overworld 8874 ~ -2000 8876 ~ 2 to switch:game 8874 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 549 at @s in switch:game run particle cloud 8877 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 549 at @s run clone from minecraft:overworld 8876 ~ -2000 8878 ~ 2 to switch:game 8876 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 550 at @s in switch:game run particle cloud 8878 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 550 at @s run clone from minecraft:overworld 8878 ~ -2000 8879 ~ 2 to switch:game 8878 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 551 at @s in switch:game run particle cloud 8880 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 551 at @s run clone from minecraft:overworld 8879 ~ -2000 8881 ~ 2 to switch:game 8879 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 552 at @s in switch:game run particle cloud 8881 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 552 at @s run clone from minecraft:overworld 8881 ~ -2000 8882 ~ 2 to switch:game 8881 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 553 at @s in switch:game run particle cloud 8883 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 553 at @s run clone from minecraft:overworld 8882 ~ -2000 8884 ~ 2 to switch:game 8882 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 554 at @s in switch:game run particle cloud 8885 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 554 at @s run clone from minecraft:overworld 8884 ~ -2000 8886 ~ 2 to switch:game 8884 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 555 at @s in switch:game run particle cloud 8886 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 555 at @s run clone from minecraft:overworld 8886 ~ -2000 8887 ~ 2 to switch:game 8886 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 556 at @s in switch:game run particle cloud 8888 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 556 at @s run clone from minecraft:overworld 8887 ~ -2000 8889 ~ 2 to switch:game 8887 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 557 at @s in switch:game run particle cloud 8889 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 557 at @s run clone from minecraft:overworld 8889 ~ -2000 8890 ~ 2 to switch:game 8889 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 558 at @s in switch:game run particle cloud 8891 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 558 at @s run clone from minecraft:overworld 8890 ~ -2000 8892 ~ 2 to switch:game 8890 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 559 at @s in switch:game run particle cloud 8893 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 559 at @s run clone from minecraft:overworld 8892 ~ -2000 8894 ~ 2 to switch:game 8892 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 560 at @s in switch:game run particle cloud 8894 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 560 at @s run clone from minecraft:overworld 8894 ~ -2000 8895 ~ 2 to switch:game 8894 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 561 at @s in switch:game run particle cloud 8896 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 561 at @s run clone from minecraft:overworld 8895 ~ -2000 8897 ~ 2 to switch:game 8895 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 562 at @s in switch:game run particle cloud 8897 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 562 at @s run clone from minecraft:overworld 8897 ~ -2000 8898 ~ 2 to switch:game 8897 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 563 at @s in switch:game run particle cloud 8899 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 563 at @s run clone from minecraft:overworld 8898 ~ -2000 8900 ~ 2 to switch:game 8898 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 564 at @s in switch:game run particle cloud 8900 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 564 at @s run clone from minecraft:overworld 8900 ~ -2000 8901 ~ 2 to switch:game 8900 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 565 at @s in switch:game run particle cloud 8902 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 565 at @s run clone from minecraft:overworld 8901 ~ -2000 8903 ~ 2 to switch:game 8901 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 566 at @s in switch:game run particle cloud 8904 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 566 at @s run clone from minecraft:overworld 8903 ~ -2000 8905 ~ 2 to switch:game 8903 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 567 at @s in switch:game run particle cloud 8905 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 567 at @s run clone from minecraft:overworld 8905 ~ -2000 8906 ~ 2 to switch:game 8905 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 568 at @s in switch:game run particle cloud 8907 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 568 at @s run clone from minecraft:overworld 8906 ~ -2000 8908 ~ 2 to switch:game 8906 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 569 at @s in switch:game run particle cloud 8908 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 569 at @s run clone from minecraft:overworld 8908 ~ -2000 8909 ~ 2 to switch:game 8908 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 570 at @s in switch:game run particle cloud 8910 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 570 at @s run clone from minecraft:overworld 8909 ~ -2000 8911 ~ 2 to switch:game 8909 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 571 at @s in switch:game run particle cloud 8912 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 571 at @s run clone from minecraft:overworld 8911 ~ -2000 8913 ~ 2 to switch:game 8911 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 572 at @s in switch:game run particle cloud 8913 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 572 at @s run clone from minecraft:overworld 8913 ~ -2000 8914 ~ 2 to switch:game 8913 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 573 at @s in switch:game run particle cloud 8915 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 573 at @s run clone from minecraft:overworld 8914 ~ -2000 8916 ~ 2 to switch:game 8914 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 574 at @s in switch:game run particle cloud 8916 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 574 at @s run clone from minecraft:overworld 8916 ~ -2000 8917 ~ 2 to switch:game 8916 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 575 at @s in switch:game run particle cloud 8918 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 575 at @s run clone from minecraft:overworld 8917 ~ -2000 8919 ~ 2 to switch:game 8917 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 576 at @s in switch:game run particle cloud 8920 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 576 at @s run clone from minecraft:overworld 8919 ~ -2000 8921 ~ 2 to switch:game 8919 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 577 at @s in switch:game run particle cloud 8921 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 577 at @s run clone from minecraft:overworld 8921 ~ -2000 8922 ~ 2 to switch:game 8921 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 578 at @s in switch:game run particle cloud 8923 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 578 at @s run clone from minecraft:overworld 8922 ~ -2000 8924 ~ 2 to switch:game 8922 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 579 at @s in switch:game run particle cloud 8924 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 579 at @s run clone from minecraft:overworld 8924 ~ -2000 8925 ~ 2 to switch:game 8924 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 580 at @s in switch:game run particle cloud 8926 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 580 at @s run clone from minecraft:overworld 8925 ~ -2000 8927 ~ 2 to switch:game 8925 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 581 at @s in switch:game run particle cloud 8928 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 581 at @s run clone from minecraft:overworld 8927 ~ -2000 8929 ~ 2 to switch:game 8927 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 582 at @s in switch:game run particle cloud 8929 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 582 at @s run clone from minecraft:overworld 8929 ~ -2000 8930 ~ 2 to switch:game 8929 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 583 at @s in switch:game run particle cloud 8931 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 583 at @s run clone from minecraft:overworld 8930 ~ -2000 8932 ~ 2 to switch:game 8930 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 584 at @s in switch:game run particle cloud 8932 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 584 at @s run clone from minecraft:overworld 8932 ~ -2000 8933 ~ 2 to switch:game 8932 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 585 at @s in switch:game run particle cloud 8934 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 585 at @s run clone from minecraft:overworld 8933 ~ -2000 8935 ~ 2 to switch:game 8933 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 586 at @s in switch:game run particle cloud 8936 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 586 at @s run clone from minecraft:overworld 8935 ~ -2000 8937 ~ 2 to switch:game 8935 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 587 at @s in switch:game run particle cloud 8937 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 587 at @s run clone from minecraft:overworld 8937 ~ -2000 8938 ~ 2 to switch:game 8937 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 588 at @s in switch:game run particle cloud 8939 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 588 at @s run clone from minecraft:overworld 8938 ~ -2000 8940 ~ 2 to switch:game 8938 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 589 at @s in switch:game run particle cloud 8940 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 589 at @s run clone from minecraft:overworld 8940 ~ -2000 8941 ~ 2 to switch:game 8940 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 590 at @s in switch:game run particle cloud 8942 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 590 at @s run clone from minecraft:overworld 8941 ~ -2000 8943 ~ 2 to switch:game 8941 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 591 at @s in switch:game run particle cloud 8944 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 591 at @s run clone from minecraft:overworld 8943 ~ -2000 8945 ~ 2 to switch:game 8943 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 592 at @s in switch:game run particle cloud 8945 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 592 at @s run clone from minecraft:overworld 8945 ~ -2000 8946 ~ 2 to switch:game 8945 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 593 at @s in switch:game run particle cloud 8947 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 593 at @s run clone from minecraft:overworld 8946 ~ -2000 8948 ~ 2 to switch:game 8946 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 594 at @s in switch:game run particle cloud 8948 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 594 at @s run clone from minecraft:overworld 8948 ~ -2000 8949 ~ 2 to switch:game 8948 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 595 at @s in switch:game run particle cloud 8950 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 595 at @s run clone from minecraft:overworld 8949 ~ -2000 8951 ~ 2 to switch:game 8949 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 596 at @s in switch:game run particle cloud 8952 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 596 at @s run clone from minecraft:overworld 8951 ~ -2000 8953 ~ 2 to switch:game 8951 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 597 at @s in switch:game run particle cloud 8953 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 597 at @s run clone from minecraft:overworld 8953 ~ -2000 8954 ~ 2 to switch:game 8953 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 598 at @s in switch:game run particle cloud 8955 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 598 at @s run clone from minecraft:overworld 8954 ~ -2000 8956 ~ 2 to switch:game 8954 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 599 at @s in switch:game run particle cloud 8956 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 599 at @s run clone from minecraft:overworld 8956 ~ -2000 8957 ~ 2 to switch:game 8956 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 600 at @s in switch:game run particle cloud 8958 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 600 at @s run clone from minecraft:overworld 8957 ~ -2000 8959 ~ 2 to switch:game 8957 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 601 at @s in switch:game run particle cloud 8960 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 601 at @s run clone from minecraft:overworld 8959 ~ -2000 8961 ~ 2 to switch:game 8959 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 602 at @s in switch:game run particle cloud 8961 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 602 at @s run clone from minecraft:overworld 8961 ~ -2000 8962 ~ 2 to switch:game 8961 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 603 at @s in switch:game run particle cloud 8963 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 603 at @s run clone from minecraft:overworld 8962 ~ -2000 8964 ~ 2 to switch:game 8962 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 604 at @s in switch:game run particle cloud 8964 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 604 at @s run clone from minecraft:overworld 8964 ~ -2000 8965 ~ 2 to switch:game 8964 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 605 at @s in switch:game run particle cloud 8966 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 605 at @s run clone from minecraft:overworld 8965 ~ -2000 8967 ~ 2 to switch:game 8965 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 606 at @s in switch:game run particle cloud 8967 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 606 at @s run clone from minecraft:overworld 8967 ~ -2000 8968 ~ 2 to switch:game 8967 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 607 at @s in switch:game run particle cloud 8969 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 607 at @s run clone from minecraft:overworld 8968 ~ -2000 8970 ~ 2 to switch:game 8968 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 608 at @s in switch:game run particle cloud 8971 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 608 at @s run clone from minecraft:overworld 8970 ~ -2000 8972 ~ 2 to switch:game 8970 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 609 at @s in switch:game run particle cloud 8972 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 609 at @s run clone from minecraft:overworld 8972 ~ -2000 8973 ~ 2 to switch:game 8972 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 610 at @s in switch:game run particle cloud 8974 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 610 at @s run clone from minecraft:overworld 8973 ~ -2000 8975 ~ 2 to switch:game 8973 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 611 at @s in switch:game run particle cloud 8975 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 611 at @s run clone from minecraft:overworld 8975 ~ -2000 8976 ~ 2 to switch:game 8975 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 612 at @s in switch:game run particle cloud 8977 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 612 at @s run clone from minecraft:overworld 8976 ~ -2000 8978 ~ 2 to switch:game 8976 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 613 at @s in switch:game run particle cloud 8979 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 613 at @s run clone from minecraft:overworld 8978 ~ -2000 8980 ~ 2 to switch:game 8978 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 614 at @s in switch:game run particle cloud 8980 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 614 at @s run clone from minecraft:overworld 8980 ~ -2000 8981 ~ 2 to switch:game 8980 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 615 at @s in switch:game run particle cloud 8982 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 615 at @s run clone from minecraft:overworld 8981 ~ -2000 8983 ~ 2 to switch:game 8981 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 616 at @s in switch:game run particle cloud 8983 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 616 at @s run clone from minecraft:overworld 8983 ~ -2000 8984 ~ 2 to switch:game 8983 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 617 at @s in switch:game run particle cloud 8985 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 617 at @s run clone from minecraft:overworld 8984 ~ -2000 8986 ~ 2 to switch:game 8984 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 618 at @s in switch:game run particle cloud 8987 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 618 at @s run clone from minecraft:overworld 8986 ~ -2000 8988 ~ 2 to switch:game 8986 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 619 at @s in switch:game run particle cloud 8988 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 619 at @s run clone from minecraft:overworld 8988 ~ -2000 8989 ~ 2 to switch:game 8988 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 620 at @s in switch:game run particle cloud 8990 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 620 at @s run clone from minecraft:overworld 8989 ~ -2000 8991 ~ 2 to switch:game 8989 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 621 at @s in switch:game run particle cloud 8991 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 621 at @s run clone from minecraft:overworld 8991 ~ -2000 8992 ~ 2 to switch:game 8991 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 622 at @s in switch:game run particle cloud 8993 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 622 at @s run clone from minecraft:overworld 8992 ~ -2000 8994 ~ 2 to switch:game 8992 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 623 at @s in switch:game run particle cloud 8995 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 623 at @s run clone from minecraft:overworld 8994 ~ -2000 8996 ~ 2 to switch:game 8994 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 624 at @s in switch:game run particle cloud 8996 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 624 at @s run clone from minecraft:overworld 8996 ~ -2000 8997 ~ 2 to switch:game 8996 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 625 at @s in switch:game run particle cloud 8998 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 625 at @s run clone from minecraft:overworld 8997 ~ -2000 8999 ~ 2 to switch:game 8997 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 626 at @s in switch:game run particle cloud 8999 ~0.5 -999 0 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 626 at @s run clone from minecraft:overworld 8999 ~ -2000 9000 ~ 2 to switch:game 8999 ~0 -2000 strict replace force

execute if score #rg_abandoned_city_mod switch.data matches 627 at @s in switch:game run particle cloud 9001 ~0.5 -999 1 0 500 0 250 force
execute if score #rg_abandoned_city_mod switch.data matches 627 at @s run clone from minecraft:overworld 9000 ~ -2000 9002 ~ 2 to switch:game 9000 ~0 -2000 strict replace force

scoreboard players add #rg_abandoned_city_mod switch.data 1
execute if score #rg_abandoned_city_mod switch.data matches 628 in switch:game run kill @e[type=item,x=8501,y=-1,z=-999,distance=..1000]
execute if score #rg_abandoned_city_mod switch.data matches 628 run scoreboard players add #rg_abandoned_city_y switch.data 1
execute if score #rg_abandoned_city_mod switch.data matches 628 run scoreboard players set #rg_abandoned_city_mod switch.data 0

kill @s

