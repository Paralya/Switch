tp @r[scores={switch.temp.passage_vote=0}] 1 101 1
scoreboard players set #timer_phase_de_vote switch.data 0
# switch.temp.passage_vote = 1, pas passé, 0 -> en train de passer, -1 -> déjà passé
scoreboard players set @r[scores={switch.temp.passage_vote=0}] switch.temp.passage_vote -1
tag @a[tag=!detached,scores={switch.temp.passage_vote=-1}] remove switch.player_to_rate
scoreboard players set @r[scores={switch.temp.passage_vote=1}] switch.temp.passage_vote 0
tag @a[tag=!detached,scores={switch.temp.passage_vote=0}] add switch.player_to_rate
execute if entity @a[tag=!detached,scores={switch.temp.numero_vote=0}] run function switch:modes/twittos_de_merde/switch.temp.numero_vote_attribu 
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
# (enlever le # à la fin du dev)

execute unless data entity @r[scores={switch.temp.passage_vote=0}] Inventory[{id:"minecraft:written_book"}] run function switch:modes/twittos_de_merde/tweet/tweet_pas_signe
# tellraw @a[tag=!detached] [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={switch.temp.passage_vote=0}]"},{"text":"] "},{"nbt":"Inventory[0].tag.pages","interpret":true,"entity":"@r[scores={switch.temp.passage_vote=0}]","color":"yellow"}]
execute if data entity @r[scores={switch.temp.passage_vote=0}] Inventory[{id:"minecraft:written_book"}] run function switch:modes/twittos_de_merde/tweet/tweet_signe
tp @r[scores={switch.temp.passage_vote=0}] 1 108 1 
# execute if data entity @s Items[0].tag.pages[{id:"minecraft:written_book"}] run tellraw @a[tag=!detached] [{"text":"[Tweet de @","color":"aqua"},{"selector":"@r[scores={switch.temp.passage_vote=0}]"},{"text":"] "},{"nbt":"Items[0].tag.pages","interpret":true,"entity":"@r[scores={switch.temp.passage_vote=0}]","color":"yellow"}]
# playsound minecraft:block.note_block.pling ambient @a[tag=!detached] (peut-être un jour ? je garde de coté)
