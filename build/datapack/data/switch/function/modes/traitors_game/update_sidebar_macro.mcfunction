
#> switch:modes/traitors_game/update_sidebar_macro
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/traitors_game/update_sidebar with storage switch:main input
#
# @args		inspecteur (int)
#			ninja (int)
#			innocent (int)
#			traitre (int)
#			gros_traitre (int)
#			floupy (int)
#

$team modify switch.temp.sidebar.5 suffix [{"text":"Inspector: ","color":"#2EFF8B"},{"text":"$(inspecteur)","color":"#FFE60A"}]
$team modify switch.temp.sidebar.4 suffix [{"text":"Ninja: ","color":"#2EFF8B"},{"text":"$(ninja)","color":"#FFE60A"}]
$team modify switch.temp.sidebar.3 suffix [{"text":"Innocent: ","color":"#2EFF8B"},{"text":"$(innocent)","color":"#FFE60A"}]
$team modify switch.temp.sidebar.2 suffix [{"text":"Traitor: ","color":"#FF3347"},{"text":"$(traitre)","color":"#FFE60A"}]
$team modify switch.temp.sidebar.1 suffix [{"text":"Big Traitor: ","color":"#C41E3A"},{"text":"$(gros_traitre)","color":"#FFE60A"}]
$team modify switch.temp.sidebar.0 suffix [{"text":"Floupy: ","color":"#FFA600"},{"text":"$(floupy)","color":"#FFE60A"}]

