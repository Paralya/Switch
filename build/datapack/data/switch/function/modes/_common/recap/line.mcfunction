
#> switch:modes/_common/recap/line
#
# @executed	as @a[tag=switch.temp.recap_tied,limit=1]
#
# @within	switch:modes/_common/recap/next [ as @a[tag=switch.temp.recap_tied,limit=1] ]
#

tag @s add switch.temp.recap_done
execute if score #recap_layout switch.data matches 0 run function switch:modes/_common/recap/translations/kills
execute if score #recap_layout switch.data matches 1 run function switch:modes/_common/recap/translations/points
execute if score #recap_layout switch.data matches 2 run function switch:modes/_common/recap/translations/damage

