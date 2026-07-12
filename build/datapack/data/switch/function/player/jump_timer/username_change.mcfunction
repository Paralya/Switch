
#> switch:player/jump_timer/username_change
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/username_change/update_everything {username:"$(username)", old_username:"$(old_username)"}
#
# @args		username (string)
#			old_username (string)
#

# Move the best times of the old username to the new one (killed displays get resummoned refreshed)
$data remove storage switch:jumps green[{name:"$(username)"}]
$execute if data storage switch:jumps green[{name:"$(old_username)"}] run data modify storage switch:jumps green[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps green[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_green]
$data remove storage switch:jumps white[{name:"$(username)"}]
$execute if data storage switch:jumps white[{name:"$(old_username)"}] run data modify storage switch:jumps white[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps white[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_white]
$data remove storage switch:jumps blue[{name:"$(username)"}]
$execute if data storage switch:jumps blue[{name:"$(old_username)"}] run data modify storage switch:jumps blue[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps blue[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_blue]
$data remove storage switch:jumps yellow[{name:"$(username)"}]
$execute if data storage switch:jumps yellow[{name:"$(old_username)"}] run data modify storage switch:jumps yellow[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps yellow[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_yellow]
$data remove storage switch:jumps red[{name:"$(username)"}]
$execute if data storage switch:jumps red[{name:"$(old_username)"}] run data modify storage switch:jumps red[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps red[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_red]
$data remove storage switch:jumps brown[{name:"$(username)"}]
$execute if data storage switch:jumps brown[{name:"$(old_username)"}] run data modify storage switch:jumps brown[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps brown[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_brown]
$data remove storage switch:jumps purple[{name:"$(username)"}]
$execute if data storage switch:jumps purple[{name:"$(old_username)"}] run data modify storage switch:jumps purple[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps purple[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_purple]
$data remove storage switch:jumps dripstone[{name:"$(username)"}]
$execute if data storage switch:jumps dripstone[{name:"$(old_username)"}] run data modify storage switch:jumps dripstone[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps dripstone[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_dripstone]
$data remove storage switch:jumps pink[{name:"$(username)"}]
$execute if data storage switch:jumps pink[{name:"$(old_username)"}] run data modify storage switch:jumps pink[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps pink[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_pink]
$data remove storage switch:jumps bricks[{name:"$(username)"}]
$execute if data storage switch:jumps bricks[{name:"$(old_username)"}] run data modify storage switch:jumps bricks[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps bricks[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_bricks]
$data remove storage switch:jumps obsidian[{name:"$(username)"}]
$execute if data storage switch:jumps obsidian[{name:"$(old_username)"}] run data modify storage switch:jumps obsidian[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps obsidian[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_obsidian]
$data remove storage switch:jumps duality[{name:"$(username)"}]
$execute if data storage switch:jumps duality[{name:"$(old_username)"}] run data modify storage switch:jumps duality[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps duality[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_duality]
$data remove storage switch:jumps graviglitch[{name:"$(username)"}]
$execute if data storage switch:jumps graviglitch[{name:"$(old_username)"}] run data modify storage switch:jumps graviglitch[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:jumps graviglitch[{name:"$(username)"}] run kill @e[type=text_display,tag=switch.stat_display,tag=jump_graviglitch]

