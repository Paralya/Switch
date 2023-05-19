
xp set @s 0 levels
xp set @s 0 points

function shopping_kart:kart/summon
ride @s mount @e[type=pig,predicate=!switch:has_vehicle,sort=nearest,limit=1]

function switch:modes/kart_racer/advancements/inventory_changed_confirm

