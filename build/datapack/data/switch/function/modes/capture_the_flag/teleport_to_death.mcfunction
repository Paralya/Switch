
#> switch:modes/capture_the_flag/teleport_to_death
#
# @executed	as @e[type=player,tag=switch.to_tp]
#
# @within	switch:modes/capture_the_flag/tick [ as @e[type=player,tag=switch.to_tp] ]
#

scoreboard players operation #player_id switch.id = @s switch.id
data modify entity @e[type=!player,predicate=switch:has_same_id,limit=1] Tags set value ["switch.temp.player"]
function switch:modes/capture_the_flag/teleport_to_spawn

