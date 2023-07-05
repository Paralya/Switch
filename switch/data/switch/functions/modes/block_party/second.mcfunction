
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Classic timer
scoreboard players add #block_party_seconds switch.data 1
execute if score #block_party_seconds switch.data matches 0 as @a at @s run function switch:modes/block_party/give_items
function switch:modes/block_party/xp_bar

# Pick a random art 5 seconds before the start of the game
execute if score #block_party_seconds switch.data matches -5 summon marker run function switch:modes/block_party/core/pick_random_art

