
# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
$data modify storage switch:temp Name set from storage switch:main minigames[{id:"$(id)"}].Name
#$say $(id) - $(points) - $(int).$(digits)% - $(players)
$tellraw @s [{"text":"➤ ","color":"aqua"},{"nbt":"Name","storage":"switch:temp","interpret":false,"color":"dark_aqua"},{"text":" avec un score de "},{"text":"$(int).$(digits)%","color":"yellow"}]

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:player/trigger/rating/display_loop with storage switch:temp copy[0]

