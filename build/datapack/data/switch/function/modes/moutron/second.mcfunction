
#> switch:modes/moutron/second
#
# @within	switch:modes/moutron/calls/second
#

# Classic timer
scoreboard players add #moutron_seconds switch.data 1


# Start countdown
execute if score #moutron_seconds switch.data matches -5..0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
function switch:translations/modes_moutron_second

# Increase markers life_time
execute if score #moutron_seconds switch.data matches 0.. run scoreboard players add #life_time switch.data 3

# XP bar
function switch:modes/moutron/xp_bar

