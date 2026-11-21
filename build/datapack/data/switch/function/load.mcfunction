
#> switch:load
#
# @within	switch:v2.0.0/load/confirm_load
#

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
scoreboard objectives add switch.trigger.coupdetat trigger

# Objectives a world may still hold from the per-role layout
scoreboard objectives remove switch.trigger.layout
scoreboard objectives remove switch.layout.melee
scoreboard objectives remove switch.layout.axe
scoreboard objectives remove switch.layout.ranged
scoreboard objectives remove switch.layout.ammo
scoreboard objectives remove switch.layout.tool
scoreboard objectives remove switch.layout.blocks
scoreboard objectives remove switch.layout.mobility
scoreboard objectives remove switch.layout.heal
scoreboard objectives remove switch.layout.food
scoreboard objectives remove switch.layout.explosive
scoreboard objectives remove switch.layout.throwable
scoreboard objectives remove switch.layout.special

scoreboard objectives add switch.stats.kills playerKillCount
scoreboard objectives add switch.stats.deaths deathCount
scoreboard objectives add switch.stats.played dummy
scoreboard objectives add switch.stats.wins dummy
scoreboard objectives add switch.stats.winrate dummy

scoreboard objectives add switch.win_streak dummy
scoreboard objectives add switch.lobby_easter_egg_counter dummy

# Wall-clock game timer (lag resistant): the per-second signal is driven by real elapsed time
# instead of counting 20 ticks, so games/timers keep real-time pace even when the server lags.
stopwatch create switch:game_clock
stopwatch restart switch:game_clock
scoreboard players set #clock_secs switch.data 0

team add switch.no_pvp {"text":"[No PvP]"}
team add switch.detached {"text":"[Detached]","color":"#6B788F"}
team add switch.tutorial {"text":"[Tutorial]","color":"#FFE60A"}
team modify switch.no_pvp friendlyFire false
team modify switch.no_pvp color white
team modify switch.detached friendlyFire false
team modify switch.detached color gray
team modify switch.detached prefix {"text":"[Lobby] ","color":"#6B788F"}
team modify switch.tutorial prefix {"text":"[Tutorial] ","color":"#FFE60A"}
team modify switch.tutorial color gold

gamerule minecraft:max_command_sequence_length 2147483647
forceload add 0 0
execute in switch:game run forceload add 0 0

## Storage
# tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Souhaitez tous la bienvenue à "},{"selector":"@s","color":"#00E5FF"},{"text":" !\nIl est le "},{"score":{"name":"#next_id","objective":"switch.data"},"color":"#00E5FF"},{"text":"ème joueur a rejoindre !"}]
data modify storage switch:main ParalyaMusic set value {"text":"[ParalyaMusic]","color":"#A53DE0"}
data modify storage switch:main ParalyaStats set value {"text":"[ParalyaStats]","color":"#FFE60A"}
data modify storage switch:main ParalyaError set value {"text":"[ParalyaError]","color":"#FF3347"}
data modify storage switch:main ParalyaWarning set value {"text":"[Paralya]","color":"#FFA600"}
data modify storage switch:main ParalyaHelp set value [{"text":"[","color":"#12A4B8"},{"text":"ParalyaHelp","color":"#00E5FF"},{"text":"]","color":"#12A4B8"}]
data modify storage switch:main Paralya set value [{"text":"[","color":"#12A4B8"},{"text":"Paralya","color":"#00E5FF"},{"text":"]","color":"#12A4B8"}]

data modify storage switch:main ParalyaSapphiresFR set value [{"text":"","color":"#2E9BFF"},{"text":"[","color":"#1b1796"},{"text":"Saphirs","color":"#2E9BFF"},{"text":"]","color":"#1b1796"}]
data modify storage switch:main ParalyaAstuceFR set value [{"text":"[","color":"#1FA83C"},{"text":"ParalyaAstuceFR","color":"#2EFF8B"},{"text":"]","color":"#1FA83C"}]
data modify storage switch:main ParalyaPvPOldFR set value {"text":"[PvP 1.8 : Vitesse d'attaque infinie]","color":"#12A4B8"}
data modify storage switch:main ParalyaPvPNewFR set value {"text":"[PvP 1.9+ : Nouveau PvP]","color":"#1FA83C"}

data modify storage switch:main ParalyaSapphiresEN set value [{"text":"","color":"#2E9BFF"},{"text":"[","color":"#1b1796"},{"text":"Sapphires","color":"#2E9BFF"},{"text":"]","color":"#1b1796"}]
data modify storage switch:main ParalyaAstuceEN set value [{"text":"[","color":"#1FA83C"},{"text":"ParalyaTip","color":"#2EFF8B"},{"text":"]","color":"#1FA83C"}]
data modify storage switch:main ParalyaPvPOldEN set value {"text":"[PvP 1.8 : Infinite attack speed]","color":"#12A4B8"}
data modify storage switch:main ParalyaPvPNewEN set value {"text":"[PvP 1.9+ : New PvP]","color":"#1FA83C"}

# Sapphire icon
# Example: tellraw @s {"nbt":"SapphireFR","storage":"switch:main","interpret":true}
data modify storage switch:main SapphireFR set value {"text":"S","color":"#E4ECF7","font":"switch:main","hover_event":{"action":"show_text","value":{"text":"Saphirs","color":"#2E9BFF"}}}
data modify storage switch:main SapphireEN set value {"text":"S","color":"#E4ECF7","font":"switch:main","hover_event":{"action":"show_text","value":{"text":"Sapphires","color":"#2E9BFF"}}}

# Setup stats storage if needed
execute unless data storage switch:stats all run data modify storage switch:stats all set value {player:{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{}}
# ex: all = {player:{total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{pitch_creep:{total_games:0,played:[],wins:[],played_win_ratio:[]}, ...}}

# Setup storages if needed
execute unless data storage switch:ratings all run data modify storage switch:ratings all set value []
execute unless data storage switch:main UUIDs run data modify storage switch:main UUIDs set value []

# Scoreboard constants, shop load, advancements, and music load
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

# Map each voting group id to the list of its minigames (used to resolve a group once voted)
data modify storage switch:main groups_games set value {}
data modify storage switch:temp copy set from storage switch:main minigames
execute if data storage switch:temp copy[0] run function switch:build_groups_games with storage switch:temp copy[0]
function switch:modes/load_variants

## States
execute if score #engine_state switch.data matches -1 run tell none désactivé
execute if score #engine_state switch.data matches 0 run tell none à l arrêt
execute if score #engine_state switch.data matches 1 run tell none engine start
execute if score #engine_state switch.data matches 2 run tell none temps de vote
execute if score #engine_state switch.data matches 3 run tell none game en cours

# Games and maps picks history
execute unless data storage switch:main history run data modify storage switch:main history set value {games:[],maps:[],time_since_last_play:{}}

# Resume any map regeneration that a /reload or a server restart interrupted: a /reload clears every
# scheduled function, which leaves the #rg_<map> counter stuck and makes the map's NEXT end-of-game
# regeneration resume from the stale layer instead of doing a full pass (bridges below it survive).
function switch:maps/resume_regeneration

# Practice mode storage (lobby jumps checkpoints)
execute unless data storage switch:practice players run data modify storage switch:practice players set value []

# Jump timers (best times leaderboards)
scoreboard objectives add switch.jump_timer dummy
scoreboard objectives add switch.jump_timer_id dummy
execute unless data storage switch:jumps green run data modify storage switch:jumps green set value []
execute unless data storage switch:jumps white run data modify storage switch:jumps white set value []
execute unless data storage switch:jumps blue run data modify storage switch:jumps blue set value []
execute unless data storage switch:jumps yellow run data modify storage switch:jumps yellow set value []
execute unless data storage switch:jumps red run data modify storage switch:jumps red set value []
execute unless data storage switch:jumps brown run data modify storage switch:jumps brown set value []
execute unless data storage switch:jumps purple run data modify storage switch:jumps purple set value []
execute unless data storage switch:jumps dripstone run data modify storage switch:jumps dripstone set value []
execute unless data storage switch:jumps pink run data modify storage switch:jumps pink set value []
execute unless data storage switch:jumps bricks run data modify storage switch:jumps bricks set value []
execute unless data storage switch:jumps obsidian run data modify storage switch:jumps obsidian set value []
execute unless data storage switch:jumps duality run data modify storage switch:jumps duality set value []
execute unless data storage switch:jumps graviglitch run data modify storage switch:jumps graviglitch set value []

# One-time migration: the first version stored best times in ticks (20/s), we now use centiseconds
# (100/s). Convert every existing entry once (ticks * 5 = centiseconds). The guard score persists.
execute unless score #jump_timer_cs_migrated switch.data matches 1 run function switch:player/jump_timer/migrate
scoreboard players set #jump_timer_cs_migrated switch.data 1

# Learned kit layouts: one memory objective per kit, the active kit index, ticks before learning
scoreboard objectives add switch.layout.0569732a dummy {"text":"modes/_common/layers_starter_kit"}
scoreboard objectives add switch.layout.61ec066f dummy {"text":"modes/_coupdetat/give_items"}
scoreboard objectives add switch.layout.c93e7713 dummy {"text":"modes/beat_the_kings/give_items/civil"}
scoreboard objectives add switch.layout.86c2d5b1 dummy {"text":"modes/beat_the_kings/give_items/king"}
scoreboard objectives add switch.layout.fdcd47b1 dummy {"text":"modes/capture_the_flag/classes/archer"}
scoreboard objectives add switch.layout.ac8b5d78 dummy {"text":"modes/capture_the_flag/classes/chemister"}
scoreboard objectives add switch.layout.57e86795 dummy {"text":"modes/capture_the_flag/classes/demolisher"}
scoreboard objectives add switch.layout.8cfdf8c7 dummy {"text":"modes/capture_the_flag/classes/tank"}
scoreboard objectives add switch.layout.7bf7c096 dummy {"text":"modes/capture_the_flag/classes/warrior"}
scoreboard objectives add switch.layout.e1d238f4 dummy {"text":"modes/castagne/give_items"}
scoreboard objectives add switch.layout.ebe0aaeb dummy {"text":"modes/cigogne/give_items"}
scoreboard objectives add switch.layout.46ad8ddf dummy {"text":"modes/fish_fight/give_items"}
scoreboard objectives add switch.layout.9372de32 dummy {"text":"modes/one_shot/give_items"}
scoreboard objectives add switch.layout.ab484bdb dummy {"text":"modes/pitch_creep/give_items"}
scoreboard objectives add switch.layout.69a808fb dummy {"text":"modes/pitchout/give_items"}
scoreboard objectives add switch.layout.853d1d63 dummy {"text":"modes/protect_the_king/give_items"}
scoreboard objectives add switch.layout.84c9304b dummy {"text":"modes/pvpswap/give_items"}
scoreboard objectives add switch.layout.4788417b dummy {"text":"modes/rush_the_point/classes/archer"}
scoreboard objectives add switch.layout.fd05a136 dummy {"text":"modes/rush_the_point/classes/builder"}
scoreboard objectives add switch.layout.57cba5f6 dummy {"text":"modes/rush_the_point/classes/destroyer"}
scoreboard objectives add switch.layout.bde57b32 dummy {"text":"modes/rush_the_point/classes/aviateur"}
scoreboard objectives add switch.layout.e66ee0af dummy {"text":"modes/rush_the_point/classes/guerrier"}
scoreboard objectives add switch.layout.913bdfe1 dummy {"text":"modes/sheepwars/team_and_give"}
scoreboard objectives add switch.layout.e6323cc4 dummy {"text":"modes/spectres_game/give_items/spectre"}
scoreboard objectives add switch.layout.164667ad dummy {"text":"modes/spectres_game/give_items/visible"}
scoreboard objectives add switch.layout.ab8b96f5 dummy {"text":"modes/spleef/give_items"}
scoreboard objectives add switch.layout.06d28cdc dummy {"text":"modes/traitors_game/give_items"}
scoreboard objectives add switch.layout.kit dummy
scoreboard objectives add switch.layout.cd dummy

# Memories of kits that changed since the last load are dropped with their objective
data modify storage switch:layout stale set from storage switch:layout objectives
data modify storage switch:layout objectives set value [{n:"switch.layout.0569732a"},{n:"switch.layout.61ec066f"},{n:"switch.layout.c93e7713"},{n:"switch.layout.86c2d5b1"},{n:"switch.layout.fdcd47b1"},{n:"switch.layout.ac8b5d78"},{n:"switch.layout.57e86795"},{n:"switch.layout.8cfdf8c7"},{n:"switch.layout.7bf7c096"},{n:"switch.layout.e1d238f4"},{n:"switch.layout.ebe0aaeb"},{n:"switch.layout.46ad8ddf"},{n:"switch.layout.9372de32"},{n:"switch.layout.ab484bdb"},{n:"switch.layout.69a808fb"},{n:"switch.layout.853d1d63"},{n:"switch.layout.84c9304b"},{n:"switch.layout.4788417b"},{n:"switch.layout.fd05a136"},{n:"switch.layout.57cba5f6"},{n:"switch.layout.bde57b32"},{n:"switch.layout.e66ee0af"},{n:"switch.layout.913bdfe1"},{n:"switch.layout.e6323cc4"},{n:"switch.layout.164667ad"},{n:"switch.layout.ab8b96f5"},{n:"switch.layout.06d28cdc"}]
data remove storage switch:layout stale[{n:"switch.layout.0569732a"}]
data remove storage switch:layout stale[{n:"switch.layout.61ec066f"}]
data remove storage switch:layout stale[{n:"switch.layout.c93e7713"}]
data remove storage switch:layout stale[{n:"switch.layout.86c2d5b1"}]
data remove storage switch:layout stale[{n:"switch.layout.fdcd47b1"}]
data remove storage switch:layout stale[{n:"switch.layout.ac8b5d78"}]
data remove storage switch:layout stale[{n:"switch.layout.57e86795"}]
data remove storage switch:layout stale[{n:"switch.layout.8cfdf8c7"}]
data remove storage switch:layout stale[{n:"switch.layout.7bf7c096"}]
data remove storage switch:layout stale[{n:"switch.layout.e1d238f4"}]
data remove storage switch:layout stale[{n:"switch.layout.ebe0aaeb"}]
data remove storage switch:layout stale[{n:"switch.layout.46ad8ddf"}]
data remove storage switch:layout stale[{n:"switch.layout.9372de32"}]
data remove storage switch:layout stale[{n:"switch.layout.ab484bdb"}]
data remove storage switch:layout stale[{n:"switch.layout.69a808fb"}]
data remove storage switch:layout stale[{n:"switch.layout.853d1d63"}]
data remove storage switch:layout stale[{n:"switch.layout.84c9304b"}]
data remove storage switch:layout stale[{n:"switch.layout.4788417b"}]
data remove storage switch:layout stale[{n:"switch.layout.fd05a136"}]
data remove storage switch:layout stale[{n:"switch.layout.57cba5f6"}]
data remove storage switch:layout stale[{n:"switch.layout.bde57b32"}]
data remove storage switch:layout stale[{n:"switch.layout.e66ee0af"}]
data remove storage switch:layout stale[{n:"switch.layout.913bdfe1"}]
data remove storage switch:layout stale[{n:"switch.layout.e6323cc4"}]
data remove storage switch:layout stale[{n:"switch.layout.164667ad"}]
data remove storage switch:layout stale[{n:"switch.layout.ab8b96f5"}]
data remove storage switch:layout stale[{n:"switch.layout.06d28cdc"}]
execute if data storage switch:layout stale[0] run function switch:player/layout/prune with storage switch:layout stale[0]

