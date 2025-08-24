
#> switch:engine/voting_time/schedule_message
#
# @executed	in switch:game
#
# @within	switch:engine/voting_time/tick 1s replace
#

execute as @a[tag=!detached] run function switch:engine/voting_time/message

