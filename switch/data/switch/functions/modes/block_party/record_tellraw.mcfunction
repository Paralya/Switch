
$execute if score #block_party_round switch.data > #record switch.data run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(round) manches par $(player) !","color":"yellow"}]
$execute unless score #block_party_round switch.data > #record switch.data run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(round) manches détenu par $(player)","color":"yellow"}]
scoreboard players reset #record switch.data
