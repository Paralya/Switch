
#> switch:player/trigger/rating/sort
#
# @within	switch:player/trigger/rating/note
#

data modify storage switch:temp sorted set value []
function switch:player/trigger/rating/sort_loop
data modify storage switch:ratings all set from storage switch:temp sorted

