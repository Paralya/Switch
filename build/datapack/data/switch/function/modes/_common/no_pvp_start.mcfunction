
#> switch:modes/_common/no_pvp_start
#
# @within	switch:modes/pitch_creep/start
#			switch:modes/warden_escape/start
#

team join switch.no_pvp @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
time set 18000

