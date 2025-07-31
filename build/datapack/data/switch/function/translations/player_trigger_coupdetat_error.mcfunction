
#> switch:translations/player_trigger_coupdetat_error
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/coupdetat/error
#

# French
execute unless score #engine_state switch.data matches 3 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Aucune partie n'est en cours, veuillez attendre qu'un mini-jeu se lance."}]
execute if score #coupdetat switch.data matches 1 run tellraw @s[scores={switch.lang=0}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" Un coup d'état est déjà en cours ! Attendez qu'il se termine."}]

# English
execute unless score #engine_state switch.data matches 3 run tellraw @s[scores={switch.lang=1}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" No game is currently running, please wait for a minigame to start."}]
execute if score #coupdetat switch.data matches 1 run tellraw @s[scores={switch.lang=1}] [{"nbt":"ParalyaError","storage":"switch:main","interpret":true},{"text":" A coup d'état is already in progress! Wait for it to finish."}]

