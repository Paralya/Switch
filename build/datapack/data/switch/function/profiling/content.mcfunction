
#> switch:profiling/content
#
# @within	switch:profiling/start
#

## Personal function for '/perf start' command for profiling
## To determine which syntax is the most efficient
## Useful link: https://misode.github.io/report/

## To be taken with caution, example here:				1st report			2nd report
## execute if entity @e[type=player,distance=..9]		4.409 ms			4.274 ms
## execute if entity @a[distance=..9]					4.274 ms (best)		4.232 ms
## execute if entity @a[distance=..9.0]					4.290 ms			4.184 ms (best)
## execute if entity @e[type=player,distance=..9.0]		4.290 ms			4.195 ms
## Conclusion: they are equivalent in terms of efficiency, they are almost the same.
## You should use the 2nd one, because it is shorter and more readable.
# execute if entity @e[]
# execute if entity @e[dx=0]
# execute if entity @e[dx=0,dy=0]
# execute if entity @e[dx=0,dy=0,dz=0]
# execute if entity @e[distance=..1]

## Laissez en commentaire vos tests pour qu'on garde un historique (plus bas = plus ancien)



## Tests de la commande 'execute store result score' avec if items et clear, meilleur méthode avec if items
# execute store result score #count switch.data if items entity @s container.* oak_planks		1.931 ms (best)
# execute store result score #count switch.data run clear @s oak_planks 0						5.639 ms

## Tests du scoreboard reset, meilleur méthode avec le selecteur et non *
# scoreboard players set @e energy.update_queue 1			~350 ms
# scoreboard players reset * energy.update_queue			532.298 ms
# scoreboard players set @e energy.update_queue 2			~350 ms
# scoreboard players reset @e energy.update_queue			319.100 ms (best)

## Tests des fonctions random
# scoreboard players set #modulo_rand switch.data 9
# function switch:utils/get_random/main

