
# Display
$tellraw @s [{"text":"➤ ","color":"gold"},{"text":"$(count)","color":"yellow"},{"text":" $(Name) dont "},{"text":"$(wins)","color":"yellow"},{"text":" victoires "},{"text":"($(winrate)%)","color":"green"}]

# Continue loop
data remove storage switch:temp sorted_stats[0]
execute if data storage switch:temp sorted_stats[0] run function switch:player/trigger/stats/display_loop with storage switch:temp sorted_stats[0]

