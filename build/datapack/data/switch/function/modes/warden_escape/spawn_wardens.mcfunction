
#> switch:modes/warden_escape/spawn_wardens
#
# @within	switch:modes/warden_escape/second
#

execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10000 102.69 10000
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10040 102.69 10040
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 9960 102.69 10040
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10040 102.69 9960
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 9960 102.69 9960
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26000 120 26018
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26000 120 25981
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 25982 120 26000
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26032 120 25990
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26032 120 25610
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26064 120 26000
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48000 113 48000
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48000 113 48034
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48034 113 48000
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 47966 113 48000
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48000 113 47966
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69056.0 137 69050.0
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69078 127 69027
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69078 126 69072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69033 126 69072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69033 126 69027
effect give @e[type=warden,tag=!switch.glowed] glowing 2 255 true
tag @e[type=warden,tag=!switch.glowed] add switch.glowed

