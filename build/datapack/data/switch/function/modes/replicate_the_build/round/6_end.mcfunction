
#> switch:modes/replicate_the_build/round/6_end
#
# @within	switch:modes/replicate_the_build/round/6
#

scoreboard players add #rtb_round_state switch.data 1

bossbar set rtb.all name "Calcul des scores ..."
bossbar set rtb.all max 343
bossbar set rtb.all value 343
bossbar set rtb.all color green

scoreboard players set #rtb_wait_explosion switch.data 100

