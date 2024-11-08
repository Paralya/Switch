
#> switch:translations/modes_fireblast_death
#
# @within	switch:modes/fireblast/death
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#fireblast_seconds","objective":"switch.data"}},{"text":" secondes !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" died, survived "},{"score":{"name":"#fireblast_seconds","objective":"switch.data"}},{"text":" seconds!"}]

