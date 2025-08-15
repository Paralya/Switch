
#> switch:translations/modes_race_blocks_no_steering
#
# @executed	at @s
#
# @within	switch:modes/race/tm_blocks/no_steering
#

# French
execute on passengers run title @s[scores={switch.lang=0}] title ""
execute on passengers run title @s[scores={switch.lang=0}] subtitle [{"text":"No Steering","color":"light_purple"}]

# English
execute on passengers run title @s[scores={switch.lang=1}] title ""
execute on passengers run title @s[scores={switch.lang=1}] subtitle [{"text":"No Steering","color":"light_purple"}]

