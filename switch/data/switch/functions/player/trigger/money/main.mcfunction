

tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez un total de "},{"score":{"name":"@s","objective":"switch.money"}},{"text":" coins !"}]

tellraw @s ""

scoreboard players set @s switch.trigger.help 0
