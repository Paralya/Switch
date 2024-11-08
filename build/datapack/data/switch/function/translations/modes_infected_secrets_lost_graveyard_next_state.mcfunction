
#> switch:translations/modes_infected_secrets_lost_graveyard_next_state
#
# @within	switch:modes/infected/secrets/lost_graveyard/next_state
#

# French
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Bizarre, on dirait que ce pot accumule les âmes des zombies que je tue !"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ahhh, le pot vient d'éclater, la puissance était tellment grande que la porte s'est vue détruite !"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ok, j'ai réussi à fabriquer une TNT avec le sable et la poudre des creepers, on peut aller faire péter ce foutu minerai !"}]
execute if score #infected_secret switch.data matches 4 as @p[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> C'est bon, le minerai est détruit !"}]
execute if score #infected_secret switch.data matches 4 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Il n'y a plus qu'une seule chose à faire, c'est de survivre jusqu'à ce que nos renforts arrivent afin d'aller étudier ce minerai au méga-laboratoire !"}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Weird, it looks like this jar is collecting souls from the zombies I kill!"}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ahhh, the jar just burst, the power was so great that the door was destroyed!"}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ok, I've managed to make a TNT with the sand and powder from the creepers, we can go and blow up the damn ore!"}]
execute if score #infected_secret switch.data matches 4 as @p[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> That's it, the ore's destroyed!"}]
execute if score #infected_secret switch.data matches 4 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> There's only one thing left to do, and that's survive until our military arrives to study this ore at the mega-lab!"}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued.","color":"dark_gray","italic":true}]

