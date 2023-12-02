
tp @s 0 69.69 0 0 0

effect clear @s
function switch:utils/reset_attributes
effect give @s saturation infinite 0 true
effect give @s regeneration 10 255 true
gamemode adventure @s
clear @s
team join switch.no_pvp @s

