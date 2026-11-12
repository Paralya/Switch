
#> switch:modes/beat_the_kings/roles/announcement
#
# @within	switch:modes/beat_the_kings/second
#

execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
function switch:modes/beat_the_kings/translations/roles_announcement
execute as @a[tag=!detached,team=switch.temp.civil] run function switch:engine/role_card/beat_the_kings/civil
execute as @a[tag=!detached,team=switch.temp.king] run function switch:engine/role_card/beat_the_kings/king

