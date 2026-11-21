
#> switch:modes/castagne/second
#
# @within	switch:modes/castagne/calls/second
#

# Classic timer
scoreboard players add #castagne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/castagne/xp_bar
execute if score #castagne_seconds switch.data matches 15 in switch:game run gamerule minecraft:fall_damage true

# Actionbar
function switch:modes/_common/compute_mins_secs
function switch:translations/common/actionbar_time_pvp19

