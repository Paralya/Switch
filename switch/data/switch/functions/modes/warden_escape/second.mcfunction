
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #warden_escape_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #warden_escape_seconds switch.data matches 0.. run function switch:modes/warden_escape/xp_bar
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} run summon warden 520 101.69 520
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} run summon warden 548 101.69 502
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} run summon warden 509 101.69 506
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} run summon warden 504 101.69 547
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"laser_game"} run summon warden 548 101.69 548
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10000 102.69 10000
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10040 102.69 10040
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 9960 102.69 10040
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10040 102.69 9960
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 9960 102.69 9960
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"cathedrale_liege"} run summon warden 26000 120 26018
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"cathedrale_liege"} run summon warden 26000 120 25981
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"cathedrale_liege"} run summon warden 25982 120 26000
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"cathedrale_liege"} run summon warden 26032 120 25990
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"cathedrale_liege"} run summon warden 26032 120 25610
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"cathedrale_liege"} run summon warden 26064 120 26000
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"new_grounds"} run summon warden 48000 113 48000
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"new_grounds"} run summon warden 48000 113 48034
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"new_grounds"} run summon warden 48034 113 48000
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"new_grounds"} run summon warden 47966 113 48000
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"new_grounds"} run summon warden 48000 113 47966
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_escape_statue"} run summon warden 69056.0 137 69050.0
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_escape_statue"} run summon warden 69078 127 69027
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_escape_statue"} run summon warden 69078 126 69072
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_escape_statue"} run summon warden 69033 126 69072
execute if score #warden_escape_seconds switch.data matches 0 if data storage switch:main {map:"warden_escape_statue"} run summon warden 69033 126 69027
execute if score #warden_escape_seconds switch.data matches 0 run effect give @e[type=warden] glowing 2 255 true
execute if score #warden_escape_seconds switch.data matches ..-1 run tp @e[type=warden] 0 -10000 0
execute if score #warden_escape_seconds switch.data matches ..-1 run kill @e[type=warden]

