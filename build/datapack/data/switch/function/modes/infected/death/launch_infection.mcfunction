
#> switch:modes/infected/death/launch_infection
#
# @executed	as @r[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}]
#
# @within	switch:modes/infected/second_selector [ as @r[team=switch.temp.human,scores={switch.temp.dont_want_to_be_infected=0}] ]
#			switch:modes/infected/second_selector [ as @r[team=switch.temp.human] ]
#			switch:modes/infected/second_selector [ as @p[tag=switch.to_infect] ]
#			switch:modes/infected/advancements/entity_hurt_player/is_zombie_attacker
#

function switch:modes/infected/death/infection_second
effect give @s regeneration 10 255 true
effect give @s resistance 10 255 true
effect give @s blindness 10 255 true
effect give @s slowness 10 255 true

# Infection message if player is infected by another player
function switch:modes/infected/translations/death_launch_infection
execute unless score @s switch.temp.infection matches 2.. run scoreboard players add @p[tag=switch.temp] switch.temp.kills 1

