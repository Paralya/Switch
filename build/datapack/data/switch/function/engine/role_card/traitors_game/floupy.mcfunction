
#> switch:engine/role_card/traitors_game/floupy
#
# @executed	as @a[tag=!detached,scores={switch.temp.role=7}]
#
# @within	switch:modes/traitors_game/roles/announcement [ as @a[tag=!detached,scores={switch.temp.role=7}] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/traitors_game/floupy_fr
posteffect add @s[scores={switch.lang=1}] switch:role/traitors_game/floupy_en
schedule function switch:engine/role_card/stop 96t replace

