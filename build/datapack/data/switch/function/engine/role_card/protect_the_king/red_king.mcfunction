
#> switch:engine/role_card/protect_the_king/red_king
#
# @executed	as @a[tag=!detached,team=switch.temp.red_king]
#
# @within	switch:modes/protect_the_king/second [ as @a[tag=!detached,team=switch.temp.red_king] ]
#

posteffect add @s[scores={switch.lang=0}] switch:role/protect_the_king/red_king_fr
posteffect add @s[scores={switch.lang=1}] switch:role/protect_the_king/red_king_en
schedule function switch:engine/role_card/stop 96t replace

