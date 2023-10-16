
# Display
$tellraw @s [{"text":"➤ ","color":"gold"},{"text":"$(count)","color":"yellow"},{"text":" parties jouées de $(Name)"}]

# Continue loop
data remove storage switch:main sorted_stats[0]
execute if data storage switch:main sorted_stats[0] run function switch:player/trigger/stats/display_loop with storage switch:main sorted_stats[0]

