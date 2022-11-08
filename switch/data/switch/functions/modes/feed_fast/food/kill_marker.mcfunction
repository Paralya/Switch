kill @e[tag=feed_fast.food_spawn_marker,limit=1]
scoreboard players remove #feed_fast.marker_count switch.data 1
execute if score #feed_fast.marker_count switch.data > #feed_fast.player_count switch.data run function switch:modes/feed_fast/food/kill_marker
