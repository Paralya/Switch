
#> switch:engine/role_card/traitors_game/big_traitor
#
# @executed	as @a[tag=!detached,scores={switch.temp.role=6}]
#
# @within	switch:modes/traitors_game/roles/announcement [ as @a[tag=!detached,scores={switch.temp.role=6}] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/traitors_game/big_traitor_fr
posteffect add @s[scores={switch.lang=1}] switch:role/traitors_game/big_traitor_en
schedule function switch:engine/role_card/stop 96t replace

