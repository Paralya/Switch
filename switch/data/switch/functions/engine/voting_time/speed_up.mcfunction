
execute as @a[tag=!detached] at @s run playsound entity.villager.celebrate ambient @s
tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tous les joueurs ont voté, accélération du timer !"}]
scoreboard players set #voting_timer switch.data 99

