summon marker 0 319 0 {Tags:["feed_fast.food_spawn_marker"]}
scoreboard players add #feed_fast.marker_count switch.data 1
execute if score #feed_fast.marker_count switch.data < #feed_fast.player_count switch.data run function switch:modes/feed_fast/setup/summon_marker
