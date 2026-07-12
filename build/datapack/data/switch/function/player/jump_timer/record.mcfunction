
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

# Insert the new time at the correct position (sets #rank) and congratulate the player
function switch:player/jump_timer/insert with storage switch:temp jt_input
playsound entity.player.levelup ambient @s
function switch:player/translations/jump_timer_record

