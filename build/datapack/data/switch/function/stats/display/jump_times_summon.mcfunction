
#> switch:stats/display/jump_times_summon
#
# @executed	positioned -8 81.5 -22
#
# @within	switch:lobby/second {jump:"green",path:"jump_green",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000001"} [ positioned -8 81.5 -22 ]
#			switch:lobby/second {jump:"white",path:"jump_white",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000002"} [ positioned 22 88.5 0 ]
#			switch:lobby/second {jump:"blue",path:"jump_blue",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000003"} [ positioned 0 81.5 -39 ]
#			switch:lobby/second {jump:"dripstone",path:"jump_dripstone",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000004"} [ positioned 33 83.5 47 ]
#			switch:lobby/second {jump:"yellow",path:"jump_yellow",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000005"} [ positioned 63 88.5 10 ]
#			switch:lobby/second {jump:"red",path:"jump_red",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000006"} [ positioned -26 91.5 15 ]
#			switch:lobby/second {jump:"duality",path:"jump_duality",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000007"} [ positioned 44 86.5 82 ]
#			switch:lobby/second {jump:"pink",path:"jump_pink",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000008"} [ positioned -44 93.5 27 ]
#			switch:lobby/second {jump:"brown",path:"jump_brown",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000009"} [ positioned -20 75.5 -78 ]
#			switch:lobby/second {jump:"purple",path:"jump_purple",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000010"} [ positioned -42 94.5 32 ]
#			switch:lobby/second {jump:"bricks",path:"jump_bricks",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000011"} [ positioned -123 79.5 -11 ]
#			switch:lobby/second {jump:"graviglitch",path:"jump_graviglitch",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000012"} [ positioned -83 100.5 71 ]
#			switch:lobby/second {jump:"obsidian",path:"jump_obsidian",label:"Best Times",uuid:"20180612-2024-2025-2026-201000000013"} [ positioned 36 83.5 -73 ]
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

