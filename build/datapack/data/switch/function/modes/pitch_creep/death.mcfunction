
#> switch:modes/pitch_creep/death
#
# @within	switch:modes/pitch_creep/joined
#			switch:modes/pitch_creep/process_end [ as @a[tag=!detached,sort=random] ]
#

function switch:translations/modes_pitch_creep_death
scoreboard players set @s switch.alive 0
function switch:utils/classic_death

