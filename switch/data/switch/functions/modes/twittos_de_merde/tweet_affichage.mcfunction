
scoreboard players set #timer_phase_de_vote switch.data 0
scoreboard players set @r[scores={passage_vote=0}] passage_vote -1
scoreboard players set @r[scores={passage_vote=1}] passage_vote 0
# execute as @a at @s run playsound entity.experience_orb.pickup ambient @s
# (enlever le # à la fin du dev)

execute unless data entity @r[scores={passage_vote=0}] Inventory[{id:"minecraft:written_book"}] run tellraw @a [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={passage_vote=0}]"},{"text":"] "},{"nbt":"Inventory[0].tag.pages[0]","interpret":false,"entity":"@r[scores={passage_vote=0}]","color":"yellow"}]
# tellraw @a [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={passage_vote=0}]"},{"text":"] "},{"nbt":"Inventory[0].tag.pages","interpret":true,"entity":"@r[scores={passage_vote=0}]","color":"yellow"}]
execute if data entity @r[scores={passage_vote=0}] Inventory[{id:"minecraft:written_book"}] run tellraw @a [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={passage_vote=0}]"},{"text":"] "},{"nbt":"Inventory[0].tag.pages[0]","interpret":true,"entity":"@r[scores={passage_vote=0}]","color":"yellow"}]
tp @r[scores={passage_vote=0}] 1 108 1 
# execute if data entity @s Items[0].tag.pages[{id:"minecraft:written_book"}] run tellraw @a [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={passage_vote=0}]"},{"text":"] "},{"nbt":"Items[0].tag.pages","interpret":true,"entity":"@r[scores={passage_vote=0}]","color":"yellow"}]
# playsound minecraft:block.note_block.pling ambient @a (peut-être un jour ? je garde de coté)
