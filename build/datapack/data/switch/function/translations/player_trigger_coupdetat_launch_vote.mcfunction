
#> switch:translations/player_trigger_coupdetat_launch_vote
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/coupdetat/launch_vote
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true,"click_event":{"action":"run_command","command":"/trigger switch.coupdetat_vote set 1"}},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" souhaite faire un coup d'État pour lancer une partie de "},{"nbt":"coupdetat.name_fr","storage":"switch:main","color":"yellow"},{"text":" ! Cliquez [ici] si vous le soutenez dans cet acte (requiert 50% des votes)\n"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true,"click_event":{"action":"run_command","command":"/trigger switch.coupdetat_vote set 1"}},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" wants to stage a coup d'état to launch a game of "},{"nbt":"coupdetat.name_en","storage":"switch:main","color":"yellow"},{"text":" ! Click [here] if you support them in this act (requires 50% of votes)\n"}]

