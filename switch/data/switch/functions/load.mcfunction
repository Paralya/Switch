
tag Stoupy51 add convention.debug

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

function switch:set_constants


##Define mini-games list
data modify storage switch:main minigames set value []
data modify storage switch:main minigames append value {index:0	,min_players:1	,max_players:-1		,id:"pitch_creep"			,Name:"Pitch Creep"			,Lore:'["",{"text":"[Pitch Creep]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée en expulsant les\\n"},{"text":"creepers qui vous attaquent."}]'}
data modify storage switch:main minigames append value {index:1	,min_players:1	,max_players:-1		,id:"laser_game"			,Name:"Laser Game"			,Lore:'["",{"text":"[Laser Game]\\n","color":"yellow"},{"text":"Affrontez l\'équipe adverse grâce à vos fusils-laser\\n"},{"text":"et faites le plus d\'élimination possible !"}]'}
data modify storage switch:main minigames append value {index:2	,min_players:1	,max_players:-1		,id:"warden_escape"			,Name:"Warden Escape"		,Lore:'["",{"text":"[Warden Escape]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée avec 5 wardens\\n"},{"text":"cherchant à vous tuer."}]'}
data modify storage switch:main minigames append value {index:3	,min_players:1	,max_players:-1		,id:"pitchout"				,Name:"Pitchout"			,Lore:'["",{"text":"[Pitchout]\\n","color":"yellow"},{"text":"Affrontez les autres joueurs grâce à vos armes repoussantes\\n"},{"text":"et soyez le dernier survivant !"}]'}
data modify storage switch:main minigames append value {index:4	,min_players:1	,max_players:-1		,id:"glassrunner"			,Name:"GlassRunner PAS DISPO"			,Lore:'["",{"text":"[GlassRunner]\\n","color":"yellow"},{"text":"Affrontez l\'équipe adverse dans le ciel, dans un Capture the Point"}]'}
data modify storage switch:main minigames append value {index:5	,min_players:1	,max_players:-1		,id:"border_run"			,Name:"Border Run PAS DISPO"			,Lore:'["",{"text":"[Border Run]\\n","color":"yellow"},{"text":"Survivez jusqu\'à la fin en trouvant\\n"},{"text":"le centre de la bordure !"}]'}
data modify storage switch:main minigames append value {index:6	,min_players:1	,max_players:-1		,id:"creeper_apocalypse"	,Name:"Creeper Apocalypse"	,Lore:'["",{"text":"[Creeper Apocalypse]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée avec des creepers\\n"},{"text":"qui se multiplient sans cesse."}]'}
data modify storage switch:main minigames append value {index:7	,min_players:1	,max_players:-1		,id:"traitors_game"			,Name:"Traitors Game"		,Lore:'["",{"text":"[Traitors Game]\\n","color":"yellow"},{"text":"Innocents contre Traitres,\\n"},{"text":"quel camp va-t-il gagner ?"}]'}
data modify storage switch:main minigames append value {index:8	,min_players:1	,max_players:-1		,id:"boat_race"				,Name:"Boat Race"			,Lore:'[{"text":"Concourrez dans une course de bateaux sur la glace"}]'}
data modify storage switch:main minigames append value {index:9	,min_players:1	,max_players:-1		,id:"a_template"			,Name:"TEMPLATE"		,Lore:'[{"text":"Lore du TEMPLATE"}]'}


##States
execute if score #state switch.data matches -1 run tell none désactivé
execute if score #state switch.data matches 0 run tell none à l'arrêt
execute if score #state switch.data matches 1 run tell none engine start
execute if score #state switch.data matches 2 run tell none temps de vote
execute if score #state switch.data matches 3 run tell none game en cours

