
## Input macro: path = "jump_brown", label = "Ordre de complétion", mode = 4

# Get the array or value
$data modify storage switch:temp array set from storage switch:advancements $(adv_path)

# Summon the text display
$summon text_display ~ ~ ~ {billboard:"vertical",default_background:1b,alignment:"center",Tags:["$(path)","switch.stat_display"],text:'[{"text":"$(label)\\n","color":"green"},{"text":"#1 ","color":"gold"},{"nbt":"array[0].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#2 ","color":"gold"},{"nbt":"array[1].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#3 ","color":"gold"},{"nbt":"array[2].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#4 ","color":"gold"},{"nbt":"array[3].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#5 ","color":"gold"},{"nbt":"array[4].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#6 ","color":"gold"},{"nbt":"array[5].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#7 ","color":"gold"},{"nbt":"array[6].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#8 ","color":"gold"},{"nbt":"array[7].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#9 ","color":"gold"},{"nbt":"array[8].name","storage":"switch:temp","color":"yellow"},{"text":"\\n","color":"aqua"},{"text":"#10 ","color":"gold"},{"nbt":"array[9].name","storage":"switch:temp","color":"yellow"}]'}

# Advertise that the display is ready
$scoreboard players set #display_$(path) switch.data 1

