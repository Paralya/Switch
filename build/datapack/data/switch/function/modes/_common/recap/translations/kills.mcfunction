
#> switch:modes/_common/recap/translations/kills
#
# @executed	as @a[tag=switch.temp.recap_tied,limit=1]
#
# @within	switch:modes/_common/recap/line
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"- ","color":"#6B788F"},{"selector":"@s"},{"text":" : ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"#FF3347"},{"text":" kills","color":"#AEBBD0"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"- ","color":"#6B788F"},{"selector":"@s"},{"text":" : ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"#FF3347"},{"text":" kills","color":"#AEBBD0"}]

