
#> switch:engine/voting_time/add_weights
#
# @within	switch:engine/voting_time/ with storage switch:temp copy[0]
#			switch:engine/voting_time/add_weights with storage switch:temp copy[0]
#

# Add time_since_last_play to the weights
data modify storage switch:temp weight set value 1
$data modify storage switch:temp weight set from storage switch:main history.time_since_last_play.$(id)
data modify storage bs:in random.weighted_choice.weights append from storage switch:temp weight

# Continue loop until the list is empty
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:engine/voting_time/add_weights with storage switch:temp copy[0]

