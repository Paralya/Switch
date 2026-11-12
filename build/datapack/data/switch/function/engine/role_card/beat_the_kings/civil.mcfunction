
#> switch:engine/role_card/beat_the_kings/civil
#
# @executed	as @a[tag=!detached,team=switch.temp.civil]
#
# @within	switch:modes/beat_the_kings/roles/announcement [ as @a[tag=!detached,team=switch.temp.civil] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/beat_the_kings/civil_fr
posteffect add @s[scores={switch.lang=1}] switch:role/beat_the_kings/civil_en
schedule function switch:engine/role_card/stop 96t replace

