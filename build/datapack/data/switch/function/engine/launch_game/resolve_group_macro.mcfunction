
#> switch:engine/launch_game/resolve_group_macro
#
# @within	switch:engine/launch_game/resolve_group with storage switch:main
#
# @args		current_group (unknown)
#

$data modify storage switch:main current_group_name set from storage switch:main groups[{id:"$(current_group)"}].name_fr
$data modify storage switch:main group_pool set from storage switch:main groups_games.$(current_group)
data modify storage switch:main groups_games_copy set from storage switch:main group_pool

