
#> switch:modes/beat_the_kings/advancements/hurt_player
#
# @within	???
#

advancement revoke @s only switch:beat_the_kings/hurt_entity
execute if data storage switch:main {current_game:"beat_the_kings"} run scoreboard players add @s switch.temp.damages 1

