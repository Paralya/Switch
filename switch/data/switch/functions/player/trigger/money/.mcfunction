
tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" Vous avez un total de "},{"score":{"name":"@s","objective":"switch.money"},"color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" !"}]
scoreboard players set @s switch.trigger.money 0

