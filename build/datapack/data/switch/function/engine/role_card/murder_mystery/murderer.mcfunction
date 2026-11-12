
#> switch:engine/role_card/murder_mystery/murderer
#
# @executed	as @a[tag=!detached,scores={switch.temp.role=3}]
#
# @within	switch:modes/murder_mystery/second [ as @a[tag=!detached,scores={switch.temp.role=3}] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/murder_mystery/murderer_fr
posteffect add @s[scores={switch.lang=1}] switch:role/murder_mystery/murderer_en
schedule function switch:engine/role_card/stop 96t replace

