
# Choose a solitaire alive
tag @r[tag=!detached,scores={switch.alive=1..,switch.temp.role=2..4}] add switch.solitaire

# Tellraw
tellraw @p[tag=switch.solitaire] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Vous avez été choisi comme Solitaire, soyez le dernier en vie pour gagner la partie !","color":"yellow"}]
attribute @p[tag=switch.solitaire] generic.max_health base set 24

