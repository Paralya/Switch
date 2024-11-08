
#> switch:modes/infected/death/launch_infection
#
# @within	switch:modes/infected/second_selector
#			switch:modes/infected/advancements/entity_hurt_player_confirm
#

function switch:modes/infected/death/infection_second
effect give @s regeneration 10 255 true
effect give @s resistance 10 255 true
effect give @s blindness 10 255 true
effect give @s slowness 10 255 true

# Infection message if player is infected by another player
function switch:translations/modes_infected_death_launch_infection
execute unless score @s switch.temp.infection matches 2.. run scoreboard players add @p[tag=switch.temp] switch.temp.kills 1

