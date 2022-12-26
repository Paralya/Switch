
xp set @s 0 levels
xp set @s 0 points

summon pig 0 0 0 {Tags:["shopping_kart.init","switch.init"],Invulnerable:1b,Saddle:1b,DeathLootTable:"none",Silent:1b}
execute as @e[tag=shopping_kart.init] at @s run function shopping_kart:kart/init
tp @e[tag=switch.init] @s
tag @e[tag=switch.init] remove switch.init

function switch:modes/kart_racer/advancements/inventory_changed_confirm

