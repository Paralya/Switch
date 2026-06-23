
#> switch:player/trigger/succes/display_loop
#
# @within	switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
#			switch:player/trigger/succes/main with storage switch:temp copy[0]
#

# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
function switch:player/translations/trigger_succes_display_loop with storage switch:temp temp

# Continue loop
function switch:player/trigger/succes/display_continue with storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]

