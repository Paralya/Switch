
#> switch:modes/moutron/kill_kart
#
# @within	switch:modes/moutron/tick
#

# Dismount passengers and kill them
execute on passengers run function switch:modes/moutron/death

# Kill the sheep
tp @s 0 -10000 0
kill @s

