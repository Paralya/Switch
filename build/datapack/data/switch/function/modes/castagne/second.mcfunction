
#> switch:modes/castagne/second
#
# @within	switch:modes/castagne/calls/second
#

# Classic timer
scoreboard players add #castagne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/castagne/xp_bar

# Actionbar
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
function switch:translations/modes_castagne_second

