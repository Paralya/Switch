
#> switch:modes/fireblast/got_power_up
#
# @executed	as @a[tag=!detached,gamemode=!spectator] & at @s
#
# @within	switch:modes/fireblast/tick [ as @a[tag=!detached,gamemode=!spectator] & at @s ]
#

# Sugar: Speed 2 for 20s
execute if items entity @s container.* sugar[custom_data~{switch:{power_up:true}}] run effect give @s speed 20 1
execute if items entity @s container.* sugar[custom_data~{switch:{power_up:true}}] run playsound minecraft:entity.generic.drink player @s ~ ~ ~ 0.8 1.2

# Blaze Powder: faster reload for 20s (reduce cooldown by half)
execute if items entity @s container.* blaze_powder[custom_data~{switch:{power_up:true}}] run scoreboard players set @s switch.temp.reload_boost 400
execute if items entity @s container.* blaze_powder[custom_data~{switch:{power_up:true}}] run playsound minecraft:entity.blaze.ambient player @s ~ ~ ~ 0.8 1.2

# Rabbit Foot: Jump Boost 4 for 20s
execute if items entity @s container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run effect give @s jump_boost 20 3
execute if items entity @s container.* rabbit_foot[custom_data~{switch:{power_up:true}}] run playsound minecraft:entity.rabbit.ambient player @s ~ ~ ~ 0.8 1.2

# Tellraw messages
function switch:translations/modes_fireblast_got_power_up

# Remove the power-up item from inventory after applying effects
clear @s *[custom_data~{switch:{power_up:true}}]

