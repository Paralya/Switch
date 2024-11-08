
#> switch:modes/feed_fast/summon_food
#
# @within	switch:modes/feed_fast/second
#

execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~ loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~ loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~ ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~ ~ ~-6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~-6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~-6 loot switch:feed_fast

