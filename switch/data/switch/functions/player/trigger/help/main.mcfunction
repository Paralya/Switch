

tellraw @s[scores={switch.trigger.help=-11..}] ["\n",{"nbt":"ParalyaHelp","storage":"switch:main","interpret":true},{"text":" Page d'aide n°1/1 :"}]
tellraw @s[scores={switch.trigger.help=-11..}] [{"text":" - "},{"text":"/help [<page>] : ","color":"yellow"},{"text":"Affiche la page d'aide adéquate"}]

tellraw @s ""

scoreboard players set @s switch.trigger.help 0
