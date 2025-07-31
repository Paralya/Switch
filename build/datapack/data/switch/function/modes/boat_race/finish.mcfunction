
#> switch:modes/boat_race/finish
#
# @executed	as @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1},x=5033,y=105,z=5000,dx=3,dy=4,dz=4] & at @s
#
# @within	switch:modes/boat_race/tick [ as @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1},x=5033,y=105,z=5000,dx=3,dy=4,dz=4] & at @s ]
#			switch:modes/boat_race/tick [ as @a[tag=!detached,gamemode=!spectator,scores={switch.alive=1},x=50997,y=92,z=50964,dx=6,dy=4,dz=5] & at @s ]
#

scoreboard players set @s switch.alive -1

scoreboard players operation #minutes switch.data = #boat_race_seconds switch.data
scoreboard players operation #minutes switch.data /= #60 switch.data
scoreboard players operation #seconds switch.data = #boat_race_seconds switch.data
scoreboard players operation #seconds_to_remove switch.data = #minutes switch.data
scoreboard players operation #seconds_to_remove switch.data *= #60 switch.data
scoreboard players operation #seconds switch.data -= #seconds_to_remove switch.data

function switch:translations/modes_boat_race_finish
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

gamemode spectator @s
kill @e[type=#minecraft:boat,distance=..1.25,sort=nearest,limit=1]

