
#> switch:modes/minigolf/record_tellraw_macro
#
# @executed	as @a[tag=!...]
#
# @within	switch:modes/minigolf/record_save with storage switch:records minigolf.$(current_map)
#			switch:modes/minigolf/record_tellraw with storage switch:records minigolf.$(current_map)
#
# @args		shots (unknown)
#			player (unknown)
#			time (unknown)
#

$function switch:translations/modes_minigolf_record_tellraw_macro {shots:"$(shots)",player:"$(player)",time:"$(time)"}
scoreboard players reset #new_record switch.data

