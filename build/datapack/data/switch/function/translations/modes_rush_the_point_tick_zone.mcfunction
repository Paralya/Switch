
#> switch:translations/modes_rush_the_point_tick_zone
#
# @executed	at @s
#
# @within	switch:modes/rush_the_point/tick_zone
#

# French
execute if score @s switch.temp.zone_capture matches -60 if score #state switch.data matches 1 run tellraw @a[team=switch.rush_the_point.red,distance=..5,scores={switch.lang=0}] {"text":"Point capturée, plus besoin d'y rester !","color":"green"}
execute if score @s switch.temp.zone_capture matches 60 if score #state switch.data matches 2 run tellraw @a[team=switch.rush_the_point.blue,distance=..5,scores={switch.lang=0}] {"text":"Point capturée, plus besoin d'y rester !","color":"green"}

# English
execute if score @s switch.temp.zone_capture matches -60 if score #state switch.data matches 1 run tellraw @a[team=switch.rush_the_point.red,distance=..5,scores={switch.lang=1}] {"text":"Point captured, no need to stay there!","color":"green"}
execute if score @s switch.temp.zone_capture matches 60 if score #state switch.data matches 2 run tellraw @a[team=switch.rush_the_point.blue,distance=..5,scores={switch.lang=1}] {"text":"Point captured, no need to stay there!","color":"green"}

