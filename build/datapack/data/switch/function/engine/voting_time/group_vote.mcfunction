
#> switch:engine/voting_time/group_vote
#
# @within	switch:engine/launch_game/resolve_group
#

# The games of the group become the vote selections
data modify storage switch:main selections set from storage switch:main group_pool_filtered
scoreboard players set #vote_round switch.data 2
scoreboard players operation #vote_slots switch.data = #pool_size switch.data
scoreboard players set #voting_timer switch.data 200

# Reset the votes and show the new vote to everyone
schedule clear switch:engine/voting_time/schedule_message
scoreboard players set #vote_game_1 switch.data 0
scoreboard players set #vote_game_2 switch.data 0
scoreboard players set #vote_game_3 switch.data 0
scoreboard players set #vote_game_4 switch.data 0
scoreboard players set #vote_game_5 switch.data 0
scoreboard players set #vote_game_6 switch.data 0
scoreboard players set #vote_game_7 switch.data 0
scoreboard players set #vote_game_8 switch.data 0
scoreboard players set @a switch.trigger.game_vote 0
execute as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute as @a[tag=!detached] run function switch:engine/voting_time/message

schedule function switch:engine/voting_time/tick 1t

