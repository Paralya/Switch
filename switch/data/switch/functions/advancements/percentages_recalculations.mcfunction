
data modify storage switch:temp copy set from storage switch:advancements all
data modify storage switch:temp new set value []
execute if data storage switch:temp copy[0] run function switch:advancements/percentages_recalculation_loop
data modify storage switch:advancements all set from storage switch:temp new

