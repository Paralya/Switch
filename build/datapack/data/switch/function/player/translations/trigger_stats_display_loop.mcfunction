
#> switch:player/translations/trigger_stats_display_loop
#
# @within	switch:player/trigger/stats/display_loop with storage switch:temp sorted_stats[0]
#
# @args		count (unknown)
#			wins (unknown)
#			winrate (unknown)
#			name_fr (unknown)
#			name_en (unknown)
#

# French
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"#FFA600","hover_event":{"action":"show_text","value":[{"text":"Total de parties jouées : ","color":"#AEBBD0"},{"text":"$(count)\n","color":"#E4ECF7"},{"text":"Total de parties gagnées : "},{"text":"$(wins)\n","color":"#E4ECF7"},{"text":"Pourcentage de victoire : "},{"text":"$(winrate)%\n","color":"#E4ECF7"}]}},{"text":"$(count) ","color":"#FFE60A"},{"text":"$(name_fr)","underlined":true},{"text":" dont "},{"text":"$(wins)","color":"#FFE60A"},{"text":" victoires "},{"text":"($(winrate)%)","color":"#2EFF8B"}]

# English
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"#FFA600","hover_event":{"action":"show_text","value":[{"text":"Total games played: ","color":"#AEBBD0"},{"text":"$(count)\n","color":"#E4ECF7"},{"text":"Total games won: "},{"text":"$(wins)\n","color":"#E4ECF7"},{"text":"Win percentage: "},{"text":"$(winrate)%\n","color":"#E4ECF7"}]}},{"text":"$(count) ","color":"#FFE60A"},{"text":"$(name_en)","underlined":true},{"text":" including "},{"text":"$(wins)","color":"#FFE60A"},{"text":" wins "},{"text":"($(winrate)%)","color":"#2EFF8B"}]

