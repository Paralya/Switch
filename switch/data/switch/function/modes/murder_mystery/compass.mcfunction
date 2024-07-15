
# Track nearest player with compass
data modify storage switch:main Pos set from entity @p[gamemode=!spectator,distance=0.1..] Pos
setblock 0 0 0 yellow_shulker_box
item replace block 0 0 0 container.0 with compass{LodestoneDimension:"minecraft:overworld",LodestoneTracked:0b,LodestonePos:{X:10,Y:10,Z:10}}
data modify block 0 0 0 Items[0].tag.LodestonePos.X set from storage switch:main Pos[0]
data modify block 0 0 0 Items[0].tag.LodestonePos.Y set from storage switch:main Pos[1]
data modify block 0 0 0 Items[0].tag.LodestonePos.Z set from storage switch:main Pos[2]
item replace entity @s hotbar.4 from block 0 0 0 container.0
setblock 0 0 0 air

