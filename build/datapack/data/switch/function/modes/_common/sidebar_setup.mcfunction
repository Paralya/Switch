
#> switch:modes/_common/sidebar_setup
#
# @within	switch:modes/capture_the_flag/start
#			switch:modes/rush_the_point/start_common
#

team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.5 §3
team join switch.temp.sidebar.3 §5
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §r switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1
scoreboard players display numberformat §5 switch.temp.sidebar blank
scoreboard players display numberformat §r switch.temp.sidebar blank
scoreboard players display numberformat §3 switch.temp.sidebar blank
scoreboard players display numberformat §2 switch.temp.sidebar blank
scoreboard players display numberformat §1 switch.temp.sidebar blank

