
tag Stoupy51 add convention.debug

scoreboard objectives add switch.data dummy
scoreboard objectives add switch.health health
scoreboard objectives add switch.money dummy
scoreboard objectives add switch.money_bonus dummy
scoreboard objectives add switch.last_total_games dummy
scoreboard objectives add switch.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add switch.reconnect dummy

scoreboard objectives add switch.trigger.help trigger
scoreboard objectives add switch.trigger.money trigger
scoreboard objectives add switch.trigger.game_vote trigger
scoreboard objectives add switch.trigger.stats trigger

scoreboard objectives add switch.stats.victories dummy
scoreboard objectives add switch.stats.played.pitch_creep dummy
scoreboard objectives add switch.stats.played.laser_game dummy
scoreboard objectives add switch.stats.played.warden_escape dummy
scoreboard objectives add switch.stats.played.pitchout dummy
scoreboard objectives add switch.stats.played.glassrunner dummy
scoreboard objectives add switch.stats.played.creeper_apocalypse dummy
scoreboard objectives add switch.stats.played.traitors_game dummy
scoreboard objectives add switch.stats.played.boat_race dummy
scoreboard objectives add switch.stats.played.spectres_game dummy
scoreboard objectives add switch.stats.played.kart_racer dummy
scoreboard objectives add switch.stats.played.rush_the_point dummy
scoreboard objectives add switch.stats.played.spleef dummy
scoreboard objectives add switch.stats.played.de_a_coudre dummy
scoreboard objectives add switch.stats.played.feed_fast dummy
scoreboard objectives add switch.stats.played.mlg_a_coudre dummy
scoreboard objectives add switch.stats.played.protect_the_king dummy
scoreboard objectives add switch.stats.played.castagne dummy
scoreboard objectives add switch.stats.played.layers_2_teams dummy
scoreboard objectives add switch.stats.played.layers_4_teams dummy
scoreboard objectives add switch.stats.played.thunder_spear dummy
scoreboard objectives add switch.stats.played.tnt_run dummy
scoreboard objectives add switch.stats.played.sheepwars dummy
scoreboard objectives add switch.stats.played.block_party dummy
scoreboard objectives add switch.stats.played.replicate_the_build dummy

team add switch.no_pvp
team modify switch.no_pvp friendlyFire false

gamerule maxCommandChainLength 65536
scoreboard players set Switch load.status 1000
scoreboard players set _RANDOM_PRIME switch.data 6978869
forceload add 0 0

#define storage switch:main
#define score_holder #success
#define score_holder #valid
#define score_holder #count
#define score_holder #temp
#define score_holder #pos

## Storage
# tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Souhaitez tous la bienvenue à "},{"selector":"@s","color":"aqua"},{"text":" !\nIl est le "},{"score":{"name":"#next_id","objective":"switch.data"},"color":"aqua"},{"text":"ème joueur a rejoindre !"}]
data modify storage switch:main ParalyaWarning set value '[{"text":"[ParalyaWarning]","color":"gold"}]'
data modify storage switch:main ParalyaStats set value '[{"text":"[ParalyaStats]","color":"yellow"}]'
data modify storage switch:main ParalyaMoney set value '[{"text":"[ParalyaMoney]","color":"dark_purple"}]'
data modify storage switch:main ParalyaError set value '[{"text":"[ParalyaError]","color":"red"}]'
data modify storage switch:main ParalyaAstuce set value '[{"text":"[","color":"dark_green"},{"text":"ParalyaAstuce","color":"green"},{"text":"]","color":"dark_green"}]'
data modify storage switch:main ParalyaHelp set value '[{"text":"[","color":"dark_aqua"},{"text":"ParalyaHelp","color":"aqua"},{"text":"]","color":"dark_aqua"}]'
data modify storage switch:main Paralya set value '[{"text":"[","color":"dark_aqua"},{"text":"Paralya","color":"aqua"},{"text":"]","color":"dark_aqua"}]'

function switch:set_constants


## Define mini-games list
data modify storage switch:main minigames set value []
data modify storage switch:main minigames append value {index:0	,min_players:1	,max_players:-1		,id:"pitch_creep"			,Name:"Pitch Creep"			,Lore:'["",{"text":"[Pitch Creep]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée en expulsant les\\n"},{"text":"creepers qui vous attaquent."},{"text":"\\n\\n[Estimation : 1-2 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:1	,min_players:4	,max_players:-1		,id:"laser_game"			,Name:"Laser Game"			,Lore:'["",{"text":"[Laser Game]\\n","color":"yellow"},{"text":"Affrontez l\'équipe adverse grâce à vos fusils-laser\\n"},{"text":"et faites le plus d\'élimination possible !"},{"text":"\\n\\n[Estimation : 2m30s]","color":"gold"},{"text":"\\n[Proposé par Vigo / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:2	,min_players:3	,max_players:-1		,id:"warden_escape"			,Name:"Warden Escape"		,Lore:'["",{"text":"[Warden Escape]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée avec 5 wardens\\n"},{"text":"cherchant à vous tuer."},{"text":"\\n\\n[Estimation : 1-2 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:3	,min_players:2	,max_players:-1		,id:"pitchout"				,Name:"Pitchout"			,Lore:'["",{"text":"[Pitchout]\\n","color":"yellow"},{"text":"Affrontez les autres joueurs grâce à vos armes\\n"},{"text":"repoussantes et soyez le dernier survivant !"},{"text":"\\n\\n[Estimation : 1-5 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:4	,min_players:2	,max_players:-1		,id:"glassrunner"			,Name:"GlassRunner 90% DISPO"		,Lore:'["",{"text":"[GlassRunner]\\n","color":"yellow"},{"text":"Affrontez l\'équipe adverse dans le ciel, dans un Capture the Point"},{"text":"\\n\\n[Estimation : 8-10 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par AirDox_]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:5	,min_players:1	,max_players:-1		,id:"creeper_apocalypse"	,Name:"Creeper Apocalypse"	,Lore:'["",{"text":"[Creeper Apocalypse]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée avec des creepers\\n"},{"text":"qui se multiplient sans cesse."},{"text":"\\n\\n[Estimation : 1-2 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:6	,min_players:4	,max_players:-1		,id:"traitors_game"			,Name:"Traitors Game"		,Lore:'["",{"text":"[Traitors Game]\\n","color":"yellow"},{"text":"Innocents contre Traitres,\\n"},{"text":"quel camp va-t-il gagner ?"},{"text":"\\n\\n[Estimation : 4-10 mins]","color":"gold"},{"text":"\\n[Proposé par Luxio / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:7	,min_players:1	,max_players:-1		,id:"boat_race"				,Name:"Boat Race"			,Lore:'["",{"text":"[Boat Race]\\n","color":"yellow"},{"text":"Battez-vous pour atteindre la ligne d\'arrivée\\n"},{"text":"en premier pour remporter la partie !"},{"text":"\\n\\n[Estimation : 3-8 mins]","color":"gold"},{"text":"\\n[Proposé par Stoupy51 / Développé par LTHCTheMaster]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:8	,min_players:3	,max_players:-1		,id:"spectres_game"			,Name:"Spectres Game"		,Lore:'["",{"text":"[Spectres Game]\\n","color":"yellow"},{"text":"Visibles contre Spectres,\\n"},{"text":"quel camp va-t-il gagner ?"},{"text":"\\n\\n[Estimation : 4-10 mins]","color":"gold"},{"text":"\\n[Proposé par Luxio / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:9	,min_players:1	,max_players:-1		,id:"kart_racer"			,Name:"Kart Racer"			,Lore:'["",{"text":"[Kart Racer]\\n","color":"yellow"},{"text":"Affrontez les autres joueurs sur des\\n"},{"text":"circuits et soyez le premier arrivé !"},{"text":"\\n\\n[Estimation : 2-5 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:10,min_players:6	,max_players:-1		,id:"rush_the_point"		,Name:"Rush The Point"		,Lore:'["",{"text":"[Rush The Point]\\n","color":"yellow"},{"text":"Deux teams doivent s\'affronter pour capturer\\n"},{"text":"un point au centre du vide grâce à des\\n"},{"text":"classes spécifiques différentes"},{"text":"\\n\\n[Estimation : 8-10 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:11,min_players:2	,max_players:-1		,id:"spleef"				,Name:"Spleef"				,Lore:'["",{"text":"[Spleef]\\n","color":"yellow"},{"text":"Soyez le dernier en vie en faisant tomber\\n"},{"text":"tous vos adversaires grâce à votre équipement"},{"text":"\\n\\n[Estimation : 1-4 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:12,min_players:2	,max_players:-1		,id:"de_a_coudre"			,Name:"Dé à Coudre"			,Lore:'["",{"text":"[Dé à Coudre]\\n","color":"yellow"},{"text":"Affrontez les autres joueurs dans un saut,\\n"},{"text":"dans une piscine, iconique de Minecraft !"},{"text":"\\n\\n[Estimation : 3-6 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:13,min_players:1	,max_players:-1		,id:"feed_fast"				,Name:"Feed Fast"			,Lore:'["",{"text":"[Feed Fast]\\n","color":"yellow"},{"text":"Trouvez de la nourriture autour de vous\\n"},{"text":"et mangez-la pour ne pas subir un funeste destin"},{"text":"\\n\\n[Estimation : 1-2 mins]","color":"gold"},{"text":"\\n[Proposé par Arobaze / Développé par LTHCTheMaster]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:14,min_players:2	,max_players:-1		,id:"mlg_a_coudre"			,Name:"MLG à Coudre"		,Lore:'["",{"text":"[MLG à Coudre]\\n","color":"yellow"},{"text":"Affrontez les autres joueurs dans un saut,\\n"},{"text":"iconique de Minecraft mais pas comme les autres !"},{"text":"\\n\\n[Estimation : 1-6 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:15,min_players:4	,max_players:-1		,id:"protect_the_king"		,Name:"Protect The King"	,Lore:'["",{"text":"[Protect The King]\\n","color":"yellow"},{"text":"Deux teams doivent s\'affronter pour tuer le roi\\n"},{"text":"ennemi afin de gagner la partie"},{"text":"\\n\\n[Estimation : 2-4 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:16,min_players:2	,max_players:-1		,id:"castagne"				,Name:"Castagne"			,Lore:'["",{"text":"[Castagne]\\n","color":"yellow"},{"text":"Vous êtes là pour castagner les gens et rester\\n"},{"text":"le dernier en vie afin de gagner la partie"},{"text":"\\n\\n[Estimation : 2-4 mins]","color":"gold"},{"text":"\\n[Proposé par JustNoob / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:17,min_players:2	,max_players:-1		,id:"layers_2_teams"		,Name:"Layers 2 Teams"		,Lore:'["",{"text":"[Layers 2 Teams]\\n","color":"yellow"},{"text":"Soyez le plus rapide à vous équiper afin de\\n"},{"text":"transpercer le mur d\'obsidienne pour exterminer l\'ennemi !"},{"text":"\\n\\n[Estimation : 7-15 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:18,min_players:4	,max_players:-1		,id:"layers_4_teams"		,Name:"Layers 4 Teams"		,Lore:'["",{"text":"[Layers 4 Teams]\\n","color":"yellow"},{"text":"Affrontez 3 autres équipes à une course\\n"},{"text":"d\'équipements anéantir vos ennemis !"},{"text":"\\n\\n[Estimation : 7-15 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:19,min_players:2	,max_players:-1		,id:"thunder_spear"			,Name:"Thunder Spear"		,Lore:'["",{"text":"[Thunder Spear]\\n","color":"yellow"},{"text":"Éliminez le maximum de joueurs à l\'aide de votre équipement\\n"},{"text":"tridimensionnel et vos lances foudroyantes !"},{"text":"\\n\\n[Estimation : 4m00s]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:20,min_players:2	,max_players:-1		,id:"tnt_run"				,Name:"TNT Run"				,Lore:'["",{"text":"[TNT Run]\\n","color":"yellow"},{"text":"Soyez le dernier en vie en restant le plus\\n"},{"text":"longtemps en mouvement pour ne pas tomber"},{"text":"\\n\\n[Estimation : 1-4 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:21,min_players:2	,max_players:-1		,id:"sheepwars"				,Name:"SheepWars"			,Lore:'["",{"text":"[SheepWars]\\n","color":"yellow"},{"text":"Envoyez sur l\'équipe ennemie vos moutons les plus puissants\\n"},{"text":"afin de les exterminer jusqu\'au dernier pour gagner !"},{"text":"\\n\\n[Estimation : 2-6 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:22,min_players:2	,max_players:-1		,id:"block_party"			,Name:"Block Party"			,Lore:'["",{"text":"[Block Party]\\n","color":"yellow"},{"text":"Dès que la musique s\'arrête, dirigez-vous\\n"},{"text":"sur la couleur indiquée pour ne pas tomber !"},{"text":"\\n\\n[Estimation : 1-4 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {index:23,min_players:2	,max_players:-1		,id:"replicate_the_build"	,Name:"Replicate The Build"	,Lore:'["",{"text":"[Replicate The Build]\\n","color":"yellow"},{"text":"Refaites le build donné le plus rapidement possible, et sans vous tromper !"},{"text":"\\n\\n[Estimation : 1-6 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par AirDox_]","color":"aqua"}]'}

# data modify storage switch:main minigames append value {index:XX	,min_players:1	,max_players:-1		,id:"border_run"			,Name:"Border Run PAS DISPO"			,Lore:'["",{"text":"[Border Run]\\n","color":"yellow"},{"text":"Survivez jusqu\'à la fin en trouvant\\n"},{"text":"le centre de la bordure !"},{"text":"\\n\\n[Estimation : 1-2 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Luxio]","color":"aqua"}]'}
# data modify storage switch:main minigames append value {index:XX,min_players:1	,max_players:-1		,id:"murder_uhc"			,Name:"Murder UHC"			,Lore:'["",{"text":"[Murder UHC]\\n","color":"yellow"},{"text":"---LORE 1---\\n"},{"text":"---LORE 2---"},{"text":"\\n\\n[Estimation : 4-10 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par XXXXXX]","color":"aqua"}]'}
# data modify storage switch:main minigames append value {index:XX,min_players:1	,max_players:-1		,id:"a_template"			,Name:"TEMPLATE"			,Lore:'["",{"text":"[TEMPLATE]\\n","color":"yellow"},{"text":"TEMPLATE\\n"},{"text":"TEMPLATE"},{"text":"\\n\\n[Estimation : 1-2 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par XXXXXX]","color":"aqua"}]'}


## States
execute if score #state switch.data matches -1 run tell none désactivé
execute if score #state switch.data matches 0 run tell none à l'arrêt
execute if score #state switch.data matches 1 run tell none engine start
execute if score #state switch.data matches 2 run tell none temps de vote
execute if score #state switch.data matches 3 run tell none game en cours

