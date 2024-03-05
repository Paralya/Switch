
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de SheepWars dans 5 secondes, exterminez l'équipe ennemi grâce à vos moutons spéciaux et votre équipement !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaPvPOld","storage":"switch:main","interpret":true}]
execute if score #APOCALYPSE_GAME switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" PARTIE APOCALYPTIQUE (1 chance sur 20) !\n"}]

