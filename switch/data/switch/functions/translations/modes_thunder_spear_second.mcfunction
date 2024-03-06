
# French
execute if score #thunder_spear_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Scrollez dans votre hotbar pour utiliser le grappin en seconde main !"}]

# English
execute if score #thunder_spear_seconds switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":"Scrollez dans votre hotbar pour utiliser le grappin en seconde main!"}]

