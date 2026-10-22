
#> switch:maps/survival/rush_the_point_1/regeneration_on_marker
#
# @within	switch:maps/survival/rush_the_point_1/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_rush_the_point_1_y switch.data

execute at @s in switch:game run particle cloud -1992 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1999 ~ 4001 -1985 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1978 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1985 ~ 4001 -1971 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1964 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1971 ~ 4001 -1957 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1950 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1957 ~ 4001 -1942 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1935 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1942 ~ 4001 -1928 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1921 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1928 ~ 4001 -1914 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1907 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1914 ~ 4001 -1900 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1893 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1900 ~ 4001 -1886 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1879 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1886 ~ 4001 -1872 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1865 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1872 ~ 4001 -1858 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1851 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1858 ~ 4001 -1843 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1836 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1843 ~ 4001 -1829 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1822 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1829 ~ 4001 -1815 ~ 4199 air replace #switch:rush_the_point/can_break

execute at @s in switch:game run particle cloud -1808 ~1 4100 7 0 49 0 18 force
execute at @s in switch:game run fill -1815 ~ 4001 -1801 ~ 4199 air replace #switch:rush_the_point/can_break

execute in switch:game run kill @e[type=item,x=-1900,y=0,z=4100,distance=..1000]
scoreboard players add #rg_rush_the_point_1_y switch.data 1

kill @s

