
#> switch:player/layout/prune
#
# @within	switch:load with storage switch:layout stale[0]
#			switch:player/layout/prune with storage switch:layout stale[0]
#
# @args		n (unknown)
#

$scoreboard objectives remove $(n)
data remove storage switch:layout stale[0]
execute if data storage switch:layout stale[0] run function switch:player/layout/prune with storage switch:layout stale[0]

