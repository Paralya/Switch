
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
kill @e[type=boat,distance=..1.25,sort=nearest,limit=1]

