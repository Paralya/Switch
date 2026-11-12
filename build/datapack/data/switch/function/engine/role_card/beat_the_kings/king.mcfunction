
#> switch:engine/role_card/beat_the_kings/king
#
# @executed	as @a[tag=!detached,team=switch.temp.king]
#
# @within	switch:modes/beat_the_kings/roles/announcement [ as @a[tag=!detached,team=switch.temp.king] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/beat_the_kings/king_fr
posteffect add @s[scores={switch.lang=1}] switch:role/beat_the_kings/king_en
schedule function switch:engine/role_card/stop 96t replace

