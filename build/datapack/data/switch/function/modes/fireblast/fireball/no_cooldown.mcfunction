
#> switch:modes/fireblast/fireball/no_cooldown
#
# @executed	as @a[tag=!detached,gamemode=!spectator,scores={switch.right_click=1..},nbt={SelectedItem:{components:{}}}] & at @s
#
# @within	switch:modes/fireblast/tick [ as @a[tag=!detached,gamemode=!spectator,scores={switch.right_click=1..},nbt={SelectedItem:{components:{}}}] & at @s ]
#

# Playsound
playsound entity.villager.no ambient @s

# Convert ticks to seconds
scoreboard players operation #seconds switch.temp.cooldown = @s switch.temp.cooldown
scoreboard players operation #seconds switch.temp.cooldown /= #20 switch.data
scoreboard players operation #digits switch.temp.cooldown = @s switch.temp.cooldown
scoreboard players operation #digits switch.temp.cooldown %= #20 switch.data
scoreboard players operation #digits switch.temp.cooldown /= #2 switch.data

# Tellraw
function switch:translations/modes_fireblast_fireball_no_cooldown

