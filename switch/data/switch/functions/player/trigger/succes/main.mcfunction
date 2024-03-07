
## File attribut: Ignore translations

## For each of the advancements, print it in order : [done:{green,yellow,red},not done:{green,yellow,red}]
function switch:translations/player_trigger_succes_main with storage switch:main input

# Done advancements
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"blue"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"green"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"yellow"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"red"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]

# Not done yet
tellraw @s ""
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"blue"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"green"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"yellow"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"red"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]

