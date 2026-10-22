
#> switch:modes/mlg_a_coudre/remove_water
#
# @within	switch:modes/mlg_a_coudre/done 1s [ scheduled ]
#

# Maps
execute if data storage switch:main {map:"mlg_a_coudre_1"} run fill 5986 100 -2014 6014 100 -1986 air replace water
execute if data storage switch:main {map:"mlg_a_coudre_1"} run fill 6009 101 -2009 5991 101 -1991 air replace water
execute if data storage switch:main {map:"mlg_a_coudre_1"} run fill 5999 102 -1988 5988 102 -2012 air replace water

