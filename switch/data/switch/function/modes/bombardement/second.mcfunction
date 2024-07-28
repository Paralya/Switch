
# Classic timer
scoreboard players add #bombardement_seconds switch.data 1
function switch:modes/bombardement/xp_bar

# Bombardment
execute if score #bombardement_seconds switch.data matches 0 in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 5 in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 8 in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 11 in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 15 in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 17 in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 19 in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 20.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 30.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 40.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 50.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 60.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 70.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 80.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 90.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 100.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 110.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 120.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 130.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 140.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 150.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 160.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 170.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 180.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 190.. in minecraft:overworld run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 200.. in minecraft:overworld run function switch:modes/bombardement/summon

execute if score #bombardement_seconds switch.data matches 60 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,gamemode=adventure] only switch:visible/37
