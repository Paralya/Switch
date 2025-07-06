
# Track nearest player with compass
data modify storage switch:main Pos set from entity @p[gamemode=!spectator,distance=0.1..] Pos
setblock 0 7 0 yellow_shulker_box
item replace block 0 7 0 container.0 with compass[item_name={"text":"Player Tracker","color":"yellow"},lodestone_tracker={"tracked":false,"target":{"dimension":"switch:game","pos":[I;10,10,10]}}]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get storage switch:main Pos[0]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[1] int 1 run data get storage switch:main Pos[1]
execute store result block 0 7 0 Items[0].components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get storage switch:main Pos[2]

item replace entity @s hotbar.4 from block 0 7 0 container.0
setblock 0 7 0 air

# Allow to see players waypoints
attribute @s waypoint_receive_range base reset

