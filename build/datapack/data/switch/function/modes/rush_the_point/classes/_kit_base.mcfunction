
#> switch:modes/rush_the_point/classes/_kit_base
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/archer
#			switch:modes/rush_the_point/classes/builder
#			switch:modes/rush_the_point/classes/destroyer
#

function switch:modes/rush_the_point/classes/_common

function switch:modes/rush_the_point/classes/_armor

item replace entity @s weapon.offhand with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64

