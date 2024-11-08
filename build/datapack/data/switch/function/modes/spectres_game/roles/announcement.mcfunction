
#> switch:modes/spectres_game/roles/announcement
#
# @within	switch:modes/spectres_game/second
#

execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25

function switch:translations/modes_spectres_game_roles_announcement

## mettre le score switch.alive des spectror à 3
scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3

