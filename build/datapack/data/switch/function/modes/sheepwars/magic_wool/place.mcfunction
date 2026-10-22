
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

execute if data storage switch:main {map:"sheepwars_dirigeables"} positioned -9919 150 -7949 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"survival_boat"} positioned -7938 138 6051 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_bonbons"} positioned -9956 140 2056 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_plateforme"} positioned -9956 140 40 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_ilots"} positioned -11954 145 -1941 run function sheepwars:magic_wool/summon
execute if data storage switch:main {map:"sheepwars_colored_sheeps"} positioned -3946 147 -11947 run function sheepwars:magic_wool/summon

# Message
function switch:modes/sheepwars/translations/magic_wool_place

