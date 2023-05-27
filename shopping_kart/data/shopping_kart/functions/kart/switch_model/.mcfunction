
# Update the model of the shopping kart just in case
scoreboard players add @s shopping_kart.current_model 0

# Get old shopping kart information
scoreboard players set #has_vehicle shopping_kart.data 0
execute on vehicle if entity @s[tag=shopping_kart.kart] run function shopping_kart:kart/switch_model/get_old_data

# If there is a vehicle, remove it, summon the new one, set the new data and ride it
execute if score #has_vehicle shopping_kart.data matches 1 on vehicle run function shopping_kart:kart/kill_safely
execute if score #has_vehicle shopping_kart.data matches 1 at @s run function shopping_kart:kart/switch_model/summon_new_kart

