
#> switch:modes/_common/layers_starter_kit
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:modes/layers_2_teams/team_and_give
#			switch:modes/layers_4_teams/team_and_give
#

attribute @s attack_speed base set 2048
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"tool",claim:1,canon:1,sibling:0},{i:1,role:"axe",claim:1,canon:2,sibling:0},{i:2,role:"special",claim:1,canon:3,sibling:0},{i:3,role:"food",claim:1,canon:4,sibling:0},{i:4,role:"explosive",claim:1,canon:5,sibling:0},{i:5,role:"explosive",claim:0,canon:6,sibling:1}]}
function switch:player/layout/resolve
function switch:modes/_common/layers_starter_kit/items with storage switch:layout out

