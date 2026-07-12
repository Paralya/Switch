
#> switch:player/jump_timer/migrate_loop
#
# @within	switch:player/jump_timer/migrate
#			switch:player/jump_timer/migrate_loop
#

execute store result score #mig_time switch.data run data get storage switch:temp jt_mig_src[0].time
scoreboard players operation #mig_time switch.data *= #5 switch.data
execute store result storage switch:temp jt_mig_src[0].time int 1 run scoreboard players get #mig_time switch.data
data modify storage switch:temp jt_mig_dst append from storage switch:temp jt_mig_src[0]
data remove storage switch:temp jt_mig_src[0]
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop

