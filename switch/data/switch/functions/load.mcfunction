
tag Stoupy51 add convention.debug

scoreboard objectives add switch.id dummy
scoreboard objectives add switch.data dummy
scoreboard objectives add switch.tutorial dummy
scoreboard objectives add switch.health health
scoreboard objectives add switch.money dummy
scoreboard objectives add switch.money_bonus dummy
scoreboard objectives add switch.last_total_games dummy
scoreboard objectives add switch.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add switch.second_right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add switch.reconnect dummy
scoreboard objectives add switch.alive dummy
scoreboard objectives add switch.play_time dummy

scoreboard objectives add switch.death deathCount
scoreboard objectives add switch.kill playerKillCount
scoreboard objectives add switch.last_death dummy

scoreboard objectives add switch.trigger.help trigger
scoreboard objectives add switch.trigger.money trigger
scoreboard objectives add switch.trigger.game_vote trigger
scoreboard objectives add switch.trigger.stats trigger
scoreboard objectives add switch.trigger.changelog trigger
scoreboard objectives add switch.trigger.detach trigger
scoreboard objectives add switch.trigger.attach trigger
scoreboard objectives add switch.trigger.shop trigger
scoreboard objectives add switch.trigger.tutorial trigger
scoreboard objectives add switch.trigger.succes trigger
scoreboard objectives add switch.trigger.rating trigger
scoreboard objectives add switch.trigger.night_vision trigger

scoreboard objectives add switch.stats.kills playerKillCount
scoreboard objectives add switch.stats.deaths deathCount
scoreboard objectives add switch.stats.played dummy
scoreboard objectives add switch.stats.wins dummy

scoreboard objectives add switch.win_streak dummy

team add switch.no_pvp
team add switch.detached
team add switch.tutorial
team modify switch.no_pvp friendlyFire false
team modify switch.no_pvp color white
team modify switch.detached friendlyFire false
team modify switch.detached color gray
team modify switch.detached prefix {"text":"[Détaché] ","color":"dark_gray"}
team modify switch.tutorial prefix {"text":"[En tutoriel] ","color":"yellow"}
team modify switch.tutorial color gold

gamerule maxCommandChainLength 2147483647
scoreboard players set Switch load.status 1000
forceload add 0 0

#define storage switch:temp
#define storage switch:main
#define storage switch:maps
#define storage switch:records
#define storage switch:stats
#define storage switch:ratings
#define storage switch:advancements
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

# Setup stats storage if needed
execute unless data storage switch:stats all run data modify storage switch:stats all set value {player:{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[]},modes:{}}
# ex: all = {player:{total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[]},modes:{pitch_creep:{total_games:0,played:[],wins:[]}, ...}}

# Setup storages if needed
execute unless data storage switch:ratings all run data modify storage switch:ratings all set value []
execute unless data storage switch:main UUIDs run data modify storage switch:main UUIDs set value []

# Scoreboard constants, shop load, and advancements load
function switch:set_constants
function switch:shop/_load
function switch:advancements/_load
execute unless score #can_attach switch.data matches 0.. run scoreboard players set #can_attach switch.data 1
execute unless score #test_mode switch.data matches 0.. run scoreboard players set #test_mode switch.data 0


## Define mini-games list
data modify storage switch:main minigames set value []
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"pitch_creep"			,Name:"Pitch Creep"			,Lore:'["",{"text":"[Pitch Creep]\\n","color":"yellow"},			{"text":"Survivez pendant le temps imparti dans\\n"},{"text":"une map fermée en expulsant les\\n"},{"text":"creepers qui veulent votre peau.\\n"},										{"text":"\\n[Estimation : 1m30s]","color":"gold"},		{"text":"\\n[Inspiration : Pitchout/Épicube]","color":"green"},				{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"laser_game"			,Name:"Laser Game"			,Lore:'["",{"text":"[Laser Game]\\n","color":"yellow"},				{"text":"Affrontez l\'équipe adverse grâce à vos fusils-laser et faites\\n"},{"text":"le plus d\'élimination possible pendant un temps imparti !\\n"},									{"text":"\\n[Estimation : 2m30s]","color":"gold"},		{"text":"\\n[Inspiration : Le monde physique]","color":"green"},			{"text":"\\n[Proposé par Vigo / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"warden_escape"			,Name:"Warden Escape"		,Lore:'["",{"text":"[Warden Escape]\\n","color":"yellow"},			{"text":"Survivez pendant le temps imparti dans une map fermée\\n"},{"text":"avec des wardens cherchant à vous tuer.\\n"},																{"text":"\\n[Estimation : 1m30s]","color":"gold"},		{"text":"\\n[Inspiration : Minecraft 1.19]","color":"green"},				{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"pitchout"				,Name:"Pitchout"			,Lore:'["",{"text":"[Pitchout]\\n","color":"yellow"},				{"text":"Vous avez trois vies, un équipement vous permettant\\n"},{"text":"des attaques repoussantes, soyez le dernier survivant !\\n"},										{"text":"\\n[Estimation : 1-5 mins]","color":"gold"},	{"text":"\\n[Repris de : Épicube]","color":"green"},						{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"creeper_apocalypse"	,Name:"Creeper Apocalypse"	,Lore:'["",{"text":"[Creeper Apocalypse]\\n","color":"yellow"},		{"text":"Survivez pendant le temps imparti dans une map\\n"},{"text":"fermée avec des creepers qui se multiplient et\\n"},{"text":"explosent sans cesse automatiquement.\\n"},			{"text":"\\n[Estimation : 1m30s]","color":"gold"},		{"text":"\\n[Inspiration : Expiration]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"traitors_game"			,Name:"Traitors Game"		,Lore:'["",{"text":"[Traitors Game]\\n","color":"yellow"},			{"text":"Des traitres se cachent parmi les joueurs.\\n"},{"text":"Innocents contre Traitres, quel camp va-t-il gagner ?\\n"},															{"text":"\\n[Estimation : 4-10 mins]","color":"gold"},	{"text":"\\n[Inspiration : Taupe Gun]","color":"green"},					{"text":"\\n[Proposé par Luxio / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"boat_race"				,Name:"Boat Race"			,Lore:'["",{"text":"[Boat Race]\\n","color":"yellow"},				{"text":"Battez-vous pour atteindre la ligne d\'arrivée\\n"},{"text":"en premier pour remporter la partie !\\n"},																		{"text":"\\n[Estimation : 3-8 mins]","color":"gold"},	{"text":"\\n[Inspiration : Expiration]","color":"green"},					{"text":"\\n[Proposé par Stoupy51 / Développé par LTHCTheMaster]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"spectres_game"			,Name:"Spectres Game"		,Lore:'["",{"text":"[Spectres Game]\\n","color":"yellow"},			{"text":"Deux camps, un avec que des joueurs visibles,\\n"},{"text":"l\'autre avec des spectres, quel camp va-t-il gagner ?\\n"},														{"text":"\\n[Estimation : 4-10 mins]","color":"gold"},	{"text":"\\n[Inspiration : Expiration]","color":"green"},					{"text":"\\n[Proposé par Luxio / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"kart_racer"			,Name:"Kart Racer"			,Lore:'["",{"text":"[Kart Racer]\\n","color":"yellow"},				{"text":"Affrontez les autres joueurs sur des\\n"},{"text":"circuits et soyez le premier arrivé !\\n"},																					{"text":"\\n[Estimation : 3-6 mins]","color":"gold"},	{"text":"\\n[Inspiration : Jeux de course]","color":"green"},				{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:10	,max_players:-1		,id:"rush_the_point"		,Name:"Rush The Point"		,Lore:'["",{"text":"[Rush The Point]\\n","color":"yellow"},			{"text":"Deux teams doivent s\'affronter pour capturer\\n"},{"text":"un point au centre du vide grâce à des\\n"},{"text":"classes spécifiques différentes\\n"},							{"text":"\\n[Estimation : 8-10 mins]","color":"gold"},	{"text":"\\n[Inspiration : PluginLess]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:10	,max_players:-1		,id:"rush_the_flag"			,Name:"Rush The Flag"		,Lore:'["",{"text":"[Rush The Flag]\\n","color":"yellow"},			{"text":"Deux teams doivent s\'affronter pour capturer\\n"},{"text":"le drapeau ennemi grâce à des\\n"},{"text":"classes spécifiques différentes\\n"},									{"text":"\\n[Estimation : 5-10 mins]","color":"gold"},	{"text":"\\n[Inspiration : PluginLess]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"spleef"				,Name:"Spleef"				,Lore:'["",{"text":"[Spleef]\\n","color":"yellow"},					{"text":"Soyez le dernier en vie en faisant tomber\\n"},{"text":"tous vos adversaires grâce à votre pelle !\\n"},																		{"text":"\\n[Estimation : 1-4 mins]","color":"gold"},	{"text":"\\n[Repris de : un peu partout]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"de_a_coudre"			,Name:"Dé à Coudre"			,Lore:'["",{"text":"[Dé à Coudre]\\n","color":"yellow"},			{"text":"Affrontez les autres joueurs dans un saut,\\n"},{"text":"dans une piscine, iconique de Minecraft !\\n"},																		{"text":"\\n[Estimation : 3-6 mins]","color":"gold"},	{"text":"\\n[Inspiration : système de points de OneCube]","color":"green"},	{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"feed_fast"				,Name:"Feed Fast"			,Lore:'["",{"text":"[Feed Fast]\\n","color":"yellow"},				{"text":"Trouvez de la nourriture autour de vous\\n"},{"text":"et mangez-en le plus possible pour gagner !\\n"},																		{"text":"\\n[Estimation : 60s]","color":"gold"},		{"text":"\\n[Inspiration : Le diabète]","color":"green"},					{"text":"\\n[Proposé par Arobaze / Développé par LTHCTheMaster]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:8		,id:"mlg_a_coudre"			,Name:"MLG à Coudre"		,Lore:'["",{"text":"[MLG à Coudre]\\n","color":"yellow"},			{"text":"Affrontez les autres joueurs dans un saut\\n"},{"text":"iconique de Minecraft, mais avec un seau d\'eau !\\n"},																{"text":"\\n[Estimation : 1-6 mins]","color":"gold"},	{"text":"\\n[Inspiration : Dé à Coudre]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:6	,max_players:-1		,id:"protect_the_king"		,Name:"Protect The King"	,Lore:'["",{"text":"[Protect The King]\\n","color":"yellow"},		{"text":"Deux teams doivent s\'affronter pour tuer le roi\\n"},{"text":"ennemi afin de gagner la partie !\\n"},																			{"text":"\\n[Estimation : 1-4 mins]","color":"gold"},	{"text":"\\n[Inspiration : Charlemagne]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"castagne"				,Name:"Castagne"			,Lore:'["",{"text":"[Castagne RP]\\n","color":"yellow"},			{"text":"Vous êtes là pour castagner les gens et rester\\n"},{"text":"le dernier en vie afin de gagner la partie\\n"},																	{"text":"\\n[Estimation : 1-5 mins]","color":"gold"},	{"text":"\\n[Inspiration : Violences Domestiques]","color":"green"},		{"text":"\\n[Proposé par JustNoob / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"layers_2_teams"		,Name:"Layers 2 Teams"		,Lore:'["",{"text":"[Layers 2 Teams]\\n","color":"yellow"},			{"text":"Soyez le plus rapide à vous équiper afin de\\n"},{"text":"transpercer le mur d\'obsidienne pour exterminer l\'ennemi !\\n"},													{"text":"\\n[Estimation : 4-10 mins]","color":"gold"},	{"text":"\\n[Inspiration : PenguinGames]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:8	,max_players:-1		,id:"layers_4_teams"		,Name:"Layers 4 Teams"		,Lore:'["",{"text":"[Layers 4 Teams]\\n","color":"yellow"},			{"text":"Affrontez 3 autres équipes à une course\\n"},{"text":"d\'équipements anéantir vos ennemis !\\n"},																				{"text":"\\n[Estimation : 4-10 mins]","color":"gold"},	{"text":"\\n[Inspiration : PenguinGames]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"thunder_spear"			,Name:"Thunder Spear"		,Lore:'["",{"text":"[Thunder Spear]\\n","color":"yellow"},			{"text":"Éliminez le maximum de joueurs à l\'aide de votre équipement\\n"},{"text":"tridimensionnel et vos lances foudroyantes !\\n"},													{"text":"\\n[Estimation : 2m30s]","color":"gold"},		{"text":"\\n[Inspiration : SNK/Attack On Titan]","color":"green"},			{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"tnt_run"				,Name:"TNT Run"				,Lore:'["",{"text":"[TNT Run]\\n","color":"yellow"},				{"text":"Soyez le dernier en vie en restant le plus\\n"},{"text":"longtemps en mouvement pour ne pas tomber\\n"},																		{"text":"\\n[Estimation : 1-4 mins]","color":"gold"},	{"text":"\\n[Inspiration : Grian (2013)]","color":"green"},					{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"sheepwars"				,Name:"SheepWars"			,Lore:'["",{"text":"[SheepWars]\\n","color":"yellow"},				{"text":"Envoyez sur l\'équipe ennemie vos moutons les plus puissants\\n"},{"text":"afin de les exterminer jusqu\'au dernier !\\n"},													{"text":"\\n[Estimation : 2-6 mins]","color":"gold"},	{"text":"\\n[Repris de : Épicube]","color":"green"},						{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"block_party"			,Name:"Block Party"			,Lore:'["",{"text":"[Block Party]\\n","color":"yellow"},			{"text":"Dès que la musique s\'arrête, dirigez-vous\\n"},{"text":"sur la couleur indiquée pour ne pas tomber !\\n"},																	{"text":"\\n[Estimation : 1-5 mins]","color":"gold"},	{"text":"\\n[Repris de : HiveMC]","color":"green"},							{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"moutron"				,Name:"Moutron"				,Lore:'["",{"text":"[Moutron]\\n","color":"yellow"},				{"text":"Avancez sans cesse à dos d\'un mouton spécial qui\\n"},{"text":"créer une trainée mortelle derrière lui !\\n"},																{"text":"\\n[Estimation : 1-3 mins]","color":"gold"},	{"text":"\\n[Inspiration : Épicube]","color":"green"},						{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:45		,id:"snowball_painter"		,Name:"Snowball Painter"	,Lore:'["",{"text":"[Snowball Painter]\\n","color":"yellow"},		{"text":"Peignez le maximum de bloc sur ce tableau blanc\\n"},{"text":"dans un temps imparti pour gagner !\\n"},																		{"text":"\\n[Estimation : 45s]","color":"gold"},		{"text":"\\n[Inspiration : Party Games/Hypixel]","color":"green"},			{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"gay_shooter"			,Name:"Gay Shooter"			,Lore:'["",{"text":"[Gay Shooter]\\n","color":"yellow"},			{"text":"Un tier des joueurs possède un arc et doit empêcher\\n"},{"text":"les autres joueurs de monter la tour arc-en-ciel !\\n"},														{"text":"\\n[Estimation : 1-5 mins]","color":"gold"},	{"text":"\\n[Repris de : Épreuve Survisland]","color":"green"},				{"text":"\\n[Proposé par GoldVision & scartvol / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"build_battle"			,Name:"Build Battle $"		,Lore:'["",{"text":"[Build Battle]\\n","color":"yellow"},			{"text":"Concurrencez les autres joueurs avec votre\\n"},{"text":"construction sur un thème choisi démocratiquement au début !\\n"},													{"text":"\\n[Estimation : 5-7 mins]","color":"gold"},	{"text":"\\n[Inspiration : Hypixel]","color":"green"},						{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"},{"text":"\\n[+50$ pour chaque joueur]","color":"light_purple"}]'}
data modify storage switch:main minigames append value {min_players:8	,max_players:-1		,id:"beat_the_kings"		,Name:"Beat The Kings"		,Lore:'["",{"text":"[Beat The Kings]\\n","color":"yellow"},			{"text":"Un groupe de roi doit se battre contre l\'ensemble\\n"},{"text":"de ses concitoyens qui souhaitent la révolution !\\n"},														{"text":"\\n[Estimation : 3-5 mins]","color":"gold"},	{"text":"\\n[Inspiration : Henry IV/Louis XIV]","color":"green"},			{"text":"\\n[Proposé/Développé par Luxio]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"coin_chaser"			,Name:"Coin Chaser"			,Lore:'["",{"text":"[Coin Chaser]\\n","color":"yellow"},			{"text":"Le combo Elytra / Équipement tridimensionnel vous permet\\n"},{"text":"de récupérer un maximum de tune dans un temps imparti !\\n"},											{"text":"\\n[Estimation : 1m30s]","color":"gold"},		{"text":"\\n[Inspiration : Expiration]","color":"green"},					{"text":"\\n[Proposé par Ikinox / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"murder_mystery"		,Name:"Murder Mystery"		,Lore:'["",{"text":"[Murder Mystery]\\n","color":"yellow"},			{"text":"Un meurtrier, un détective, et une bande de floppeurs\\n"},{"text":"se trouvent dans une map mystérieuse abondante d\'or !\\n"},												{"text":"\\n[Estimation : 1-4 mins]","color":"gold"},	{"text":"\\n[Repris de : Hypixel]","color":"green"},						{"text":"\\n[Proposé par GoldVision / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"panic_chase"			,Name:"Panic Chase"			,Lore:'["",{"text":"[Panic Chase]\\n","color":"yellow"},			{"text":"La majorité des joueurs doivent trouver un moyen de survivre\\n"},{"text":"aux chasseurs pendant un temps imparti dans une petite zone fermée.\\n"},							{"text":"\\n[Estimation : 1-2 mins]","color":"gold"},	{"text":"\\n[Inspiration : Le chat et la souris]","color":"green"},			{"text":"\\n[Proposé par Arti / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"simultaneous_jump"		,Name:"Simultaneous Jump"	,Lore:'["",{"text":"[Simultaneous Jump]\\n","color":"yellow"},		{"text":"Un dé à coudre OU un MLG à coudre, mais tous les joueurs sautent\\n"},{"text":"en même temps pendant un temps imparti !\\n"},													{"text":"\\n[Estimation : 60s]","color":"gold"},		{"text":"\\n[Inspiration : Dé à Coudre/MLG à Coudre]","color":"green"},		{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"bombardement"			,Name:"Bombardement"		,Lore:'["",{"text":"[Bombardement]\\n","color":"yellow"},			{"text":"Esquivez les tirs de ce bâteau volant\\n"},{"text":"afin d\'être le dernier survivant !\\n"},																					{"text":"\\n[Estimation : 1-2 mins]","color":"gold"},	{"text":"\\n[Repris de : Hypixel]","color":"green"},						{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"shoot_da_sheep"		,Name:"Shoot Da'Sheep"		,Lore:'["",{"text":"[Shoot Da\'Sheep]\\n","color":"yellow"},		{"text":"Des moutons tombent du ciel, certains donnent plus de points\\n"},{"text":"que d\'autres, ayez le plus de points à la fin !\\n"},												{"text":"\\n[Estimation : 60s]","color":"gold"},		{"text":"\\n[Inspiration : BrawlMC]","color":"green"},						{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"minigolf"				,Name:"MiniGolf"			,Lore:'["",{"text":"[MiniGolf]\\n","color":"yellow"},				{"text":"Soyez celui qui réussi à faire tomber sa balle dans\\n"},{"text":"le trou avec le moins de coup possible !\\n"},																{"text":"\\n[Estimation : 1-4 mins]","color":"gold"},	{"text":"\\n[Inspiration : Le monde physique]","color":"green"},			{"text":"\\n[Proposé/Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"cigogne"				,Name:"Cigogne"				,Lore:'["",{"text":"[Cigogne]\\n","color":"yellow"},				{"text":"Dans une salle fermée, plusieurs spectres puissants doivent\\n"},{"text":"s\'affronter afin que le dernier survivant remporte la partie !\\n"},								{"text":"\\n[Estimation : 1-4 mins]","color":"gold"},	{"text":"\\n[Repris de : ShoupZ/JustNoob]","color":"green"},				{"text":"\\n[Proposé par GoldVision / Développé par Stoupy51]","color":"aqua"}]'}
data modify storage switch:main minigames append value {min_players:7	,max_players:-1		,id:"infected"				,Name:"Infected"			,Lore:'["",{"text":"[Infected]\\n","color":"yellow"},				{"text":"Un infecté est choisi en début de partie et doit infecter\\n"},{"text":"tous les humains qui doivent attendre les renforts !\\n"},												{"text":"\\n[Estimation : 1-10 mins]","color":"gold"},	{"text":"\\n[Repris de : ImagineYourCraft (2013)]","color":"green"},		{"text":"\\n[Proposé par la Terre entière / Développé par Stoupy51]","color":"aqua"}]'}

# data modify storage switch:main minigames append value {min_players:2	,max_players:-1		,id:"glassrunner"			,Name:"GlassRunner 90% DISPO"		,Lore:'["",{"text":"[GlassRunner]\\n","color":"yellow"},	{"text":"Affrontez l\'équipe adverse dans le ciel, dans un Capture the Point\\n"},																										{"text":"\\n[Estimation : 8-10 mins]","color":"gold"},	{"text":"\\n[Proposé/Développé par AirDox_]","color":"aqua"}]'}
# data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"twittos_de_merde"		,Name:"Twittos de Merde"	,Lore:'["",{"text":"[Twittos de Merde]\\n","color":"yellow"},		{"text":"Faites la plus grande masterclass afin de ne pas être éliminé\\n"},{"text":"sur un thème donné aléatoirement à chaque joueur.\\n"},											{"text":"\\n[Estimation : 3-10 mins]","color":"gold"},	{"text":"\\n[Proposé/Développé par Charly]","color":"aqua"}]'}
# data modify storage switch:main minigames append value {min_players:2	,max_players:-1		,id:"replicate_the_build"	,Name:"Replicate The Build BUGUÉ"	,Lore:'["",{"text":"[Replicate The Build]\\n","color":"yellow"},{"text":"Refaites le build donné le plus rapidement possible, et sans vous tromper !\\n"},{"text":"\\n[Estimation : 1-6 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par AirDox_]","color":"aqua"}]'}
# data modify storage switch:main minigames append value {min_players:1	,max_players:-1		,id:"border_run"			,Name:"Border Run PAS DISPO"			,Lore:'["",{"text":"[Border Run]\\n","color":"yellow"},{"text":"Survivez jusqu\'à la fin en trouvant\\n"},{"text":"le centre de la bordure !\\n"},{"text":"\\n[Estimation : 1-2 mins]","color":"gold"},{"text":"\\n[Proposé/Développé par Luxio]","color":"aqua"}]'}

# Auto index
data modify storage switch:main indexed_minigames set value []
scoreboard players set #index switch.data 1
function switch:auto_index
data modify storage switch:main minigames set from storage switch:main indexed_minigames
data remove storage switch:main temp

## States
execute if score #state switch.data matches -1 run tell none désactivé
execute if score #state switch.data matches 0 run tell none à l'arrêt
execute if score #state switch.data matches 1 run tell none engine start
execute if score #state switch.data matches 2 run tell none temps de vote
execute if score #state switch.data matches 3 run tell none game en cours

# Games and maps picks history
execute unless data storage switch:main history run data modify storage switch:main history set value {games:[],maps:[]}

