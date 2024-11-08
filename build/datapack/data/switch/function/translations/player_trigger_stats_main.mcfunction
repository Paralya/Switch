
#> switch:translations/player_trigger_stats_main
#
# @within	switch:player/trigger/stats/main with storage switch:main input
#

# French
execute if data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Voici vos statistiques :"}]
$execute unless data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Voici les statistiques de $(player) :"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"\n➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"gold"},{"text":" victoires au total"}]

# English
execute if data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Here are your statistics:"}]
$execute unless data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Here are $(player)'s statistics:"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"\n➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"gold"},{"text":" total wins"}]

