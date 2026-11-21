
#> switch:player/translations/trigger_stats_main
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
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#FFE60A"},{"score":{"name":"$(player)","objective":"switch.stats.kills"},"color":"#FFA600"},{"text":" kills"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#FFE60A"},{"score":{"name":"$(player)","objective":"switch.stats.deaths"},"color":"#FFA600"},{"text":" morts"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#FFE60A"},{"score":{"name":"$(player)","objective":"switch.advancements"},"color":"#FFA600"},{"text":" succès débloqués"}]
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#FFE60A","hover_event":{"action":"show_text","value":[{"text":"Total de parties jouées : ","color":"#AEBBD0"},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"#E4ECF7"},{"text":"\nTotal de parties gagnées : ","color":"#AEBBD0"},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"#E4ECF7"},{"text":"\nPourcentage de victoire : ","color":"#AEBBD0"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"#E4ECF7"},{"text":"%","color":"#E4ECF7"}]}},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"#FFA600"},{"text":" parties jouées","underlined":true},{"text":" dont "},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"#FFA600"},{"text":" victoires "},{"text":"(","color":"#2EFF8B"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"#2EFF8B"},{"text":"%)","color":"#2EFF8B"}]

# English
execute if data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Here are your statistics:\n"}]
$execute unless data storage switch:main input{player:"@s"} run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Here are $(player)'s statistics:\n"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#FFE60A"},{"score":{"name":"$(player)","objective":"switch.stats.kills"},"color":"#FFA600"},{"text":" kills"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#FFE60A"},{"score":{"name":"$(player)","objective":"switch.stats.deaths"},"color":"#FFA600"},{"text":" deaths"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#FFE60A"},{"score":{"name":"$(player)","objective":"switch.advancements"},"color":"#FFA600"},{"text":" advancements unlocked"}]
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#FFE60A","hover_event":{"action":"show_text","value":[{"text":"Total games played: ","color":"#AEBBD0"},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"#E4ECF7"},{"text":"\nTotal games won: ","color":"#AEBBD0"},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"#E4ECF7"},{"text":"\nWin percentage: ","color":"#AEBBD0"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"#E4ECF7"},{"text":"%","color":"#E4ECF7"}]}},{"score":{"name":"$(player)","objective":"switch.stats.played"},"color":"#FFA600"},{"text":" games played","underlined":true},{"text":" including "},{"score":{"name":"$(player)","objective":"switch.stats.wins"},"color":"#FFA600"},{"text":" wins "},{"text":"(","color":"#2EFF8B"},{"score":{"name":"$(player)","objective":"switch.stats.winrate"},"color":"#2EFF8B"},{"text":"%)","color":"#2EFF8B"}]

