
#> switch:engine/log_message/on_wolf
#
# @within	switch:engine/log_message/apply
#			switch:engine/log_message/apply [ in minecraft:overworld & positioned 0 2 0 ]
#
# @executed			as temporary wolf
# 
# @input storage	switch:main MessageToLog
# 
# @description		Function executed on the wolf summoned to log the message into the console.
#

data modify entity @s CustomName set from storage switch:main MessageToLog
kill @s

