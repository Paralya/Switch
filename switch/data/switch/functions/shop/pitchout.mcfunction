
# Tutorial stuff
execute if score @s switch.trigger.shop matches 100 if score @s switch.tutorial matches 3 run scoreboard players set @s switch.tutorial 4


# Boots
scoreboard players set #success switch.data 0
scoreboard players add @s switch.pitchout.boots 0
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 2 if score @s switch.money matches 150.. store success score #success switch.data run scoreboard players remove @s switch.money 150
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 3 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 101 if score @s switch.pitchout.boots matches 4 if score @s switch.money matches 250.. store success score #success switch.data run scoreboard players remove @s switch.money 250
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. run scoreboard players add @s switch.pitchout.boots 1
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour les bottes en cuir a été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 1.. if score @s switch.tutorial matches 4 run scoreboard players set @s switch.tutorial 5
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour améliorer vos bottes en cuir !","color":"red"}]
execute if score @s switch.trigger.shop matches 101 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Ender Pearl
scoreboard players set #success switch.data 0
scoreboard players add @s switch.pitchout.ender_pearl 0
execute if score @s switch.trigger.shop matches 102 if score @s switch.pitchout.ender_pearl matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 80
execute if score @s switch.trigger.shop matches 102 if score @s switch.pitchout.ender_pearl matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 160
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. run scoreboard players add @s switch.pitchout.ender_pearl 1
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour les ender pearls a été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 1.. if score @s switch.tutorial matches 4 run scoreboard players set @s switch.tutorial 5
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour acheter des ender pearls supplémentaires !","color":"red"}]
execute if score @s switch.trigger.shop matches 102 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Messages
execute if score @s switch.trigger.shop matches 100 run playsound block.note_block.bell ambient @s
tellraw @s [{"text":"[Boutique Pitchout]\n","color":"yellow"}]
execute if score @s switch.pitchout.boots matches 0 run tellraw @s [{"text":"Bottes en cuir","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 101"},"hoverEvent":{"action":"show_text","contents":[{"text":"Rien -> Bottes en cuir avec 20 de durabilité\n","color":"green"},{"text":"Acheter pour 50$","color":"yellow"}]}}]
execute if score @s switch.pitchout.boots matches 1 run tellraw @s [{"text":"Bottes en cuir","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 101"},"hoverEvent":{"action":"show_text","contents":[{"text":"20 -> 30 de durabilité\n","color":"green"},{"text":"Acheter pour 100$","color":"yellow"}]}}]
execute if score @s switch.pitchout.boots matches 2 run tellraw @s [{"text":"Bottes en cuir","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":"✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 101"},"hoverEvent":{"action":"show_text","contents":[{"text":"30 -> 40 de durabilité\n","color":"green"},{"text":"Acheter pour 150$","color":"yellow"}]}}]
execute if score @s switch.pitchout.boots matches 3 run tellraw @s [{"text":"Bottes en cuir","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮","color":"yellow"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 101"},"hoverEvent":{"action":"show_text","contents":[{"text":"40 -> 50 de durabilité\n","color":"green"},{"text":"Acheter pour 200$","color":"yellow"}]}}]
execute if score @s switch.pitchout.boots matches 4 run tellraw @s [{"text":"Bottes en cuir","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 101"},"hoverEvent":{"action":"show_text","contents":[{"text":"50 -> 65 de durabilité\n","color":"green"},{"text":"Acheter pour 250$","color":"yellow"}]}}]
execute if score @s switch.pitchout.boots matches 5 run tellraw @s [{"text":"Bottes en cuir","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]
execute if score @s switch.pitchout.ender_pearl matches 0 run tellraw @s [{"text":"Ender Pearls","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 102"},"hoverEvent":{"action":"show_text","contents":[{"text":"3 -> 4 ender pearls\n","color":"green"},{"text":"Acheter pour 80$","color":"yellow"}]}}]
execute if score @s switch.pitchout.ender_pearl matches 1 run tellraw @s [{"text":"Ender Pearls","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 102"},"hoverEvent":{"action":"show_text","contents":[{"text":"4 -> 5 ender pearls\n","color":"green"},{"text":"Acheter pour 160$","color":"yellow"}]}}]
execute if score @s switch.pitchout.ender_pearl matches 2 run tellraw @s [{"text":"Ender Pearls","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]

