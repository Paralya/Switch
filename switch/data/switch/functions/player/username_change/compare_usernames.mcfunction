
$data modify storage switch:temp old_username set from storage switch:main UUIDs[{UUID:"$(UUID)"}].username
$data modify storage switch:temp copy set value "$(username)"

scoreboard players set #diff switch.data 1
execute store success score #diff switch.data run data modify storage switch:temp copy set from storage switch:temp old_username

# If there is a difference, we have to update everything
data modify storage switch:temp input.old_username set from storage switch:temp old_username
function switch:player/username_change/update_everything with storage switch:temp input
#execute if score #diff switch.data matches 1 run function switch:player/username_change/update_everything with storage switch:temp input

