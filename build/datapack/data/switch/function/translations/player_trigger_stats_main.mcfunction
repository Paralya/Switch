
#> switch:translations/player_trigger_stats_main
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/stats/main with storage switch:main input
#
# @args		player (unknown)
#

# French
execute if data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Voici vos statistiques :\n"}]
$execute unless data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Voici les statistiques de $(player) :\n"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.stats.kills"},"color":"gold"},{"text":" kills"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.stats.deaths"},"color":"gold"},{"text":" morts"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.advancements"},"color":"gold"},{"text":" succès débloqués"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Total de parties jouées : ","color":"gray"},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"white"},{"text":"\nTotal de parties gagnées : ","color":"gray"},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"white"},{"text":"\nPourcentage de victoire : ","color":"gray"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"white"},{"text":"%","color":"white"}]}},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"gold"},{"text":" parties jouées","underlined":true},{"text":" dont "},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"gold"},{"text":" victoires "},{"text":"(","color":"green"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"green"},{"text":"%)","color":"green"}]

# English
execute if data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Here are your statistics:\n"}]
$execute unless data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Here are $(player)'s statistics:\n"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.stats.kills"},"color":"gold"},{"text":" kills"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.stats.deaths"},"color":"gold"},{"text":" deaths"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"yellow"},{"score":{"name":"$(player)","objective":"switch.advancements"},"color":"gold"},{"text":" advancements unlocked"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Total games played: ","color":"gray"},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"white"},{"text":"\nTotal games won: ","color":"gray"},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"white"},{"text":"\nWin percentage: ","color":"gray"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"white"},{"text":"%","color":"white"}]}},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"gold"},{"text":" games played","underlined":true},{"text":" including "},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"gold"},{"text":" wins "},{"text":"(","color":"green"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"green"},{"text":"%)","color":"green"}]

