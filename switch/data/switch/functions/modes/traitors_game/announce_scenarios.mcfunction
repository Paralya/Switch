
function switch:translations/modes_traitors_game_announce_scenarios
execute if score #sc_silencieux switch.data matches 1 run scoreboard objectives modify switch.temp.sidebar displayname {"text":"Rôles de départ","color":"gold"}

