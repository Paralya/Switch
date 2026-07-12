
#> switch:modes/moutron/summoned_marker
#
# @executed	at @s & positioned ~ ~.5 ~
#
# @within	switch:modes/moutron/summon_marker
#

# Add tag, set color, and remember its owner id for the kill detection
tag @s add switch.moutron_marker
scoreboard players operation @s switch.temp.color = #color switch.data
scoreboard players operation @s switch.id = #owner_id switch.id

