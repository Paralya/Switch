
#> switch:engine/voting_time/player_join
#
# @within	switch:player/make_join
#			switch:player/trigger/attach/real_attach
#

clear @s[tag=!convention.debug]
effect clear @s
gamemode spectator @s[tag=!convention.debug]
tp @s[tag=!convention.debug] 0 169 0
tp @s[tag=!convention.debug] @r[tag=!detached]

function switch:engine/voting_time/message

