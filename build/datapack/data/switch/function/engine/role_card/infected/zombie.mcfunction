
#> switch:engine/role_card/infected/zombie
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/infected/death/zombie_give
#

posteffect add @s[scores={switch.lang=0}] switch:role/infected/zombie_fr
posteffect add @s[scores={switch.lang=1}] switch:role/infected/zombie_en
schedule function switch:engine/role_card/stop 96t replace

