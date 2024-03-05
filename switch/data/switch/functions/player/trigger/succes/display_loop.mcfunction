
# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
function switch:translations/player_trigger_succes_display_loop

# Continue loop
data remove storage switch:temp copy[0]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value $(player)
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]

