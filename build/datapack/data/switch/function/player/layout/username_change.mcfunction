
#> switch:player/layout/username_change
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/username_change/update_everything {username:"$(username)", old_username:"$(old_username)"}
#
# @args		username (string)
#			old_username (string)
#

$scoreboard players operation $(username) switch.layout.melee = $(old_username) switch.layout.melee
$scoreboard players operation $(username) switch.layout.axe = $(old_username) switch.layout.axe
$scoreboard players operation $(username) switch.layout.ranged = $(old_username) switch.layout.ranged
$scoreboard players operation $(username) switch.layout.ammo = $(old_username) switch.layout.ammo
$scoreboard players operation $(username) switch.layout.tool = $(old_username) switch.layout.tool
$scoreboard players operation $(username) switch.layout.blocks = $(old_username) switch.layout.blocks
$scoreboard players operation $(username) switch.layout.mobility = $(old_username) switch.layout.mobility
$scoreboard players operation $(username) switch.layout.heal = $(old_username) switch.layout.heal
$scoreboard players operation $(username) switch.layout.food = $(old_username) switch.layout.food
$scoreboard players operation $(username) switch.layout.explosive = $(old_username) switch.layout.explosive
$scoreboard players operation $(username) switch.layout.throwable = $(old_username) switch.layout.throwable
$scoreboard players operation $(username) switch.layout.special = $(old_username) switch.layout.special

