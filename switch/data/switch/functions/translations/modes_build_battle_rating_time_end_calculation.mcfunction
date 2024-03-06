
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Classement par points :"}]
execute as @a[scores={switch.temp.rank=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"\n1er ","color":"#FFE700"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"\n2ème","color":"#C0C0C0"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=3}] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"\n3ème","color":"#CD7F32"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=4..}] run tellraw @s[scores={switch.lang=0}] [{"text":"\n","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.rank"}},{"text":"ème"},{"text":" -  ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":"    "},{"selector":"@s","color":"gray"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ""

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"Ranking by points:"}]
execute as @a[scores={switch.temp.rank=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"\n1er ","color":"#FFE700"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"\n2ème","color":"#C0C0C0"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=3}] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"\n3ème","color":"#CD7F32"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
execute as @a[scores={switch.temp.rank=4..}] run tellraw @s[scores={switch.lang=1}] [{"text":"\n","color":"gray"},{"score":{"name":"@s","objective":"switch.temp.rank"}},{"text":"ème"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"switch.temp.points"}},{"text":" "},{"selector":"@s","color":"gray"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ""

