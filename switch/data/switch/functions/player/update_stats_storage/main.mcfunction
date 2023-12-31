
# Get username
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
data modify storage switch:main input set value {player:""}
data modify storage switch:main input.player set from block 0 0 0 Items[0].tag.SkullOwner.Name
setblock 0 0 0 air

# Insert global stats
function switch:player/update_stats_storage/global_stats with storage switch:main input

# Insert stats per game
data modify storage switch:main copy set from storage switch:main minigames
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/update_stats_storage/stats_per_minigame with storage switch:main copy[0]

