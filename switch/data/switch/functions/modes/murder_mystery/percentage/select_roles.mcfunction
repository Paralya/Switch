
# Set everyone innocent
scoreboard players set @a[tag=!detached] switch.temp.role 1


## Choose a detective
# Get a list of all players ID multiplied by their score
data modify storage switch:temp list set value []
execute as @a[scores={switch.temp.role=1}] run function switch:modes/murder_mystery/percentage/get_detective_id

# Choose a random ID from the list
data modify storage switch:temp input set value {index:0}
execute store result score #modulo_rand switch.data run data get storage switch:temp list
function switch:utils/get_random/
execute store result storage switch:temp input.index int 1 run scoreboard players get #random switch.data
scoreboard players set #choosen_id switch.data 0
function switch:modes/murder_mystery/percentage/get_id_from_list with storage switch:temp input
execute as @a[scores={switch.temp.role=1}] if score @s switch.id = #choosen_id switch.data run scoreboard players set @s switch.temp.role 2


## Choose a murderer
# Get a list of all players ID multiplied by their score
data modify storage switch:temp list set value []
execute as @a[scores={switch.temp.role=1}] run function switch:modes/murder_mystery/percentage/get_murderer_id

# Choose a random ID from the list
data modify storage switch:temp input set value {index:0}
execute store result score #modulo_rand switch.data run data get storage switch:temp list
function switch:utils/get_random/
execute store result storage switch:temp input.index int 1 run scoreboard players get #random switch.data
scoreboard players set #choosen_id switch.data 0
function switch:modes/murder_mystery/percentage/get_id_from_list with storage switch:temp input
execute as @a[scores={switch.temp.role=1}] if score @s switch.id = #choosen_id switch.data run scoreboard players set @s switch.temp.role 3

