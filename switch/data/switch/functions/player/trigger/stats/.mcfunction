
# Tellraw
tellraw @s ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Voici vos statistiques :"}]
tellraw @s [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.victories"},"color":"yellow"},{"text":" victoires"}]

# Reset trigger
scoreboard players set @s switch.trigger.stats 0

