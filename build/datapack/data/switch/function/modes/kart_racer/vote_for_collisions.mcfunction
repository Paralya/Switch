
#> switch:modes/kart_racer/vote_for_collisions
#
# @executed	as @a[tag=!detached,scores={switch.right_click=1..}]
#
# @within	switch:modes/kart_racer/right_click
#

scoreboard players set @s switch.temp.vote_collisions 1

scoreboard players set #votes switch.data 0
scoreboard players set #votes_max switch.data 0
execute store result score #votes switch.data if entity @a[scores={switch.temp.vote_collisions=1}]
execute store result score #votes_max switch.data if entity @a[tag=!detached,gamemode=!spectator]
scoreboard players operation #votes_max switch.data /= #2 switch.data
scoreboard players add #votes_max switch.data 1

execute if score #votes switch.data >= #votes_max switch.data run scoreboard players set @a[tag=!detached] switch.temp.vote_collisions 1
function switch:translations/modes_kart_racer_vote_for_collisions
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.kart collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.1 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.2 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.3 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.4 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.5 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.6 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.7 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.8 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.9 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.10 collisionRule always
execute if score #votes switch.data >= #votes_max switch.data run team modify switch.temp.10+ collisionRule always

