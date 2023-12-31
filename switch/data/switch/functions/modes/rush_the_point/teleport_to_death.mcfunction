
scoreboard players operation #player_id switch.id = @s switch.id
data modify entity @e[type=!player,predicate=switch:has_same_id,limit=1] Tags set value ["switch.temp.player"]
function switch:modes/rush_the_point/teleport_to_spawn

