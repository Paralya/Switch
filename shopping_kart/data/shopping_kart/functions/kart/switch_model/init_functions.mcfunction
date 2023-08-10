
# Run default init function
function shopping_kart:kart/init

# Apply old data
execute if data storage shopping_kart:main temp.scores run function shopping_kart:kart/switch_model/apply_old_data

# data modify storage shopping_kart:data ForcedRotation set from entity @s Rotation
execute if data storage shopping_kart:main ForcedRotation run data modify entity @s Rotation set from storage shopping_kart:data ForcedRotation
data remove storage shopping_kart:data ForcedRotation

# Make the player ride the kart 1 tick later
function shopping_kart:kart/switch_model/verify_passengers
schedule function shopping_kart:kart/switch_model/ride_kart_schedule 1t replace

# Remove temporary tag
tag @s remove shopping_kart.new_kart

