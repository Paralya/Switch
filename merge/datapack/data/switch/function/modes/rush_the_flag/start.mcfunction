
function switch:modes/rush_the_point/start_common
function switch:translations/modes_rush_the_flag_start

team modify switch.temp.sidebar.5 suffix [{"text":"Goal: "},{"text":"5","color":"yellow"},{"text":" flags"}]
scoreboard players set #remaining_time switch.data 610
scoreboard players set #rush_the_point_seconds switch.data -20
scoreboard players set #rush_the_point_ticks switch.data 0
tag @a remove switch.has_blue_flag
tag @a remove switch.has_red_flag

