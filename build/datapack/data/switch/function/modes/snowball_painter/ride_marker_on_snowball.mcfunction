
#> switch:modes/snowball_painter/ride_marker_on_snowball
#
# @executed	as @e[type=snowball,tag=!switch.marker] & at @s
#
# @within	switch:modes/snowball_painter/tick [ as @e[type=snowball,tag=!switch.marker] & at @s ]
#

# Summon marker and make it ride the player
tag @s add switch.temp
execute summon marker run ride @s mount @e[tag=switch.temp,limit=1,sort=nearest,distance=..1]
tag @s remove switch.temp

# Add the tag to the marker
tag @s add switch.marker

# Copy owner color ID to marker
execute on origin run scoreboard players operation #color switch.data = @s switch.temp.color
execute on passengers run scoreboard players operation @s switch.temp.color = #color switch.data
execute on passengers run tag @s add switch.marker

