
#> switch:modes/_common/recap/next
#
# @within	switch:modes/_common/recap/show
#			switch:modes/_common/recap/next
#

# Print the best player still unlisted, ties broken by taking whichever the selector returns first
execute store result score #recap_left switch.data if entity @a[tag=!detached,tag=!switch.temp.recap_done]
scoreboard players set #recap_best switch.data -2147483648
scoreboard players operation #recap_best switch.data > @a[tag=!detached,tag=!switch.temp.recap_done] switch.temp.points
execute as @a[tag=!detached,tag=!switch.temp.recap_done] if score @s switch.temp.points = #recap_best switch.data run tag @s add switch.temp.recap_tied
execute as @a[tag=switch.temp.recap_tied,limit=1] run function switch:modes/_common/recap/line
tag @a remove switch.temp.recap_tied

# Recurse only while the list shrinks: a player the round failed to rank would loop forever
execute store result score #recap_now switch.data if entity @a[tag=!detached,tag=!switch.temp.recap_done]
execute if score #recap_now switch.data matches 1.. if score #recap_now switch.data < #recap_left switch.data run function switch:modes/_common/recap/next

