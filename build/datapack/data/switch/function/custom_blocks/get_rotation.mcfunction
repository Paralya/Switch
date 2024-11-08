
#> switch:custom_blocks/get_rotation
#
# @within	???
#

# Set up score
scoreboard players set #rotation switch.data 0

# Player case
execute if score #rotation switch.data matches 0 if entity @s[y_rotation=-46..45] run scoreboard players set #rotation switch.data 1
execute if score #rotation switch.data matches 0 if entity @s[y_rotation=45..135] run scoreboard players set #rotation switch.data 2
execute if score #rotation switch.data matches 0 if entity @s[y_rotation=135..225] run scoreboard players set #rotation switch.data 3
execute if score #rotation switch.data matches 0 if entity @s[y_rotation=225..315] run scoreboard players set #rotation switch.data 4

# Predicate case
execute if score #rotation switch.data matches 0 if predicate switch:facing/north run scoreboard players set #rotation switch.data 1
execute if score #rotation switch.data matches 0 if predicate switch:facing/east run scoreboard players set #rotation switch.data 2
execute if score #rotation switch.data matches 0 if predicate switch:facing/south run scoreboard players set #rotation switch.data 3
execute if score #rotation switch.data matches 0 if predicate switch:facing/west run scoreboard players set #rotation switch.data 4
# No more cases for now

