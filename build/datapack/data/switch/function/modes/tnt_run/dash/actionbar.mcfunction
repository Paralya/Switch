
#> switch:modes/tnt_run/dash/actionbar
#
# @executed	as @a[tag=!detached,gamemode=adventure]
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure] ]
#

# French
execute if entity @s[scores={switch.lang=0}] run title @s actionbar [{"text":"⚡ Dash : ","color":"#00E5FF"},{"score":{"name":"@s","objective":"switch.temp.dashes"},"color":"#FFE60A"},{"text":"   ⛏ Blocs : ","color":"#AEBBD0"},{"score":{"name":"@s","objective":"switch.temp.blocks"},"color":"#FFE60A"}]

# English
execute if entity @s[scores={switch.lang=1}] run title @s actionbar [{"text":"⚡ Dash: ","color":"#00E5FF"},{"score":{"name":"@s","objective":"switch.temp.dashes"},"color":"#FFE60A"},{"text":"   ⛏ Blocks: ","color":"#AEBBD0"},{"score":{"name":"@s","objective":"switch.temp.blocks"},"color":"#FFE60A"}]

