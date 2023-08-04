
# Search the player corresponding with the score
execute at @a if score @s switch.temp.color = @p switch.temp.color run tag @p add switch.temp

# Fill the area with the color (3x3x3)
scoreboard players operation #new_color switch.data = @s switch.temp.color
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~1 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~0 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~0 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~1 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~1 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~0 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~0 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #switch:snowball_painter run function switch:modes/snowball_painter/color/place

# Remove the temp tag
tag @a[tag=switch.temp] remove switch.temp

# Kill marker
kill @s

