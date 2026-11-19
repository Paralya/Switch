
#> switch:engine/voting_time/add_random_slot
#
# @within	switch:engine/voting_time/group_vote with storage switch:temp random
#
# @args		index (unknown)
#

$data modify storage switch:temp random_entry set from storage switch:main group_pool_filtered[$(index)]
data modify storage switch:temp random_entry.display_name_fr set value {"text":"Aléatoire","color":"yellow"}
data modify storage switch:temp random_entry.display_name_en set value {"text":"Random","color":"yellow"}
data modify storage switch:temp random_entry.lore_fr set value ["",{"text":"[Aléatoire]\n","color":"yellow"},{"text":"Un choix tiré au hasard parmi les options"}]
data modify storage switch:temp random_entry.lore_en set value ["",{"text":"[Random]\n","color":"yellow"},{"text":"A choice drawn at random among the options"}]
data modify storage switch:main selections append from storage switch:temp random_entry

