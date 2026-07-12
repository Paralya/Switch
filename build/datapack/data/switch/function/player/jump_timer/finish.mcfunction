
#> switch:player/jump_timer/finish
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick_detach {jump:"green"}
#			switch:player/tick_detach {jump:"white"}
#			switch:player/tick_detach {jump:"blue"}
#			switch:player/tick_detach {jump:"yellow"}
#			switch:player/tick_detach {jump:"red"}
#			switch:player/tick_detach {jump:"brown"}
#			switch:player/tick_detach {jump:"purple"}
#			switch:player/tick_detach {jump:"dripstone"}
#			switch:player/tick_detach {jump:"pink"}
#			switch:player/tick_detach {jump:"bricks"}
#			switch:player/tick_detach {jump:"obsidian"}
#			switch:player/tick_detach {jump:"graviglitch"}
#			switch:player/tick_detach {jump:"duality"}
#
# @args		jump (string)
#

# Grant the jump completion advancement
$advancement grant @s only switch:visible/jump_$(jump)

# Stop the timer (querying the exact final time) and compute the time display digits
function switch:player/jump_timer/query
scoreboard players operation #jump_time switch.data = @s switch.jump_timer
function switch:player/jump_timer/actionbar
function switch:player/jump_timer/cancel
function switch:player/jump_timer/compute_display

# Get the username of the player
setblock 0 11 0 air
setblock 0 11 0 yellow_shulker_box
loot insert 0 11 0 loot switch:get_username
data modify storage switch:temp jt_input set value {jump:"",player:"",time:0,s:0,d1:0,d2:0}
$data modify storage switch:temp jt_input.jump set value "$(jump)"
data modify storage switch:temp jt_input.player set from block 0 11 0 Items[0].components."minecraft:profile".name
setblock 0 11 0 air

# Fill the time values and update the leaderboard
execute store result storage switch:temp jt_input.time int 1 run scoreboard players get #jump_time switch.data
execute store result storage switch:temp jt_input.s int 1 run scoreboard players get #secs switch.data
execute store result storage switch:temp jt_input.d1 int 1 run scoreboard players get #d1 switch.data
execute store result storage switch:temp jt_input.d2 int 1 run scoreboard players get #d2 switch.data
function switch:player/jump_timer/record with storage switch:temp jt_input

