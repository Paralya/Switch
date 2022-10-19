
##Kart visual
scoreboard players set #success switch.data 0
scoreboard players operation #predicate switch.id = @s switch.id
execute store success score #success switch.data run tp @s @e[tag=switch.kart,predicate=switch:has_same_id,limit=1]
execute if score #success switch.data matches 0 run kill @s

