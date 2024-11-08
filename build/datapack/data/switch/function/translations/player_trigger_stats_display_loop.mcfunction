
#> switch:translations/player_trigger_stats_display_loop
#
# @within	switch:player/trigger/stats/display_loop with storage switch:temp sorted_stats[0]
#

# French
$tellraw @s[scores={switch.lang=0}] [{"text":"➤ ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Total de parties jouées : ","color":"gray"},{"text":"$(count)\n","color":"white"},{"text":"Total de parties gagnées : "},{"text":"$(wins)\n","color":"white"},{"text":"Pourcentage de victoire : "},{"text":"$(winrate)%\n","color":"white"}]}},{"text":"$(count) ","color":"yellow"},{"text":"$(Name)","underlined":true},{"text":" dont "},{"text":"$(wins)","color":"yellow"},{"text":" victoires "},{"text":"($(winrate)%)","color":"green"}]

# English
$tellraw @s[scores={switch.lang=1}] [{"text":"➤ ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Total games played: ","color":"gray"},{"text":"$(count)\n","color":"white"},{"text":"Total games won: "},{"text":"$(wins)\n","color":"white"},{"text":"Win percentage: "},{"text":"$(winrate)%\n","color":"white"}]}},{"text":"$(count) ","color":"yellow"},{"text":"$(Name)","underlined":true},{"text":" including "},{"text":"$(wins)","color":"yellow"},{"text":" wins "},{"text":"($(winrate)%)","color":"green"}]

