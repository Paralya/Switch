
tag @s add switch.temp

xp set @s 0 levels
xp set @s 0 points

execute if data storage switch:main {map:"baby_park"} run scoreboard players set #default_max_engine shopping_kart.data 2000
execute if data storage switch:main {map:"snow_travel"} run scoreboard players set #default_max_engine shopping_kart.data 2000
summon pig 0 0 0 {Tags:["shopping_kart.init","switch.init"],Invulnerable:1b,Saddle:1b,DeathLootTable:"none",Silent:1b}
execute as @e[tag=shopping_kart.init] at @s run function shopping_kart:kart/init
tp @e[tag=switch.init] @s
tag @e[tag=switch.init] remove switch.init
scoreboard players set #default_max_engine shopping_kart.data 1750

tag @s remove switch.temp

