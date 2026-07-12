
#> switch:player/jump_timer/migrate
#
# @within	switch:load
#

data modify storage switch:temp jt_mig_src set from storage switch:jumps green
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps green set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps white
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps white set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps blue
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps blue set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps yellow
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps yellow set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps red
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps red set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps brown
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps brown set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps purple
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps purple set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps dripstone
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps dripstone set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps pink
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps pink set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps bricks
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps bricks set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps obsidian
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps obsidian set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps duality
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps duality set from storage switch:temp jt_mig_dst
data modify storage switch:temp jt_mig_src set from storage switch:jumps graviglitch
data modify storage switch:temp jt_mig_dst set value []
execute if data storage switch:temp jt_mig_src[0] run function switch:player/jump_timer/migrate_loop
data modify storage switch:jumps graviglitch set from storage switch:temp jt_mig_dst

