
#> switch:modes/warden_escape/death
#
# @within	switch:modes/warden_escape/joined
#			switch:modes/warden_escape/process_end [ as @a[tag=!detached,sort=random] ]
#

function switch:modes/warden_escape/translations/death
scoreboard players set @s switch.alive 0
function switch:utils/classic_death

