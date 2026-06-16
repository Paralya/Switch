
#> switch:modes/traitors_game/announce_scenarios
#
# @within	switch:modes/traitors_game/second
#

function switch:modes/traitors_game/translations/announce_scenarios
execute if score #sc_silencieux switch.data matches 1 run scoreboard objectives modify switch.temp.sidebar displayname {"text":"Rôles de départ","color":"gold"}

