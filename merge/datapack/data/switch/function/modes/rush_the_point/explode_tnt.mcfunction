
kill @s
playsound switch:explosion ambient @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .5 .5 .5 1 10 force @a[distance=..50]
fill ~2 ~3 ~ ~-2 ~-3 ~ air replace #switch:rush_the_point/can_break
fill ~ ~3 ~2 ~ ~-3 ~-2 air replace #switch:rush_the_point/can_break
fill ~3 ~2 ~ ~-3 ~-2 ~ air replace #switch:rush_the_point/can_break
fill ~ ~2 ~3 ~ ~-2 ~-3 air replace #switch:rush_the_point/can_break
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #switch:rush_the_point/can_break
fill ~-2 ~ ~-3 ~2 ~ ~3 air replace #switch:rush_the_point/can_break
fill ~-3 ~ ~-2 ~3 ~ ~2 air replace #switch:rush_the_point/can_break

