
#> switch:player/translations/jump_timer_no_record
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/record
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump terminé en ","color":"gray"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"yellow"},{"text":" (record personnel : ","color":"gray"},{"nbt":"jt_input.old_display","storage":"switch:temp","interpret":true,"color":"yellow"},{"text":")","color":"gray"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump completed in ","color":"gray"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"yellow"},{"text":" (personal best: ","color":"gray"},{"nbt":"jt_input.old_display","storage":"switch:temp","interpret":true,"color":"yellow"},{"text":")","color":"gray"}]

