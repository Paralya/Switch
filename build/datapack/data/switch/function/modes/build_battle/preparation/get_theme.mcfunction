
#> switch:modes/build_battle/preparation/get_theme
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/preparation/main with storage switch:main input
#
# @args		theme (int)
#			index (int)
#

$data modify storage switch:main themes.theme$(theme) set from storage switch:main build_battle_themes[$(index)]
$data remove storage switch:main build_battle_themes[$(index)]

