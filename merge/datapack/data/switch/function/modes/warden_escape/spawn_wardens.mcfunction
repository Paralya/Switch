
# Depending on the map, spawn two wardens for each spawn
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10066 108 10066
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10106 108 10106
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10026 108 10106
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10106 108 10026
execute if data storage switch:main {map:"warden_forest"} as @e[limit=2] run summon warden 10026 108 10026
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26039 122 26056
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26103 122 26056
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26121 120 26056
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26104 120 26037
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26103 120 26068
execute if data storage switch:main {map:"cathedrale_liege"} as @e[limit=2] run summon warden 26021 121 26056
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48047 113 48047
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48047 113 48081
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48081 113 48047
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48013 113 48047
execute if data storage switch:main {map:"new_grounds"} as @e[limit=2] run summon warden 48047 113 48013
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69056.0 137 69050.0
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69078 127 69027
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69078 126 69072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69033 126 69072
execute if data storage switch:main {map:"warden_escape_statue"} as @e[limit=2] run summon warden 69033 126 69027

# Summon one small spider per new warden also
execute at @e[type=warden,tag=!switch.glowed] run summon spider ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.35}]}

# Make the new wardens glow 2 seconds
effect give @e[type=warden,tag=!switch.glowed] glowing 2 255 true
tag @e[type=warden,tag=!switch.glowed] add switch.glowed

# Make them join the team
team join switch.temp.mobs @e[type=warden]
team join switch.temp.mobs @e[type=spider]

