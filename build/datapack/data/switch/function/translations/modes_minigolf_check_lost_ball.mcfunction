
#> switch:translations/modes_minigolf_check_lost_ball
#
# @executed	as @a[scores={switch.alive=1},predicate=!golf_ball:has_vehicle] & at @s
#
# @within	switch:modes/minigolf/check_lost_ball
#

# French
execute if score #finished switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"green"},{"text":" vient de terminer en "},{"score":{"name":"@s","objective":"golf_ball.shots"},"color":"dark_green"},{"text":" coups et "},{"score":{"name":"#minigolf_seconds","objective":"switch.data"},"color":"dark_green"},{"text":" secondes !"}]
execute if score #finished switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"selector":"@s","color":"red"},{"text":" a abandonné !"}]

# English
execute if score #finished switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"green"},{"text":" just finished in "},{"score":{"name":"@s","objective":"golf_ball.shots"},"color":"dark_green"},{"text":" shots and "},{"score":{"name":"#minigolf_seconds","objective":"switch.data"},"color":"dark_green"},{"text":" seconds!"}]
execute if score #finished switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"selector":"@s","color":"red"},{"text":" abandoned!"}]

