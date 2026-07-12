
#> switch:stats/display/jump_times_summon
#
# @executed	positioned -8 81.5 -22
#
# @within	switch:stats/display/tick_jump_times {jump:"$(jump)",path:"$(path)",label:"$(label)",uuid:"$(uuid)"}
#
# @args		jump (string)
#			uuid (string)
#			path (string)
#			label (string)
#

## Input macro: jump = "brown", path = "jump_brown", label = "Best Times"

# Get the sorted best times list
$data modify storage switch:temp array set from storage switch:jumps $(jump)

# Summon the text display
$summon text_display ~ ~ ~ {UUID:uuid("$(uuid)"),billboard:"vertical",default_background:true,alignment:"center",Tags:["$(path)","switch.stat_display"],text:[{"text":"$(label)\n","color":"green"},{"text":"#1 ","color":"gold"},{"nbt":"array[0].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[0].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#2 ","color":"gold"},{"nbt":"array[1].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[1].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#3 ","color":"gold"},{"nbt":"array[2].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[2].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#4 ","color":"gold"},{"nbt":"array[3].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[3].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#5 ","color":"gold"},{"nbt":"array[4].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[4].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#6 ","color":"gold"},{"nbt":"array[5].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[5].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#7 ","color":"gold"},{"nbt":"array[6].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[6].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#8 ","color":"gold"},{"nbt":"array[7].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[7].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#9 ","color":"gold"},{"nbt":"array[8].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[8].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#10 ","color":"gold"},{"nbt":"array[9].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[9].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#11 ","color":"gold"},{"nbt":"array[10].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[10].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#12 ","color":"gold"},{"nbt":"array[11].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[11].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#13 ","color":"gold"},{"nbt":"array[12].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[12].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#14 ","color":"gold"},{"nbt":"array[13].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[13].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")\n","color":"aqua"},{"text":"#15 ","color":"gold"},{"nbt":"array[14].name","storage":"switch:temp","color":"yellow","interpret":true},{"text":" (","color":"aqua"},{"nbt":"array[14].display","storage":"switch:temp","color":"aqua","interpret":true},{"text":")","color":"aqua"}]}

# Advertise that the display is ready
$scoreboard players set #display_$(path) switch.data 1

