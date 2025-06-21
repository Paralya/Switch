
#> switch:modes/replicate_the_build/structure/destroy
#
# @within	switch:modes/replicate_the_build/round/4_end
#			switch:modes/replicate_the_build/round/8_end
#			switch:modes/replicate_the_build/stop
#			switch:modes/replicate_the_build/utils/explose_island
#

execute at @s positioned ~ ~ ~4 run fill ~-5 ~-3 ~-5 ~5 ~10 ~5 moving_piston replace air
execute at @s run fill ~-3 ~ ~1 ~3 ~7 ~7 air replace moving_piston
execute at @s run fill ~-3 ~ ~1 ~3 ~7 ~7 air destroy

