
# Classic timer
scoreboard players add #bombardement_seconds switch.data 1
function switch:modes/bombardement/xp_bar

# Bombardement
execute if score #bombardement_seconds switch.data matches 0 run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 5 run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 8 run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 11 run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 15 run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 17 run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 19 run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 20.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 30.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 40.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 50.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 60.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 70.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 80.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 90.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 100.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 110.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 120.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 130.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 140.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 150.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 160.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 170.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 180.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 190.. run function switch:modes/bombardement/summon
execute if score #bombardement_seconds switch.data matches 200.. run function switch:modes/bombardement/summon

