
#> switch:translations/modes_infected_secrets_lost_graveyard_next_state
#
# @within	switch:modes/infected/secrets/lost_graveyard/next_state
#

# French
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Fascinant... Ce pot mystérieux semble absorber l'essence même des zombies que j'élimine. Je peux voir les âmes tourbillonner à l'intérieur !"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Oof ! Le pot vient d'éclater ! La puissance était si colossale que la porte en acier renforcé s'est désintégrée !"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Eurêka ! J'ai réussi à synthétiser un explosif en combinant le sable et la poudre des creepers. Ce foutu minerai maudit ne résistera pas longtemps !"}]
execute if score #infected_secret switch.data matches 4 as @p[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Mission accomplie ! Le minerai n'est plus qu'un tas de débris fumants ! J'ai récupéré l'échantillon !"}]
execute if score #infected_secret switch.data matches 4 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Notre dernière épreuve nous attend : tenir bon jusqu'au retour des renforts. Ces échantillons de minerai doivent absolument être analysés au méga-laboratoire. L'avenir de l'humanité en dépend !"}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Fascinating... This mysterious jar appears to be absorbing the very essence of the zombies I eliminate. I can see their souls swirling inside!"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Oof! The jar just exploded! The power was so immense that the reinforced steel door disintegrated!"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Eureka! I've managed to synthesize an explosive by combining sand with the powder from the creepers. This damn cursed ore won't stand a chance!"}]
execute if score #infected_secret switch.data matches 4 as @p[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Mission accomplished! The ore is nothing but smoldering debris now! I've retrieved the sample!"}]
execute if score #infected_secret switch.data matches 4 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Our final trial awaits: hold out until reinforcements arrive. These ore samples must be analyzed at the mega-lab. The future of humanity might depend on it!"}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

