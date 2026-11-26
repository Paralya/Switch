
#> switch:modes/race/record_tellraw
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/race/start with storage switch:main
#
# @args		map (unknown)
#

$execute if data storage switch:records race.$(map) run function switch:modes/race/translations/record_tellraw with storage switch:records race.$(map)

