
#> switch:load
#
# @within	switch:v2.0.0/load/confirm_load
#

## File attribut: Ignore translations

tag Stoupy51 add convention.debug

scoreboard objectives add switch.lang dummy

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
scoreboard objectives add switch.advancements dummy
scoreboard objectives add switch.lobby_respawn dummy

scoreboard objectives add switch.death deathCount
scoreboard objectives add switch.kill playerKillCount
scoreboard objectives add switch.last_death dummy

scoreboard objectives add switch.trigger.lang trigger
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
scoreboard objectives add switch.trigger.music trigger

scoreboard objectives add switch.stats.kills playerKillCount
scoreboard objectives add switch.stats.deaths deathCount
scoreboard objectives add switch.stats.played dummy
scoreboard objectives add switch.stats.wins dummy

scoreboard objectives add switch.win_streak dummy
scoreboard objectives add switch.lobby_easter_egg_counter dummy

team add switch.no_pvp {"text":"[No PvP]"}
team add switch.detached {"text":"[Detached]","color":"dark_gray"}
team add switch.tutorial {"text":"[Tutorial]","color":"yellow"}
team modify switch.no_pvp friendlyFire false
team modify switch.no_pvp color white
team modify switch.detached friendlyFire false
team modify switch.detached color gray
team modify switch.detached prefix {"text":"[Détaché] ","color":"dark_gray"}
team modify switch.tutorial prefix {"text":"[En tutoriel] ","color":"yellow"}
team modify switch.tutorial color gold

gamerule maxCommandChainLength 2147483647
forceload add 0 0
execute in switch:game run forceload add 0 0

## Storage
# tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Souhaitez tous la bienvenue à "},{"selector":"@s","color":"aqua"},{"text":" !\nIl est le "},{"score":{"name":"#next_id","objective":"switch.data"},"color":"aqua"},{"text":"ème joueur a rejoindre !"}]
data modify storage switch:main ParalyaMusic set value '[{"text":"[ParalyaMusic]","color":"dark_purple"}]'
data modify storage switch:main ParalyaStats set value '[{"text":"[ParalyaStats]","color":"yellow"}]'
data modify storage switch:main ParalyaError set value '[{"text":"[ParalyaError]","color":"red"}]'
data modify storage switch:main ParalyaWarning set value '[{"text":"[Paralya]","color":"gold"}]'
data modify storage switch:main ParalyaHelp set value '[{"text":"[","color":"dark_aqua"},{"text":"ParalyaHelp","color":"aqua"},{"text":"]","color":"dark_aqua"}]'
data modify storage switch:main Paralya set value '[{"text":"[","color":"dark_aqua"},{"text":"Paralya","color":"aqua"},{"text":"]","color":"dark_aqua"}]'

data modify storage switch:main ParalyaSapphires set value '[{"text":"","color":"blue"},{"text":"[","color":"dark_blue"},{"text":"Saphirs","color":"blue"},{"text":"]","color":"dark_blue"}]'
data modify storage switch:main ParalyaAstuce set value '[{"text":"[","color":"dark_green"},{"text":"ParalyaAstuce","color":"green"},{"text":"]","color":"dark_green"}]'
data modify storage switch:main ParalyaPvPOld set value '[{"text":"[PvP 1.8 : Vitesse d\'attaque infinie]","color":"dark_aqua"}]'
data modify storage switch:main ParalyaPvPNew set value '[{"text":"[PvP 1.9+ : Nouveau PvP]","color":"dark_green"}]'

data modify storage switch:main ParalyaSapphiresEN set value '[{"text":"","color":"blue"},{"text":"[","color":"dark_blue"},{"text":"Sapphires","color":"blue"},{"text":"]","color":"dark_blue"}]'
data modify storage switch:main ParalyaAstuceEN set value '[{"text":"[","color":"dark_green"},{"text":"ParalyaTip","color":"green"},{"text":"]","color":"dark_green"}]'
data modify storage switch:main ParalyaPvPOldEN set value '[{"text":"[PvP 1.8 : Infinite attack speed]","color":"dark_aqua"}]'
data modify storage switch:main ParalyaPvPNewEN set value '[{"text":"[PvP 1.9+ : New PvP]","color":"dark_green"}]'


# Setup stats storage if needed
execute unless data storage switch:stats all run data modify storage switch:stats all set value {player:{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{}}
# ex: all = {player:{total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{pitch_creep:{total_games:0,played:[],wins:[],played_win_ratio:[]}, ...}}

# Setup storages if needed
execute unless data storage switch:ratings all run data modify storage switch:ratings all set value []
execute unless data storage switch:main UUIDs run data modify storage switch:main UUIDs set value []

# Scoreboard constants, shop load, advancements, and music load
function switch:set_constants
function switch:shop/_load
function switch:advancements/_load
function switch:music/load
execute unless score #can_attach switch.data matches 0.. run scoreboard players set #can_attach switch.data 1
execute unless score #test_mode switch.data matches 0.. run scoreboard players set #test_mode switch.data 0
execute unless score #min_required switch.data matches 1.. run scoreboard players set #min_required switch.data 5


## Define mini-games list
data modify storage switch:main minigames set value []
function switch:modes/load


# Auto index
data modify storage switch:main indexed_minigames set value []
scoreboard players set #index switch.data 1
function switch:auto_index
data modify storage switch:main minigames set from storage switch:main indexed_minigames
data remove storage switch:main temp

## States
execute if score #engine_state switch.data matches -1 run tell none désactivé
execute if score #engine_state switch.data matches 0 run tell none à l'arrêt
execute if score #engine_state switch.data matches 1 run tell none engine start
execute if score #engine_state switch.data matches 2 run tell none temps de vote
execute if score #engine_state switch.data matches 3 run tell none game en cours

# Games and maps picks history
execute unless data storage switch:main history run data modify storage switch:main history set value {games:[],maps:[]}

