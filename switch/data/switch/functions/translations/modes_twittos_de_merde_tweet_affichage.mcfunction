
# French
# tellraw @a[tag=!detached] [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={switch.lang=0,switch.temp.passage_vote=0}]"},{"text":"] "},{"nbt":"Inventory[0].tag.pages","interpret":true,"entity":"@r[scores={switch.lang=0,switch.temp.passage_vote=0}]","color":"yellow"}]
# execute if data entity @s Items[0].tag.pages[{id:"minecraft:written_book"}] run tellraw @a[tag=!detached] [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={switch.lang=0,switch.temp.passage_vote=0}]"},{"text":"] "},{"nbt":"Items[0].tag.pages","interpret":true,"entity":"@r[scores={switch.lang=0,switch.temp.passage_vote=0}]","color":"yellow"}]

