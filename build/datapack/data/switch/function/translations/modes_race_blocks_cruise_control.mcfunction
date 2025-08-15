
#> switch:translations/modes_race_blocks_cruise_control
#
# @executed	at @s
#
# @within	switch:modes/race/tm_blocks/cruise_control
#

# French
execute on passengers run title @s[scores={switch.lang=0}] title ""
execute on passengers run title @s[scores={switch.lang=0}] subtitle [{"text":"Cruise Control","color":"blue"}]

# English
execute on passengers run title @s[scores={switch.lang=1}] title ""
execute on passengers run title @s[scores={switch.lang=1}] subtitle [{"text":"Cruise Control","color":"blue"}]

