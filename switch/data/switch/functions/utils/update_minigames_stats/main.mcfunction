
# For each minigame
data modify storage switch:main copy set from storage switch:main minigames
execute if data storage switch:main copy[0] run function switch:utils/update_minigames_stats/loop_minigame with storage switch:main copy[0]

