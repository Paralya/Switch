
#> switch:player/translations/jump_timer_record
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/record
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump terminé en ","color":"green"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"yellow"},{"text":" ! Nouveau record personnel : ","color":"green"},{"text":"#","color":"gold"},{"score":{"name":"#rank","objective":"switch.data"},"color":"gold"},{"text":" du classement !","color":"green"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump completed in ","color":"green"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"yellow"},{"text":"! New personal best: ","color":"green"},{"text":"#","color":"gold"},{"score":{"name":"#rank","objective":"switch.data"},"color":"gold"},{"text":" on the leaderboard!","color":"green"}]

