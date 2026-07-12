
#> switch:player/jump_timer/record
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/jump_timer/finish with storage switch:temp jt_input
#
# @args		s (int)
#			d1 (int)
#			d2 (int)
#			time (int)
#			jump (string)
#			player (string)
#

# Build the display string of the new time
$data modify storage switch:temp jt_input.display set value "$(s).$(d1)$(d2)s"

# Get the current best time of the player (if any)
$scoreboard players set #new_time switch.data $(time)
scoreboard players set #old_time switch.data 2147483647
$execute if data storage switch:jumps $(jump)[{name:"$(player)"}] store result score #old_time switch.data run data get storage switch:jumps $(jump)[{name:"$(player)"}].time

# If the new time is not better, keep the old one and stop here
$execute if score #new_time switch.data >= #old_time switch.data run data modify storage switch:temp jt_input.old_display set from storage switch:jumps $(jump)[{name:"$(player)"}].display
execute if score #new_time switch.data >= #old_time switch.data run playsound block.note_block.pling ambient @s
execute if score #new_time switch.data >= #old_time switch.data run return run function switch:player/translations/jump_timer_no_record

# Remove the old entry of the player, then walk the sorted list to find the insertion position
$data remove storage switch:jumps $(jump)[{name:"$(player)"}]
$data modify storage switch:temp jt_rest set from storage switch:jumps $(jump)
data modify storage switch:temp jt_new set value []
execute if data storage switch:temp jt_rest[0] run function switch:player/jump_timer/insert_loop

# Insert the new time at the found position, then append the remaining slower times
$data modify storage switch:temp jt_new append value {name:"$(player)",time:$(time),display:"$(s).$(d1)$(d2)s"}
execute store result score #rank switch.data if data storage switch:temp jt_new[]
data modify storage switch:temp jt_new append from storage switch:temp jt_rest[]
$data modify storage switch:jumps $(jump) set from storage switch:temp jt_new

# Kill the best times display to force a refresh, then congratulate the player
$execute as @e[type=text_display,tag=switch.stat_display,tag=jump_$(jump)] run kill @s
playsound entity.player.levelup ambient @s
function switch:player/translations/jump_timer_record

