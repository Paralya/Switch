
#> switch:modes/sheepwars/magic_wool/place
#
# @within	switch:modes/sheepwars/second
#

# Call the signal
scoreboard players set #dx sheepwars.data 6
scoreboard players set #dy sheepwars.data 20
scoreboard players set #dz sheepwars.data 25
execute if data storage switch:main {map:"sheepwars_dirigeables"} run scoreboard players set #dz sheepwars.data 6
execute if data storage switch:main {map:"sheepwars_dirigeables"} run scoreboard players set #dx sheepwars.data 25
execute if data storage switch:main {map:"survival_boat"} run scoreboard players set #dz sheepwars.data 6
execute if data storage switch:main {map:"survival_boat"} run scoreboard players set #dx sheepwars.data 25

execute if data storage switch:main {map:"sheepwars_dirigeables"} positioned 100081 150 100051 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"survival_boat"} positioned 79062 138 79051 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_bonbons"} positioned 143044 140 143056 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_plateforme"} positioned 144044 140 144040 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_ilots"} positioned 145046 145 145059 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_colored_sheeps"} positioned 154054 147 154053 run function sheepwars:magic_wool/summon

# Message
function switch:translations/modes_sheepwars_magic_wool_place

