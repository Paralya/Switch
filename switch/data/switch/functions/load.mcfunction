
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

function switch:set_constants


##Define mini-games list
data modify storage switch:main minigames set value []
data modify storage switch:main minigames append value {index:0	,min_players:1,id:"pitch_creep"		,Name:"Pitch Creep"		,Lore:'["",{"text":"[Pitch Creep]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée en expulsant les\\n"},{"text":"creepers qui vous attaquent."}]'}
data modify storage switch:main minigames append value {index:1	,min_players:1,id:"laser_game"		,Name:"Laser Game"		,Lore:'["",{"text":"[Laser Game]\\n","color":"yellow"},{"text":"Affrontez l\'équipe adverse grâce à vos fusils-laser\\n"},{"text":"et faites le plus d\'élimination possible !"}]'}
data modify storage switch:main minigames append value {index:2	,min_players:1,id:"warden_escape"	,Name:"Warden Escape"	,Lore:'["",{"text":"[Warden Escape]\\n","color":"yellow"},{"text":"Vous devez survivre le plus longtemps dans\\n"},{"text":"une map enfermée avec 5 wardens\\n"},{"text":"cherchant à vous tuer."}]'}
data modify storage switch:main minigames append value {index:3	,min_players:1,id:"pitchout"		,Name:"Pitchout"		,Lore:'["",{"text":"[Pitchout]\\n","color":"yellow"},{"text":"Affrontez les autres joueurs grâce à vos armes repoussantes\\n"},{"text":"et soyez le dernier survivant !"}]'}
data modify storage switch:main minigames append value {index:4	,min_players:1,id:"_free_slot_5"	,Name:"Free Slot 5"		,Lore:'[{"text":"Lore du Slot 5"}]'}
data modify storage switch:main minigames append value {index:5	,min_players:1,id:"_free_slot_6"	,Name:"Free Slot 6"		,Lore:'[{"text":"Lore du Slot 6"}]'}
data modify storage switch:main minigames append value {index:6	,min_players:1,id:"_free_slot_7"	,Name:"Free Slot 7"		,Lore:'[{"text":"Lore du Slot 7"}]'}
data modify storage switch:main minigames append value {index:7	,min_players:1,id:"_free_slot_8"	,Name:"Free Slot 8"		,Lore:'[{"text":"Lore du Slot 8"}]'}
data modify storage switch:main minigames append value {index:8	,min_players:1,id:"_free_slot_9"	,Name:"Free Slot 9"		,Lore:'[{"text":"Lore du Slot 9"}]'}
data modify storage switch:main minigames append value {index:9	,min_players:1,id:"_free_slot_10"	,Name:"Free Slot 10"	,Lore:'[{"text":"Lore du Slot 10"}]'}
data modify storage switch:main minigames append value {index:10,min_players:1,id:"_free_slot_11"	,Name:"Free Slot 11"	,Lore:'[{"text":"Lore du Slot 11"}]'}
data modify storage switch:main minigames append value {index:11,min_players:1,id:"_free_slot_12"	,Name:"Free Slot 12"	,Lore:'[{"text":"Lore du Slot 12"}]'}
data modify storage switch:main minigames append value {index:12,min_players:1,id:"_free_slot_13"	,Name:"Free Slot 13"	,Lore:'[{"text":"Lore du Slot 13"}]'}
data modify storage switch:main minigames append value {index:13,min_players:1,id:"_free_slot_14"	,Name:"Free Slot 14"	,Lore:'[{"text":"Lore du Slot 14"}]'}
data modify storage switch:main minigames append value {index:14,min_players:1,id:"_free_slot_15"	,Name:"Free Slot 15"	,Lore:'[{"text":"Lore du Slot 15"}]'}
data modify storage switch:main minigames append value {index:15,min_players:1,id:"_free_slot_16"	,Name:"Free Slot 16"	,Lore:'[{"text":"Lore du Slot 16"}]'}
data modify storage switch:main minigames append value {index:16,min_players:1,id:"_free_slot_17"	,Name:"Free Slot 17"	,Lore:'[{"text":"Lore du Slot 17"}]'}
data modify storage switch:main minigames append value {index:17,min_players:1,id:"_free_slot_18"	,Name:"Free Slot 18"	,Lore:'[{"text":"Lore du Slot 18"}]'}


##Liens vers leur dossier respectif
execute if score $NONE switch.data matches 1 run function switch:modes/pitch_creep/start
execute if score $NONE switch.data matches 1 run function switch:modes/laser_game/start
execute if score $NONE switch.data matches 1 run function switch:modes/warden_escape/start
execute if score $NONE switch.data matches 1 run function switch:modes/pitchout/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_5/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_6/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_7/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_8/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_9/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_10/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_11/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_12/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_13/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_14/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_15/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_16/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_17/start
execute if score $NONE switch.data matches 1 run function switch:modes/_free_slot_18/start


##States
execute if score #state switch.data matches -1 run tell none désactivé
execute if score #state switch.data matches 0 run tell none à l'arrêt
execute if score #state switch.data matches 1 run tell none engine start
execute if score #state switch.data matches 2 run tell none temps de vote
execute if score #state switch.data matches 3 run tell none game en cours
