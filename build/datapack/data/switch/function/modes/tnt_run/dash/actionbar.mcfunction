
#> switch:modes/tnt_run/dash/actionbar
#
# @executed	as @a[tag=!detached,gamemode=adventure]
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure] ]
#

# French
execute if entity @s[scores={switch.lang=0}] run title @s actionbar [{"text":"⚡ Dash : ","color":"aqua"},{"score":{"name":"@s","objective":"switch.temp.dashes"},"color":"yellow"},{"text":"   ⛏ Blocs : ","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.blocks"},"color":"yellow"}]

# English
execute if entity @s[scores={switch.lang=1}] run title @s actionbar [{"text":"⚡ Dash: ","color":"aqua"},{"score":{"name":"@s","objective":"switch.temp.dashes"},"color":"yellow"},{"text":"   ⛏ Blocks: ","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.blocks"},"color":"yellow"}]

