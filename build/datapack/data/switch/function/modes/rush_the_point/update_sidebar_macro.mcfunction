
#> switch:modes/rush_the_point/update_sidebar_macro
#
# @within	switch:modes/rush_the_point/update_sidebar with storage switch:main input
#

$team modify switch.temp.sidebar.3 suffix [{"text":"Temps restant : "},{"text":"$(minutes)","color":"yellow"},{"text":"m"},{"text":"$(optional_zero)$(seconds)","color":"yellow"},{"text":"s"}]
$team modify switch.temp.sidebar.2 suffix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"$(blue)","color":"yellow"}]
$team modify switch.temp.sidebar.1 suffix [{"text":"Équipe Rouge : ","color":"red"},{"text":"$(red)","color":"yellow"}]

