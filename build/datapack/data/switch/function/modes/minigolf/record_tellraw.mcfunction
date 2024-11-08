
#> switch:modes/minigolf/record_tellraw
#
# @within	switch:modes/minigolf/start with storage switch:records minigolf
#

$execute if data storage switch:records minigolf.$(current_map) run function switch:modes/minigolf/record_tellraw_macro with storage switch:records minigolf.$(current_map)

