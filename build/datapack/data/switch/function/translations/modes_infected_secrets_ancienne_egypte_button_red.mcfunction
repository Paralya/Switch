
#> switch:translations/modes_infected_secrets_ancienne_egypte_button_red
#
# @within	switch:modes/infected/secrets/ancienne_egypte/button_red
#

# French
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Hmmm, il semblerait qu'il faut des personnes de chaque côté !"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Pardonnez-moi, je... compte sur vous pour la suite !"}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Vous êtes vraiment des personnes de confiance, c'est pourquoi je vous confie la suite. Adieu..."}]

# English
execute if score #success switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Hmmm, looks like we need people on both sides!"}]
execute if score #random switch.data matches 0 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Pardon me, I... count on you for the rest!"}]
execute if score #random switch.data matches 1 as @p[team=switch.temp.human,distance=..12] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> You really are trustworthy people, which is why I'm entrusting you with the rest. Farewell..."}]

