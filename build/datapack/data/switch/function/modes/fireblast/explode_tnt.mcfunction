
#> switch:modes/fireblast/explode_tnt
#
# @within	switch:modes/fireblast/tick
#

kill @s
summon creeper ~ ~ ~ {Fuse:0s,ignited:true}
playsound switch:explosion ambient @a[distance=..50]
#summon tnt ~ ~ ~ {block_state:{Name:"minecraft:air"}}

