
#> switch:modes/_common/racing_start_setup
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/race/start
#

scoreboard objectives add switch.temp dummy
scoreboard objectives add switch.temp.old_speed dummy
scoreboard objectives add switch.temp.compteur dummy
scoreboard objectives add switch.temp.x dummy
scoreboard objectives add switch.temp.y dummy
scoreboard objectives add switch.temp.z dummy
scoreboard objectives add switch.temp.dx dummy
scoreboard objectives add switch.temp.dy dummy
scoreboard objectives add switch.temp.dz dummy
scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.change_map dummy
scoreboard objectives add switch.temp.checkpoint dummy
scoreboard objectives add switch.temp.classement dummy
scoreboard objectives add switch.temp.pv_classement dummy
scoreboard objectives add switch.temp.pos_on_last_lap dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Ranking","color":"#A53DE0"}
scoreboard objectives add switch.respawn_cp_id dummy
scoreboard objectives add switch.hard_respawn_cp_id dummy
scoreboard objectives add switch.checkpoint dummy
scoreboard objectives add switch.lap dummy
scoreboard objectives add switch.effects.last dummy
scoreboard objectives add switch.effects.timer dummy
scoreboard players set @a[tag=!detached] switch.respawn_cp_id -1
scoreboard players set @a[tag=!detached] switch.hard_respawn_cp_id -1
scoreboard players set @a[tag=!detached] switch.temp.checkpoint 0
scoreboard players set @a[tag=!detached] switch.checkpoint 0
scoreboard players set @a[tag=!detached] switch.lap 1
scoreboard objectives setdisplay sidebar switch.temp.sidebar

team add switch.temp.1 {"text":"[1st]","color":"#FFE700"}
team add switch.temp.2 {"text":"[2nd]","color":"#C0C0C0"}
team add switch.temp.3 {"text":"[3rd]","color":"#CD7F32"}
team add switch.temp.4 {"text":"[4th]","color":"#696969"}
team add switch.temp.5 {"text":"[5th]","color":"#696969"}
team add switch.temp.6 {"text":"[6th]","color":"#696969"}
team add switch.temp.7 {"text":"[7th]","color":"#696969"}
team add switch.temp.8 {"text":"[8th]","color":"#696969"}
team add switch.temp.9 {"text":"[9th]","color":"#696969"}
team add switch.temp.10 {"text":"[10th]","color":"#696969"}
team add switch.temp.11 {"text":"[11th]","color":"#696969"}
team add switch.temp.12 {"text":"[12th]","color":"#696969"}
team add switch.temp.13 {"text":"[13th]","color":"#696969"}
team add switch.temp.14 {"text":"[14th]","color":"#696969"}
team add switch.temp.15 {"text":"[15th]","color":"#696969"}
team add switch.temp.16 {"text":"[16th]","color":"#696969"}
team add switch.temp.17 {"text":"[17th]","color":"#696969"}
team add switch.temp.18 {"text":"[18th]","color":"#696969"}
team add switch.temp.19 {"text":"[19th]","color":"#696969"}
team add switch.temp.20 {"text":"[20th]","color":"#696969"}
team add switch.temp.21 {"text":"[21st]","color":"#696969"}
team add switch.temp.22 {"text":"[22nd]","color":"#696969"}
team add switch.temp.23 {"text":"[23rd]","color":"#696969"}
team add switch.temp.24 {"text":"[24th]","color":"#696969"}
team add switch.temp.25 {"text":"[25th]","color":"#696969"}
team add switch.temp.25+ {"text":"[25+th]","color":"#9200DF"}
team modify switch.temp.1 suffix [" ",{"text": "耣","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.2 suffix [" ",{"text": "耤","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.3 suffix [" ",{"text": "耥","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.4 suffix [" ",{"text": "耦","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.5 suffix [" ",{"text": "耧","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.6 suffix [" ",{"text": "耨","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.7 suffix [" ",{"text": "耩","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.8 suffix [" ",{"text": "耪","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.9 suffix [" ",{"text": "耫","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.10 suffix [" ",{"text": "耬","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.11 suffix [" ",{"text": "耭","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.12 suffix [" ",{"text": "耮","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.13 suffix [" ",{"text": "耯","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.14 suffix [" ",{"text": "耰","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.15 suffix [" ",{"text": "耱","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.16 suffix [" ",{"text": "耲","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.17 suffix [" ",{"text": "耳","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.18 suffix [" ",{"text": "耴","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.19 suffix [" ",{"text": "耵","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.20 suffix [" ",{"text": "耶","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.21 suffix [" ",{"text": "耷","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.22 suffix [" ",{"text": "耸","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.23 suffix [" ",{"text": "耹","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.24 suffix [" ",{"text": "耺","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.25 suffix [" ",{"text": "耻","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]
team modify switch.temp.25+ suffix [" ",{"text": "耼","font": "switch:renders","color":"#FFFFFF","shadow_color":0}]

## Number of checkpoints and laps per map
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 1

