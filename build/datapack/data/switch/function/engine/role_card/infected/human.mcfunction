
#> switch:engine/role_card/infected/human
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/infected/death/human_spawn
#

posteffect add @s[scores={switch.lang=0}] switch:role/infected/human_fr
posteffect add @s[scores={switch.lang=1}] switch:role/infected/human_en
schedule function switch:engine/role_card/stop 96t replace

