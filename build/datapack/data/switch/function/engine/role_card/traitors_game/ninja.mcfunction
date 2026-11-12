
#> switch:engine/role_card/traitors_game/ninja
#
# @executed	as @a[tag=!detached,scores={switch.temp.role=3}]
#
# @within	switch:modes/traitors_game/roles/announcement [ as @a[tag=!detached,scores={switch.temp.role=3}] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/traitors_game/ninja_fr
posteffect add @s[scores={switch.lang=1}] switch:role/traitors_game/ninja_en
schedule function switch:engine/role_card/stop 96t replace

