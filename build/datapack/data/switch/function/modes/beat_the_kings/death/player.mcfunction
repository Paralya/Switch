
#> switch:modes/beat_the_kings/death/player
#
# @within	switch:modes/beat_the_kings/joined
#			switch:modes/beat_the_kings/process_end
#

scoreboard players set @s switch.alive 0
tag @s add switch.to_tp
function switch:utils/classic_death

