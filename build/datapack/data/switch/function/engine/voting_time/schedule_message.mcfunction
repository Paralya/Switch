
#> switch:engine/voting_time/schedule_message
#
# @within	switch:engine/voting_time/tick 1s replace [ scheduled ]
#

execute as @a[tag=!detached] run function switch:engine/voting_time/message

