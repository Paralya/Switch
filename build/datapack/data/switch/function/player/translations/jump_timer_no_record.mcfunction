
#> switch:player/translations/jump_timer_no_record
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/record
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump terminé en ","color":"#AEBBD0"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"#FFE60A"},{"text":" (record personnel : ","color":"#AEBBD0"},{"nbt":"jt_input.old_display","storage":"switch:temp","interpret":true,"color":"#FFE60A"},{"text":")","color":"#AEBBD0"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Jump completed in ","color":"#AEBBD0"},{"nbt":"jt_input.display","storage":"switch:temp","interpret":true,"color":"#FFE60A"},{"text":" (personal best: ","color":"#AEBBD0"},{"nbt":"jt_input.old_display","storage":"switch:temp","interpret":true,"color":"#FFE60A"},{"text":")","color":"#AEBBD0"}]

