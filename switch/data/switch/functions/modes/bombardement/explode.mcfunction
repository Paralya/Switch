
particle explosion ~ ~ ~ .25 .25 .25 1 5
playsound entity.generic.explode ambient @a[tag=!detached] ~ ~ ~ 0.5
execute as @a[tag=!detached,distance=..1.5] at @s run function switch:modes/bombardement/death
execute on passengers run kill @s
kill @s

