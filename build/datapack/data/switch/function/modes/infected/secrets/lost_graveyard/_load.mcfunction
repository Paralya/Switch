
#> switch:modes/infected/secrets/lost_graveyard/_load
#
# @within	switch:modes/infected/secrets/load
#

scoreboard players set #infected_secret switch.data 0
scoreboard objectives add switch.temp.secret_kills playerKillCount
execute in switch:game run gamerule doTileDrops true

# Place some stardust ore
execute positioned 127121 113 127047 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127122 113 127055 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127115 114 127062 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127118 119 127068 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127109 117 127062 run function switch:custom_blocks/deepslate_stardust_ore/place_main
execute positioned 127131 122 127114 run function switch:custom_blocks/nether_stardust_ore/place_main

