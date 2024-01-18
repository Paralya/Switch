
data modify storage switch:temp copy set from storage switch:advancements all
data modify storage switch:temp new set value []
execute if data storage switch:temp copy[0] run function switch:advancements/percentages_recalculation_loop with storage switch:temp copy[0]

