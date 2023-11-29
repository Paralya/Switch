
# Start
tellraw @s [{"text":"[Boutique Infecté]","color":"yellow"}]

# Init scoreboard
scoreboard players add @s switch.infected.sword 0
scoreboard players add @s switch.infected.armor 0
scoreboard players add @s switch.infected.antidote 0
scoreboard players add @s switch.infected.zombie_speed 0
scoreboard players add @s switch.infected.zombie_jump 0
scoreboard players add @s switch.infected.zombie_strength 0
execute if score @s switch.trigger.shop matches 200 run playsound block.note_block.bell ambient @s

## Humain
# Sword
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 201 if score @s switch.infected.sword matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.sword 1
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour améliorer votre épée a bien été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour améliorer votre épée !","color":"red"}]
execute if score @s switch.trigger.shop matches 201 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Armor
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 202 if score @s switch.infected.armor matches 4 if score @s switch.money matches 800.. store success score #success switch.data run scoreboard players remove @s switch.money 800
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.armor 1
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour améliorer votre armure a bien été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour améliorer votre armure !","color":"red"}]
execute if score @s switch.trigger.shop matches 202 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Antidote
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 203 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.antidote 1
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour acheter un antidote a bien été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour acheter un antidote !","color":"red"}]
execute if score @s switch.trigger.shop matches 203 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

## Zombie
# Speed
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 211 if score @s switch.infected.zombie_speed matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_speed 1
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour améliorer votre vitesse a bien été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour améliorer votre vitesse !","color":"red"}]
execute if score @s switch.trigger.shop matches 211 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Strength
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 213 if score @s switch.infected.zombie_strength matches 0 if score @s switch.money matches 50.. store success score #success switch.data run scoreboard players remove @s switch.money 50
execute if score @s switch.trigger.shop matches 213 if score @s switch.infected.zombie_strength matches 1 if score @s switch.money matches 100.. store success score #success switch.data run scoreboard players remove @s switch.money 100
execute if score @s switch.trigger.shop matches 213 if score @s switch.infected.zombie_strength matches 2 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 213 if score @s switch.infected.zombie_strength matches 3 if score @s switch.money matches 400.. store success score #success switch.data run scoreboard players remove @s switch.money 400
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_strength 1
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour améliorer votre force a bien été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour améliorer votre force !","color":"red"}]
execute if score @s switch.trigger.shop matches 213 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Jump
scoreboard players set #success switch.data 0
execute if score @s switch.trigger.shop matches 212 if score @s switch.infected.zombie_jump matches 0 if score @s switch.money matches 200.. store success score #success switch.data run scoreboard players remove @s switch.money 200
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 1.. run scoreboard players add @s switch.infected.zombie_jump 1
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 1.. run tellraw @s [{"text":"Votre achat pour améliorer votre saut a bien été effectué !","color":"green"}]
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 1.. run playsound entity.player.levelup ambient @s
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 0 run tellraw @s [{"text":"Vous n'avez pas assez d'argent pour améliorer votre saut !","color":"red"}]
execute if score @s switch.trigger.shop matches 212 if score #success switch.data matches 0 run playsound entity.zombie.attack_iron_door ambient @s

# Messages
tellraw @s [{"text":"➤ ","color":"gold"},{"text":"Humain","color":"yellow"}]
execute if score @s switch.infected.sword matches 0 run tellraw @s [{"text":"Épée","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 201"},"hoverEvent":{"action":"show_text","contents":[{"text":"Wooden Sword -> Stone Sword\n","color":"green"},{"text":"Acheter pour 50$","color":"yellow"}]}}]
execute if score @s switch.infected.sword matches 1 run tellraw @s [{"text":"Épée","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 201"},"hoverEvent":{"action":"show_text","contents":[{"text":"Stone Sword -> Iron Sword\n","color":"green"},{"text":"Acheter pour 100$","color":"yellow"}]}}]
execute if score @s switch.infected.sword matches 2 run tellraw @s [{"text":"Épée","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 201"},"hoverEvent":{"action":"show_text","contents":[{"text":"Iron Sword -> Diamond Sword\n","color":"green"},{"text":"Acheter pour 200$","color":"yellow"}]}}]
execute if score @s switch.infected.sword matches 3 run tellraw @s [{"text":"Épée","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 201"},"hoverEvent":{"action":"show_text","contents":[{"text":"Diamond Sword -> Stardust Sword\n","color":"green"},{"text":"Acheter pour 400$","color":"yellow"}]}}]
execute if score @s switch.infected.sword matches 4 run tellraw @s [{"text":"Épée","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]
execute if score @s switch.infected.armor matches 0 run tellraw @s [{"text":"Armure","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 202"},"hoverEvent":{"action":"show_text","contents":[{"text":"Leather Armor -> Chainmail Armor\n","color":"green"},{"text":"Acheter pour 50$","color":"yellow"}]}}]
execute if score @s switch.infected.armor matches 1 run tellraw @s [{"text":"Armure","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 202"},"hoverEvent":{"action":"show_text","contents":[{"text":"Chainmail Armor -> Golden Armor\n","color":"green"},{"text":"Acheter pour 100$","color":"yellow"}]}}]
execute if score @s switch.infected.armor matches 2 run tellraw @s [{"text":"Armure","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":"✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 202"},"hoverEvent":{"action":"show_text","contents":[{"text":"Golden Armor -> Iron Armor\n","color":"green"},{"text":"Acheter pour 200$","color":"yellow"}]}}]
execute if score @s switch.infected.armor matches 3 run tellraw @s [{"text":"Armure","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮","color":"yellow"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 202"},"hoverEvent":{"action":"show_text","contents":[{"text":"Iron Armor -> Diamond Armor\n","color":"green"},{"text":"Acheter pour 400$","color":"yellow"}]}}]
execute if score @s switch.infected.armor matches 4 run tellraw @s [{"text":"Armure","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 202"},"hoverEvent":{"action":"show_text","contents":[{"text":"Diamond Armor -> Stardust Armor\n","color":"green"},{"text":"Acheter pour 800$","color":"yellow"}]}}]
execute if score @s switch.infected.armor matches 5 run tellraw @s [{"text":"Armure","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]
tellraw @s [{"text":"Antidote","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"x","color":"yellow"},{"score":{"name":"@s","objective":"switch.infected.antidote"},"color":"yellow"},{"text":" [+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 203"},"hoverEvent":{"action":"show_text","contents":[{"text":"Permet d'empêcher la transformation en zombie\n","color":"green"},{"text":"Acheter pour 50$","color":"yellow"}]}}]
tellraw @s [{"text":"➤ ","color":"gold"},{"text":"Infecté","color":"yellow"}]
execute if score @s switch.infected.zombie_speed matches 0 run tellraw @s [{"text":"Vitesse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 211"},"hoverEvent":{"action":"show_text","contents":[{"text":"+20% de vitesse\n","color":"green"},{"text":"Acheter pour 50$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_speed matches 1 run tellraw @s [{"text":"Vitesse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 211"},"hoverEvent":{"action":"show_text","contents":[{"text":"+30% de vitesse\n","color":"green"},{"text":"Acheter pour 100$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_speed matches 2 run tellraw @s [{"text":"Vitesse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 211"},"hoverEvent":{"action":"show_text","contents":[{"text":"+40% de vitesse\n","color":"green"},{"text":"Acheter pour 200$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_speed matches 3 run tellraw @s [{"text":"Vitesse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 211"},"hoverEvent":{"action":"show_text","contents":[{"text":"+50% de vitesse\n","color":"green"},{"text":"Acheter pour 400$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_speed matches 4 run tellraw @s [{"text":"Vitesse","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]
execute if score @s switch.infected.zombie_strength matches 0 run tellraw @s [{"text":"Force","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 213"},"hoverEvent":{"action":"show_text","contents":[{"text":"4.0 -> 4.5 dégâts par coup\n","color":"green"},{"text":"Acheter pour 50$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_strength matches 1 run tellraw @s [{"text":"Force","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":"✮✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 213"},"hoverEvent":{"action":"show_text","contents":[{"text":"4.5 -> 5.0 dégâts par coup\n","color":"green"},{"text":"Acheter pour 100$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_strength matches 2 run tellraw @s [{"text":"Force","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮","color":"yellow"},{"text":"✮✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 213"},"hoverEvent":{"action":"show_text","contents":[{"text":"5.0 -> 5.5 dégâts par coup\n","color":"green"},{"text":"Acheter pour 200$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_strength matches 3 run tellraw @s [{"text":"Force","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮","color":"yellow"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 213"},"hoverEvent":{"action":"show_text","contents":[{"text":"5.5 -> 6.0 dégâts par coup\n","color":"green"},{"text":"Acheter pour 400$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_strength matches 4 run tellraw @s [{"text":"Force","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮✮✮✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]
execute if score @s switch.infected.zombie_jump matches 0 run tellraw @s [{"text":"Saut","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮ ","color":"gray"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.shop set 212"},"hoverEvent":{"action":"show_text","contents":[{"text":"Effet jump boost 2\n","color":"green"},{"text":"Acheter pour 200$","color":"yellow"}]}}]
execute if score @s switch.infected.zombie_jump matches 1 run tellraw @s [{"text":"Saut","color":"aqua"},{"text":" | ","bold":true,"color":"dark_gray"},{"text":"✮","color":"yellow"},{"text":" ","color":"gray"},{"text":"[+]","color":"gray"}]

