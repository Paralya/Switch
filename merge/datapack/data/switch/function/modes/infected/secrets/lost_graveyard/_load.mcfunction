
scoreboard players set #infected_secret switch.data 0
scoreboard objectives add switch.temp.secret_kills playerKillCount
gamerule doTileDrops true

# Place some stardust ore
execute positioned 127121 113 127047 run function stardust:place/deepslate_stardust_ore/
execute positioned 127122 113 127055 run function stardust:place/deepslate_stardust_ore/
execute positioned 127115 114 127062 run function stardust:place/deepslate_stardust_ore/
execute positioned 127118 119 127068 run function stardust:place/deepslate_stardust_ore/
execute positioned 127109 117 127062 run function stardust:place/deepslate_stardust_ore/
execute positioned 127131 122 127114 run function stardust:place/nether_stardust_ore/

