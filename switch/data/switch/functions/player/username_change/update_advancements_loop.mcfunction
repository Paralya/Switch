
# Update username
$execute if data storage switch:advancements all[{name:"$(name)"}].players[{name:"$(old_username)"}] run data modify storage switch:advancements all[{name:"$(name)"}].players[{name:"$(old_username)"}].name set value "$(username)"

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_advancements_loop with storage switch:temp copy[0]

