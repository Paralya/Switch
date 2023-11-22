
tp @s ^ ^ ^1
particle ash ~ ~.5 ~ .5 .5 .5 0.01 10 force @a[tag=!detached,distance=..100]
particle flame ~ ~.5 ~ .5 .5 .5 0.01 4 force @a[tag=!detached,distance=..100]
particle smoke ~ ~.5 ~ .5 .5 .5 0.01 5 force @a[tag=!detached,distance=..100]
execute if block ~ ~ ~ air as @a[tag=!detached,distance=..1.5] at @s run function switch:modes/bombardement/death
execute unless block ~ ~ ~ air run function switch:modes/bombardement/explode

