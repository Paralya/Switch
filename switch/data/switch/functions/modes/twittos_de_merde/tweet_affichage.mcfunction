scoreboard players set #timer_phase_de_vote switch.data 0
scoreboard players set @r[scores={passage_vote=0}] passage_vote -1
scoreboard players set @r[scores={passage_vote=1}] passage_vote 0
playsound minecraft:ui.button.click weather @a
tellraw @a [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={passage_vote=0}]"},{"text":"] "},{"nbt":"Inventory[0].tag.pages","interpret":true,"entity":"@r[scores={passage_vote=0}]","color":"yellow"}]

# playsound minecraft:block.note_block.pling ambient @a (peut-être un jour ? je garde de coté)