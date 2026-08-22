
#> switch:modes/_common/recap/line
#
# @executed	as @a[tag=switch.temp.recap_tied,limit=1]
#
# @within	switch:modes/_common/recap/next [ as @a[tag=switch.temp.recap_tied,limit=1] ]
#

tag @s add switch.temp.recap_done
execute if score #recap_points switch.data matches 1 run function switch:translations/common/recap_line_points
execute unless score #recap_points switch.data matches 1 run function switch:translations/common/recap_line

