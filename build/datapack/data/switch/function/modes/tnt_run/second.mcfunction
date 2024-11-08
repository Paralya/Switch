
#> switch:modes/tnt_run/second
#
# @within	switch:modes/tnt_run/calls/second
#

# Classic timer
scoreboard players add #tnt_run_seconds switch.data 1
function switch:modes/tnt_run/xp_bar

# Start countdown
execute if score #tnt_run_seconds switch.data matches -5..0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
function switch:translations/modes_tnt_run_second

