
scoreboard players set #list_index switch.data 0
data modify storage switch:main copy set from storage switch:main minigames
function switch:engine/voting_time/get/index_information

scoreboard players add #index switch.data 1
execute if score #index switch.data matches ..6 run function switch:engine/voting_time/get/information

