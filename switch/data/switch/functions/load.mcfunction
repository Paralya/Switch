
tag Stoupy51 add convention.debug

scoreboard objectives add switch.money dummy

scoreboard objectives add switch.data dummy
scoreboard objectives add switch.money dummy
scoreboard objectives add switch.last_game_id dummy
scoreboard objectives add switch.leave minecraft.custom:minecraft.leave_game

scoreboard objectives add switch.trigger.help trigger
scoreboard objectives add switch.trigger.money trigger
scoreboard objectives add switch.trigger.game_vote trigger

scoreboard players set switch load.status 1000
forceload add 0 0

#define storage switch:main
#define score_holder #success
#define score_holder #valid
#define score_holder #count
#define score_holder #temp
#define score_holder #pos

gamerule spectatorsGenerateChunks false
gamerule doTraderSpawning false

##Storage
#tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Souhaitez tous la bienvenue à "},{"selector":"@s","color":"aqua"},{"text":" !\nN'oublie pas de remercier le joueur de ton choix de l'invitation pour avoir des récompenses avec /merci"}]
data modify storage switch:main ParalyaWarning set value '[{"text":"[ParalyaWarning]","color":"gold"}]'
data modify storage switch:main ParalyaError set value '[{"text":"[ParalyaError]","color":"red"}]'
data modify storage switch:main ParalyaHelp set value '[{"text":"[","color":"dark_aqua"},{"text":"ParalyaHelp","color":"aqua"},{"text":"]","color":"dark_aqua"}]'
data modify storage switch:main Paralya set value '[{"text":"[","color":"dark_aqua"},{"text":"Paralya","color":"aqua"},{"text":"]","color":"dark_aqua"}]'

scoreboard players set #-1 switch.data -1
scoreboard players set #1 switch.data 1


##Define mini-games list
data modify storage switch:main minigames set value []
data modify storage switch:main minigames append value {id:"pitch_creep",Name:"Pitch Creep",Lore:'[{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée en expulsant les\\n"},{"text":"creepers qui vous attaquent.\\n"}'}
data modify storage switch:main minigames append value {id:"none_2",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}
data modify storage switch:main minigames append value {id:"none_3",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}
data modify storage switch:main minigames append value {id:"none_4",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}
data modify storage switch:main minigames append value {id:"none_5",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}
data modify storage switch:main minigames append value {id:"none_6",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}
data modify storage switch:main minigames append value {id:"none_7",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}
data modify storage switch:main minigames append value {id:"none_8",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}
data modify storage switch:main minigames append value {id:"none_9",Name:"Rien de spécial",Lore:'[{"text":"Vraiment rien ici"}]'}


##States
execute if score #state switch.data matches 0 run tell none à l'arrêt
execute if score #state switch.data matches 1 run tell none engine start
execute if score #state switch.data matches 2 run tell none temps de vote
execute if score #state switch.data matches 3 run tell none game en cours
