
$data modify storage switch:temp old_username set from storage switch:main UUIDs[{UUID:"$(UUID)"}].username
$data modify storage switch:temp copy set value "$(username)"

scoreboard players set #diff switch.data 1
execute store success score #diff switch.data run data modify storage switch:temp copy set from storage switch:temp old_username
# diff = 0 pour Stoupy

