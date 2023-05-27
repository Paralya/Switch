
xp set @s 0 levels
xp set @s 0 points

function shopping_kart:kart/switch_model/summon_new_kart
ride @s mount @e[tag=shopping_kart.kart,predicate=!switch:has_vehicle,sort=nearest,limit=1]

function switch:modes/kart_racer/advancements/inventory_changed_confirm

