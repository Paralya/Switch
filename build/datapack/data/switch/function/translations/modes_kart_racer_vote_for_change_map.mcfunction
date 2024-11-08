
#> switch:translations/modes_kart_racer_vote_for_change_map
#
# @within	switch:modes/kart_racer/vote_for_change_map
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" a voté pour changer de map ["},{"score":{"name":"#votes","objective":"switch.data"},"color":"aqua"},{"text":"/"},{"score":{"name":"#votes_max","objective":"switch.data"},"color":"aqua"},{"text":"]"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" voted to change map ["},{"score":{"name":"#votes","objective":"switch.data"},"color":"aqua"},{"text":"/"},{"score":{"name":"#votes_max","objective":"switch.data"},"color":"aqua"},{"text":"]"}]

