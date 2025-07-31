
#> switch:modes/feed_fast/summon_food
#
# @executed	at @e[limit=8] & at @a[tag=!detached,gamemode=!spectator]
#
# @within	switch:modes/feed_fast/second [ at @e[limit=8] & at @a[tag=!detached,gamemode=!spectator] ]
#			switch:modes/feed_fast/second [ at @a[tag=!detached,gamemode=!spectator] ]
#

execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~ loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~ loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~ ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~ ~ ~-6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~-6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~-6 loot switch:feed_fast

