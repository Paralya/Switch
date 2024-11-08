
#> switch:modes/infected/joined
#
# @within	switch:modes/infected/calls/joined
#

gamemode adventure @s
execute if score #reconnect switch.data matches 0 if score #infected_seconds switch.data matches ..-1 run function switch:modes/infected/death/early_respawn
execute if score #reconnect switch.data matches 0 if score #infected_seconds switch.data matches 0.. run scoreboard players set @s switch.temp.original_zombie 1
execute if score #infected_seconds switch.data matches 0.. run function switch:modes/infected/death/zombie_spawn

