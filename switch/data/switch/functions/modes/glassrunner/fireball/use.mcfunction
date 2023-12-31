execute positioned ~ ~1.8 ~ run summon fireball ^ ^ ^1.5 {Tags:["switch.glassrunner.fireball"]}
scoreboard players remove @s switch.glassrunner.money 15
xp add @s -15 levels
tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"Vous avez dépensé 15 pièces pour invoquer une boule de feu !"}]
