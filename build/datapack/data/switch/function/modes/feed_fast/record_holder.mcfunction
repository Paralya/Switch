
#> switch:modes/feed_fast/record_holder
#
# @executed	as @a[tag=switch.temp.record,limit=1]
#
# @within	switch:modes/feed_fast/record_save [ as @a[tag=switch.temp.record,limit=1] ]
#

clear @s
loot replace entity @s hotbar.0 loot switch:get_username
data modify storage switch:records feed_fast.player set from entity @s Inventory[0].components."minecraft:profile".name
clear @s

