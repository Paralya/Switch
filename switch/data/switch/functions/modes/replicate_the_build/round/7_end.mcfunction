scoreboard players add #rtb_round_state switch.data 1


scoreboard players set #min_score switch.data 343
scoreboard players operation #min_score switch.data < @a switch.rtb.points

execute as @a[tag=switch.alive] if score @s switch.rtb.points = #min_score switch.data run tag @s add switch.looser_score



scoreboard players set #max_time switch.data 0
scoreboard players operation #max_time switch.data > @a switch.rtb.time

execute as @a[tag=switch.alive] if score @s switch.rtb.time = #max_time switch.data run tag @s add switch.looser_time

tag @r[tag=switch.alive,tag=switch.looser_score,tag=switch.looser_time,limit=1] add switch.looser

tellraw @a [{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Le joueur ","color":"red"},{"selector":"@a[tag=switch.looser]","color":"red"},{"text":" a été éliminé !","color":"red"}]


execute as @p[tag=switch.looser] run function switch:modes/replicate_the_build/utils/explose_island


tag @a remove switch.looser_score
tag @a remove switch.looser_time
tag @a[tag=switch.looser] remove switch.alive
tag @a remove switch.looser

kill @e[tag=switch.rtb.verify]


scoreboard players set #rtb_wait_explosion switch.data 40


