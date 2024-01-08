
# Macro input {index:0,index_hundred:0,digits:0}
$tellraw @s [{"text":"[","color":"aqua"},{"nbt":"minigames[{index:$(index)}].Name","storage":"switch:main","interpret":false,"color":"aqua"},{"text":"] ","color":"aqua"},{"text":"Notez ce mini-jeu : ","color":"white"},\
	{"text":"✮","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Noter 1 étoile","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger switch.trigger.rating set $(index)01"}},\
	{"text":"✮","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Noter 2 étoiles","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger switch.trigger.rating set $(index)02"}},\
	{"text":"✮","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Noter 3 étoiles","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger switch.trigger.rating set $(index)03"}},\
	{"text":"✮","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Noter 4 étoiles","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger switch.trigger.rating set $(index)04"}},\
	{"text":"✮","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Noter 5 étoiles","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger switch.trigger.rating set $(index)05"}}]

