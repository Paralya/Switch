
#> switch:modes/traitors_game/update_sidebar_macro
#
# @within	switch:modes/traitors_game/update_sidebar with storage switch:main input
#

$team modify switch.temp.sidebar.5 suffix [{"text":"Inspector: ","color":"green"},{"text":"$(inspecteur)","color":"yellow"}]
$team modify switch.temp.sidebar.4 suffix [{"text":"Ninja: ","color":"green"},{"text":"$(ninja)","color":"yellow"}]
$team modify switch.temp.sidebar.3 suffix [{"text":"Innocent: ","color":"green"},{"text":"$(innocent)","color":"yellow"}]
$team modify switch.temp.sidebar.2 suffix [{"text":"Traitor: ","color":"red"},{"text":"$(traitre)","color":"yellow"}]
$team modify switch.temp.sidebar.1 suffix [{"text":"Big Traitor: ","color":"dark_red"},{"text":"$(gros_traitre)","color":"yellow"}]
$team modify switch.temp.sidebar.0 suffix [{"text":"Floupy: ","color":"gold"},{"text":"$(floupy)","color":"yellow"}]

