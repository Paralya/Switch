
#> switch:modes/_common/recap/translations/damage
#
# @executed	as @a[tag=switch.temp.recap_tied,limit=1]
#
# @within	switch:modes/_common/recap/line
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"},{"text":" : ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"red"},{"text":" kills","color":"gray"},{"text":", ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.deaths"},"color":"aqua"},{"text":" morts","color":"gray"},{"text":", ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.damage"},"color":"light_purple"},{"text":" dégâts","color":"gray"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"},{"text":" : ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"red"},{"text":" kills","color":"gray"},{"text":", ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.deaths"},"color":"aqua"},{"text":" deaths","color":"gray"},{"text":", ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.damage"},"color":"light_purple"},{"text":" damage","color":"gray"}]

