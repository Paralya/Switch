
#> switch:modes/_common/recap/show
#
# @within	switch:modes/capture_the_flag/process_end
#			switch:modes/glassrunner/end/process_end
#			switch:modes/rush_the_flag/process_end
#			switch:modes/rush_the_point/process_end
#			switch:modes/spectres_game/process_end
#

# A player who never scored has no value on the objective, which would leave them out of the ranking
scoreboard players add @a[tag=!detached] switch.temp.kills 0
scoreboard players add @a[tag=!detached] switch.temp.deaths 0
scoreboard players add @a[tag=!detached] switch.temp.points 0

# Without a point system, the kill count becomes the ranking key and the points column stays hidden
execute as @a[tag=!detached] unless score #recap_points switch.data matches 1 run scoreboard players operation @s switch.temp.points = @s switch.temp.kills

tag @a remove switch.temp.recap_done
function switch:translations/common/recap_header
execute if entity @a[tag=!detached] run function switch:modes/_common/recap/next

