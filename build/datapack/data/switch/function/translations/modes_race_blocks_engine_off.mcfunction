
#> switch:translations/modes_race_blocks_engine_off
#
# @executed	at @s
#
# @within	switch:modes/race/tm_blocks/engine_off
#

# French
execute on passengers run title @s[scores={switch.lang=0}] title ""
execute on passengers run title @s[scores={switch.lang=0}] subtitle [{"text":"Engine Off","color":"red"}]

# English
execute on passengers run title @s[scores={switch.lang=1}] title ""
execute on passengers run title @s[scores={switch.lang=1}] subtitle [{"text":"Engine Off","color":"red"}]

