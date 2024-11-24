
#> switch:translations/modes_infected_secrets_ancienne_egypte_button_red
#
# @within	switch:modes/infected/secrets/ancienne_egypte/button_red
#

# French
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ces mécanismes anciens sont fascinants... D'après les écritures, il faut activer les leviers simultanément des deux côtés pour ouvrir le passage !"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Je... je sens mes forces m'abandonner. Pardonnez-moi, continuez sans moi et découvrez la vérité derrière tout ça..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Écoutez-moi bien... Dans cette tombe repose peut-être le secret de cette épidémie. Je vous fais confiance pour percer ce mystère..."}]

# English
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> These ancient mechanisms are fascinating... According to the writings, we need to activate the levers simultaneously on both sides to open the passage!"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> I... I can feel my strength fading. Please, continue without me and uncover the truth behind all of this..."}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Listen carefully... This tomb might hold the secret to this epidemic. I trust you to solve this mystery..."}]

