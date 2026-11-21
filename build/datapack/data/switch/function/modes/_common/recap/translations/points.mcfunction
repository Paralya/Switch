
#> switch:modes/_common/recap/translations/points
#
# @executed	as @a[tag=switch.temp.recap_tied,limit=1]
#
# @within	switch:modes/_common/recap/line
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"- ","color":"#6B788F"},{"selector":"@s"},{"text":" : ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.points"},"color":"#FFA600"},{"text":" points","color":"#AEBBD0"},{"text":", ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"#FF3347"},{"text":" kills","color":"#AEBBD0"},{"text":", ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.deaths"},"color":"#00E5FF"},{"text":" morts","color":"#AEBBD0"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"- ","color":"#6B788F"},{"selector":"@s"},{"text":" : ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.points"},"color":"#FFA600"},{"text":" points","color":"#AEBBD0"},{"text":", ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"#FF3347"},{"text":" kills","color":"#AEBBD0"},{"text":", ","color":"#6B788F"},{"score":{"name":"@s","objective":"switch.temp.deaths"},"color":"#00E5FF"},{"text":" deaths","color":"#AEBBD0"}]

