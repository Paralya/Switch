
#> switch:translations/modes_kart_racer_blocks_reset
#
# @executed	at @s
#
# @within	switch:modes/kart_racer/blocks/reset
#

# French
execute on passengers run title @s[scores={switch.lang=0}] title ""
execute on passengers run title @s[scores={switch.lang=0}] subtitle [{"text":"Reset","color":"green"}]

# English
execute on passengers run title @s[scores={switch.lang=1}] title ""
execute on passengers run title @s[scores={switch.lang=1}] subtitle [{"text":"Reset","color":"green"}]

