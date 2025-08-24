
#> switch:player/trigger/attach/main
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/main
#

scoreboard players set @s switch.trigger.attach 0
execute if score #can_attach switch.data matches 1 if score @s switch.lang matches 0.. run function switch:player/trigger/attach/real_attach
execute if score @s switch.lang matches 0.. run function switch:translations/player_trigger_attach_

