
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Classic timer
scoreboard players add #block_party_seconds switch.data 1
execute if score #block_party_seconds switch.data matches 0 as @a at @s run function switch:modes/block_party/give_items
function switch:modes/block_party/xp_bar

# Start countdown
execute if score #block_party_seconds switch.data matches -5..0 as @a at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #block_party_seconds switch.data matches -5 run title @a title {"text":"5","color":"red"}
execute if score #block_party_seconds switch.data matches -4 run title @a title {"text":"4","color":"red"}
execute if score #block_party_seconds switch.data matches -3 run title @a title {"text":"3","color":"red"}
execute if score #block_party_seconds switch.data matches -2 run title @a title {"text":"2","color":"red"}
execute if score #block_party_seconds switch.data matches -1 run title @a title {"text":"1","color":"red"}
execute if score #block_party_seconds switch.data matches 0 run title @a title {"text":"GO !","color":"red"}

