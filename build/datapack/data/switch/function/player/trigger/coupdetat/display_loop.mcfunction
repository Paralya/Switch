
#> switch:player/trigger/coupdetat/display_loop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/coupdetat/display with storage switch:temp copy[0]
#			switch:player/trigger/coupdetat/display_loop with storage switch:temp copy[0]
#
# @args		index_hundred (unknown)
#			name_fr (unknown)
#			name_en (unknown)
#

# Prepare the TextComponent for this minigame
$data modify storage switch:temp text_component set value [{"text":"X","color":"aqua","hover_event":{"action":"show_text","value":[]},"click_event":{"action":"run_command","command":"/trigger switch.trigger.coupdetat set $(index_hundred)"}},{"text":", ","color":"gray"}]

# Fill the gaps
$execute if score @s switch.lang matches 0 run data modify storage switch:temp text_component[0].text set value "$(name_fr)"
$execute if score @s switch.lang matches 1 run data modify storage switch:temp text_component[0].text set value "$(name_en)"
$execute if score @s switch.lang matches 0 run data modify storage switch:temp text_component[0].hover_event.value set value [{"text":"Dépensez 100","color":"gray"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" pour lancer un coup d'état vers ","color":"gray"},{"text":"$(name_fr)","color":"yellow"}]
$execute if score @s switch.lang matches 1 run data modify storage switch:temp text_component[0].hover_event.value set value [{"text":"Spend 100","color":"gray"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" to start a coup d'état for ","color":"gray"},{"text":"$(name_en)","color":"yellow"}]

# Alternate colors for better readability
scoreboard players add #alternate switch.data 1
execute if score #alternate switch.data matches 1 run data modify storage switch:temp text_component[0].color set value "dark_aqua"
execute if score #alternate switch.data matches 2 run data modify storage switch:temp text_component[0].color set value "aqua"
execute if score #alternate switch.data matches 2 run scoreboard players set #alternate switch.data 0

# Add the text component to the tellraw
data modify storage switch:temp tellraw append from storage switch:temp text_component

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:player/trigger/coupdetat/display_loop with storage switch:temp copy[0]

