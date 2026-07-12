
#> switch:player/jump_timer/insert
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/record with storage switch:temp jt_input
#			switch:player/jump_timer/admin/set_time with storage switch:temp jt_input
#
# @args		time (int)
#			jump (string)
#			player (string)
#			s (int)
#			d1 (int)
#			d2 (int)
#

# Remove the old entry of the player, then walk the sorted list to find the insertion position
$scoreboard players set #new_time switch.data $(time)
$data remove storage switch:jumps $(jump)[{name:"$(player)"}]
$data modify storage switch:temp jt_rest set from storage switch:jumps $(jump)
data modify storage switch:temp jt_new set value []
execute if data storage switch:temp jt_rest[0] run function switch:player/jump_timer/insert_loop

# Insert the new time at the found position (#rank), then append the remaining slower times
$data modify storage switch:temp jt_new append value {name:"$(player)",time:$(time),display:"$(s).$(d1)$(d2)s"}
execute store result score #rank switch.data if data storage switch:temp jt_new[]
data modify storage switch:temp jt_new append from storage switch:temp jt_rest[]
$data modify storage switch:jumps $(jump) set from storage switch:temp jt_new

# Kill the best times display to force a refresh
$execute as @e[type=text_display,tag=switch.stat_display,tag=jump_$(jump)] run kill @s

