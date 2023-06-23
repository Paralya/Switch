
#> switch:engine/log_message/apply
#
# @within			?
# @executed			Don't care
#
# @input storage	switch:main MessageToLog
#
# @description		Interprets the message and logs it to the console
#

# Put the message into a sign
execute in overworld run setblock 0 0 0 oak_sign
execute in overworld run data modify block 0 0 0 Text1 set value '{"nbt":"MessageToLog","storage":"switch:main","interpret":true}'
execute in overworld run data modify storage switch:main MessageToLog set from block 0 0 0 Text1
execute in overworld run setblock 0 0 0 air

# Summon wolf
execute in overworld positioned 0 0 0 summon wolf run function switch:engine/log_message/on_wolf

