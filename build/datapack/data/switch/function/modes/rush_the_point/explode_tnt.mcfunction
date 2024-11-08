
#> switch:modes/rush_the_point/explode_tnt
#
# @within	switch:modes/rush_the_point/tick_common
#

kill @s
summon creeper ~ ~ ~ {Fuse:0s,ignited:true}
fill ~2 ~3 ~ ~-2 ~-3 ~ air replace #switch:rush_the_point/can_break
fill ~ ~3 ~2 ~ ~-3 ~-2 air replace #switch:rush_the_point/can_break
fill ~3 ~2 ~ ~-3 ~-2 ~ air replace #switch:rush_the_point/can_break
fill ~ ~2 ~3 ~ ~-2 ~-3 air replace #switch:rush_the_point/can_break
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #switch:rush_the_point/can_break
fill ~-2 ~ ~-3 ~2 ~ ~3 air replace #switch:rush_the_point/can_break
fill ~-3 ~ ~-2 ~3 ~ ~2 air replace #switch:rush_the_point/can_break

