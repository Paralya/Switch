
xp set @s 0 levels
xp set @s 0 points

# Summon kart with infinite max speed
scoreboard players operation #old switch.data = #default_max_engine shopping_kart.data
scoreboard players set #default_max_engine shopping_kart.data 2000
function shopping_kart:kart/switch_model/summon_new_kart
scoreboard players operation #default_max_engine shopping_kart.data = #old switch.data

function switch:modes/kart_racer/advancements/inventory_changed_confirm

