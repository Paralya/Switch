
#> switch:modes/replicate_the_build/round/7
#
# @within	switch:modes/replicate_the_build/tick
#

execute as @a[tag=!detached] run function switch:modes/replicate_the_build/utils/display_score

scoreboard players remove #rtb_wait_score switch.data 1
execute if score #rtb_wait_score switch.data matches ..0 run function switch:modes/replicate_the_build/round/7_end

