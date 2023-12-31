


execute unless data entity @s Inventory[{tag:{ctc:{id:"glassrunner:bow"}}}] run loot give @s loot switch:glassrunner/bow
execute unless data entity @s Inventory[{tag:{ctc:{id:"glassrunner:fireball_wand"}}}] run loot give @s loot switch:glassrunner/fireball_wand
give @s arrow 4

item replace entity @s inventory.12 with flint{to_clear:1b,display:{Name:'[{"text":"Flèches x5","color":"white","italic":false}]',Lore:['[{"text":"Vous ravitaille en flèches !","color":"dark_gray","italic":false}]','[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"5 levels","color":"gold"}]']},HideFlags:1}
item replace entity @s inventory.10 with minecraft:snow_block{to_clear:1b,display:{Name:'[{"text":"Snowball renforcée x5","color":"white","italic":false}]',Lore:['[{"text":"Permet de faire des bridges dirrectement en vitre foncée !","color":"dark_gray","italic":false}]','[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"8 levels","color":"gold"}]']},HideFlags:1}



scoreboard players set 