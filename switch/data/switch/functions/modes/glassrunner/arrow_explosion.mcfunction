

function switch:modes/glassrunner/destroy_glass_around



playsound minecraft:entity.generic.explode block @a ~ ~ ~
particle minecraft:explosion ~ ~ ~ 1 1 1 .1 5 

kill @s