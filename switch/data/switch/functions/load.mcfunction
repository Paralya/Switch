
tag Stoupy51 add convention.debug

scoreboard objectives add switch.money dummy

scoreboard objectives add switch.data dummy
scoreboard objectives add switch.money dummy
scoreboard objectives add switch.last_total_games dummy
scoreboard objectives add switch.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add switch.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives setdisplay list switch.money

scoreboard objectives add switch.trigger.help trigger
scoreboard objectives add switch.trigger.money trigger
scoreboard objectives add switch.trigger.game_vote trigger

team add switch.no_pvp
team modify switch.no_pvp friendlyFire false

scoreboard players set switch load.status 1000
forceload add 0 0

#define storage switch:main
#define score_holder #success
#define score_holder #valid
#define score_holder #count
#define score_holder #temp
#define score_holder #pos

gamerule announceAdvancements false
gamerule doImmediateRespawn true
gamerule doTraderSpawning false

##Storage
#tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Souhaitez tous la bienvenue à "},{"selector":"@s","color":"aqua"},{"text":" !\nN'oublie pas de remercier le joueur de ton choix de l'invitation pour avoir des récompenses avec /merci"}]
data modify storage switch:main ParalyaWarning set value '[{"text":"[ParalyaWarning]","color":"gold"}]'
data modify storage switch:main ParalyaError set value '[{"text":"[ParalyaError]","color":"red"}]'
data modify storage switch:main ParalyaHelp set value '[{"text":"[","color":"dark_aqua"},{"text":"ParalyaHelp","color":"aqua"},{"text":"]","color":"dark_aqua"}]'
data modify storage switch:main Paralya set value '[{"text":"[","color":"dark_aqua"},{"text":"Paralya","color":"aqua"},{"text":"]","color":"dark_aqua"}]'

scoreboard players set #-1 switch.data -1
scoreboard players set #1 switch.data 1
scoreboard players set #2 switch.data 2
scoreboard players set #4 switch.data 4
scoreboard players set #20 switch.data 20


##Define mini-games list
data modify storage switch:main minigames set value []
data modify storage switch:main minigames append value {index:0,id:"pitch_creep",Name:"Pitch Creep",Lore:'["",{"text":"[Pitch Creep]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée en expulsant les\\n"},{"text":"creepers qui vous attaquent."}]'}
data modify storage switch:main minigames append value {index:1,id:"laser_game",Name:"Laser Game",Lore:'["",{"text":"[Laser Game]\\n","color":"yellow"},{"text":"Affrontez l\'équipe adverse grâce à vos fusils-laser\\n"},{"text":"et faites le plus d\'élimination possible !"}]'}
data modify storage switch:main minigames append value {index:2,id:"none_3",Name:"None 3",Lore:'[{"text":"Lore du None 3"}]'}
data modify storage switch:main minigames append value {index:3,id:"none_4",Name:"None 4",Lore:'[{"text":"Lore du None 4"}]'}
data modify storage switch:main minigames append value {index:4,id:"none_5",Name:"None 5",Lore:'[{"text":"Lore du None 5"}]'}
data modify storage switch:main minigames append value {index:5,id:"none_6",Name:"None 6",Lore:'[{"text":"Lore du None 6"}]'}
data modify storage switch:main minigames append value {index:6,id:"none_7",Name:"None 7",Lore:'[{"text":"Lore du None 7"}]'}
data modify storage switch:main minigames append value {index:7,id:"none_8",Name:"None 8",Lore:'[{"text":"Lore du None 8"}]'}
data modify storage switch:main minigames append value {index:8,id:"none_9",Name:"None 9",Lore:'[{"text":"Lore du None 9"}]'}


##States
execute if score #state switch.data matches -1 run tell none désactivé
execute if score #state switch.data matches 0 run tell none à l'arrêt
execute if score #state switch.data matches 1 run tell none engine start
execute if score #state switch.data matches 2 run tell none temps de vote
execute if score #state switch.data matches 3 run tell none game en cours
