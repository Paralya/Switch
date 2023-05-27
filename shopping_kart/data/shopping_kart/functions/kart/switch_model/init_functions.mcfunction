
# Run default init function
function shopping_kart:kart/init

# Apply old data
execute if data storage shopping_kart:main temp.scores run function shopping_kart:kart/switch_model/apply_old_data

# Make the player ride the kart 1 tick later
tag @s add shopping_kart.waiting_for_passenger
schedule function shopping_kart:kart/switch_model/ride_kart_schedule 1t replace

# Remove temporary tag
tag @s remove shopping_kart.new_kart

