
#> switch:translations/modes_kart_racer_restart_game
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}]
#
# @within	switch:modes/kart_racer/restart_game
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"\nLes joueurs ont votés pour changer de map !","color":"red"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"\nPlayers voted to change map!","color":"red"}]

