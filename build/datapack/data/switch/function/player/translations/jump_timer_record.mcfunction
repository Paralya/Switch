
#> switch:player/translations/jump_timer_record
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/record
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump terminé en ","color":"#2EFF8B"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"#FFE60A"},{"text":" ! Nouveau record personnel : ","color":"#2EFF8B"},{"text":"#","color":"#FFA600"},{"score":{"name":"#rank","objective":"switch.data"},"color":"#FFA600"},{"text":" du classement !","color":"#2EFF8B"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump completed in ","color":"#2EFF8B"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"#FFE60A"},{"text":"! New personal best: ","color":"#2EFF8B"},{"text":"#","color":"#FFA600"},{"score":{"name":"#rank","objective":"switch.data"},"color":"#FFA600"},{"text":" on the leaderboard!","color":"#2EFF8B"}]

