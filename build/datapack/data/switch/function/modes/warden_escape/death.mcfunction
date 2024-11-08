
#> switch:modes/warden_escape/death
#
# @within	switch:modes/warden_escape/joined
#			switch:modes/warden_escape/process_end
#

function switch:translations/modes_warden_escape_death
scoreboard players set @s switch.alive 0
function switch:utils/classic_death

