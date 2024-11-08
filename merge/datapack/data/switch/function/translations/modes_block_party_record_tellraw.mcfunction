
# French
$execute if score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(round) manches par $(player) !","color":"yellow"}]
$execute unless score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(round) manches détenu par $(player)","color":"yellow"}]

# English
$execute if score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New $(round) round record by $(player)!","color":"yellow"}]
$execute unless score #block_party_round switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(round) rounds held by $(player)","color":"yellow"}]

