
#> switch:modes/_common/recap/show
#
# @within	switch:modes/capture_the_flag/process_end
#			switch:modes/glassrunner/end/process_end
#			switch:modes/rush_the_flag/process_end
#			switch:modes/rush_the_point/process_end
#			switch:modes/spectres_game/process_end
#

# A player who never scored has no value on the objective, which would leave them out of the ranking
scoreboard players add @a[tag=!detached] switch.temp.points 0
scoreboard players add @a[tag=!detached] switch.temp.kills 0
scoreboard players add @a[tag=!detached] switch.temp.deaths 0
scoreboard players add @a[tag=!detached] switch.temp.damage 0

# Criteria counting in tenths are brought back to the unit the label announces
scoreboard players operation @a[tag=!detached] switch.temp.damage /= #10 switch.data

# The leftmost column of the layout is what the ranking sorts on
execute if score #recap_layout switch.data matches 0 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.kills
execute if score #recap_layout switch.data matches 1 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.points
execute if score #recap_layout switch.data matches 2 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.kills

tag @a remove switch.temp.recap_done
function switch:modes/_common/recap/translations/header
execute if entity @a[tag=!detached] run function switch:modes/_common/recap/next

