
#> switch:modes/_common/recap/show
#
# @within	switch:modes/capture_the_flag/process_end
#			switch:modes/cigogne/process_end
#			switch:modes/glassrunner/end/blue
#			switch:modes/glassrunner/end/null
#			switch:modes/glassrunner/end/red
#			switch:modes/layers_2_teams/tick
#			switch:modes/layers_4_teams/tick
#			switch:modes/pillars_of_fortune/process_end
#			switch:modes/protect_the_king/detect_end
#			switch:modes/rush_the_flag/process_end
#			switch:modes/rush_the_point/process_end
#			switch:modes/spectres_game/detect_end
#

# A player who never scored has no value on the objective, which would leave them out of the ranking
scoreboard players add @a[tag=!detached] switch.temp.points 0
scoreboard players add @a[tag=!detached] switch.temp.kills 0
scoreboard players add @a[tag=!detached] switch.temp.deaths 0
scoreboard players add @a[tag=!detached] switch.temp.damage 0
scoreboard players add @a[tag=!detached] switch.temp.mobs 0
scoreboard players add @a[tag=!detached] switch.temp.obsidian 0

# Criteria counting in tenths are brought back to the unit the label announces
scoreboard players operation @a[tag=!detached] switch.temp.damage /= #10 switch.data

# The leftmost column of the layout is what the ranking sorts on
execute if score #recap_layout switch.data matches 0 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.kills
execute if score #recap_layout switch.data matches 1 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.kills
execute if score #recap_layout switch.data matches 2 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.kills
execute if score #recap_layout switch.data matches 3 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.points
execute if score #recap_layout switch.data matches 4 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.kills
execute if score #recap_layout switch.data matches 5 as @a[tag=!detached] run scoreboard players operation @s switch.temp.recap_rank = @s switch.temp.kills

tag @a remove switch.temp.recap_done
# A player with nothing on any column of the layout tells nothing, so they are left out
execute if score #recap_layout switch.data matches 0 run tag @a[scores={switch.temp.kills=..0}] add switch.temp.recap_done
execute if score #recap_layout switch.data matches 1 run tag @a[scores={switch.temp.kills=..0,switch.temp.mobs=..0}] add switch.temp.recap_done
execute if score #recap_layout switch.data matches 2 run tag @a[scores={switch.temp.kills=..0,switch.temp.deaths=..0}] add switch.temp.recap_done
execute if score #recap_layout switch.data matches 3 run tag @a[scores={switch.temp.points=..0,switch.temp.kills=..0,switch.temp.deaths=..0}] add switch.temp.recap_done
execute if score #recap_layout switch.data matches 4 run tag @a[scores={switch.temp.kills=..0,switch.temp.damage=..0}] add switch.temp.recap_done
execute if score #recap_layout switch.data matches 5 run tag @a[scores={switch.temp.kills=..0,switch.temp.damage=..0,switch.temp.obsidian=..0}] add switch.temp.recap_done
function switch:modes/_common/recap/translations/header
execute if entity @a[tag=!detached] run function switch:modes/_common/recap/next

