
function switch:translations/modes_one_shot_teams_tp_setup4

team add switch.temp.red
team add switch.temp.blue
team add switch.temp.yellow
team add switch.temp.green
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.yellow color yellow
team modify switch.temp.green color green
team modify switch.temp.red friendlyFire false
team modify switch.temp.blue friendlyFire false
team modify switch.temp.yellow friendlyFire false
team modify switch.temp.green friendlyFire false

scoreboard players set #next_role switch.data 0

