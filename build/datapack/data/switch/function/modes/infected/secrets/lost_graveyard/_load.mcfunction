
#> switch:modes/infected/secrets/lost_graveyard/_load
#
# @within	switch:modes/infected/secrets/load
#

scoreboard players set #infected_secret switch.data 0
scoreboard objectives add switch.temp.secret_kills playerKillCount
execute in switch:game run gamerule minecraft:block_drops true

# Place some stardust ore
execute positioned 2121 113 10047 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 2122 113 10055 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 2115 114 10062 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 2118 119 10068 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 2109 117 10062 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 2131 122 10114 run function switch:custom_blocks/nether_stardust_ore/place_main

