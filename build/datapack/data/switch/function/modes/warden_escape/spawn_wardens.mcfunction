
#> switch:modes/warden_escape/spawn_wardens
#
# @within	switch:modes/warden_escape/second
#

# Depending on the map, spawn two wardens for each spawn
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 4079 108 2079
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 4119 108 2119
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 4039 108 2119
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 4119 108 2039
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 4039 108 2039
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden -1961 122 -5944
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden -1897 122 -5944
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden -1879 120 -5944
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden -1896 120 -5963
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden -1897 120 -5932
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden -1979 121 -5944
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden -5953 113 47
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden -5953 113 81
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden -5919 113 47
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden -5987 113 47
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden -5953 113 13
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 56.0 137 8050.0
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 78 127 8027
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 78 126 8072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 33 126 8072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 33 126 8027

# One new warden out of four also brings a small spider, rolled per warden
execute at @e[type=warden,tag=!switch.glowed] if predicate switch:chance/0.25 run summon spider ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.35},{id:"minecraft:max_health",base:2}],Health:2f}

# Make the new wardens glow 2 seconds
effect give @e[type=warden,tag=!switch.glowed] glowing 2 255 true
tag @e[type=warden,tag=!switch.glowed] add switch.glowed

# Make them join the team
team join switch.temp.mobs @e[type=warden]
team join switch.temp.mobs @e[type=spider]

