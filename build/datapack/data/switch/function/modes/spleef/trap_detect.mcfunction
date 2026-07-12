
#> switch:modes/spleef/trap_detect
#
# @executed	as @a[tag=!detached,gamemode=survival] & at @s
#
# @within	switch:modes/spleef/tick [ as @a[tag=!detached,gamemode=survival] & at @s ]
#

scoreboard players set @s switch.temp.trapped_timer 40
title @s[scores={switch.lang=0}] actionbar {"text":"⚠ Piégé dans de la neige poudreuse !","color":"aqua"}
title @s[scores={switch.lang=1}] actionbar {"text":"⚠ Stuck in powder snow!","color":"aqua"}

