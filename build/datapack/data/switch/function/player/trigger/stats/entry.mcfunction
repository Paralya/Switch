
#> switch:player/trigger/stats/entry
#
# @within	switch:player/trigger/main
#

data modify storage switch:main input set value {player:"@s"}
function switch:player/trigger/stats/main with storage switch:main input

