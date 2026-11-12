
#> switch:engine/role_card/murder_mystery/detective
#
# @executed	as @a[tag=!detached,scores={switch.temp.role=2}]
#
# @within	switch:modes/murder_mystery/second [ as @a[tag=!detached,scores={switch.temp.role=2}] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/murder_mystery/detective_fr
posteffect add @s[scores={switch.lang=1}] switch:role/murder_mystery/detective_en
schedule function switch:engine/role_card/stop 96t replace

