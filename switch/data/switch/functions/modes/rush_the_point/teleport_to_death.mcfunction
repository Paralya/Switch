
scoreboard players operation #player_id switch.temp.id = @s switch.temp.id
data modify entity @e[type=!player,predicate=switch:has_same_temp_id,limit=1] Tags set value ["switch.temp.player"]
function switch:modes/rush_the_point/teleport_to_spawn

