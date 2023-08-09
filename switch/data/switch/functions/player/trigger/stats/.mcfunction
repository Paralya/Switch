
# Bases
tellraw @s ["",{"nbt":"ParalyaStats","storage":"switch:main","interpret":true},{"text":" Voici vos statistiques :"}]

# Stats for each game
tellraw @s[scores={switch.stats.played.pitch_creep=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.pitch_creep"},"color":"yellow"},{"text":" parties jouées de Pitch Creep"}]
tellraw @s[scores={switch.stats.played.laser_game=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.laser_game"},"color":"yellow"},{"text":" parties jouées de Laser Game"}]
tellraw @s[scores={switch.stats.played.warden_escape=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.warden_escape"},"color":"yellow"},{"text":" parties jouées de Warden Escape"}]
tellraw @s[scores={switch.stats.played.pitchout=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.pitchout"},"color":"yellow"},{"text":" parties jouées de Pitchout"}]
tellraw @s[scores={switch.stats.played.glassrunner=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.glassrunner"},"color":"yellow"},{"text":" parties jouées de Glass Runner"}]
tellraw @s[scores={switch.stats.played.creeper_apocalypse=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.creeper_apocalypse"},"color":"yellow"},{"text":" parties jouées de Creeper Apocalypse"}]
tellraw @s[scores={switch.stats.played.traitors_game=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.traitors_game"},"color":"yellow"},{"text":" parties jouées de Traitors Game"}]
tellraw @s[scores={switch.stats.played.boat_race=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.boat_race"},"color":"yellow"},{"text":" parties jouées de Boat Race"}]
tellraw @s[scores={switch.stats.played.spectres_game=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.spectres_game"},"color":"yellow"},{"text":" parties jouées de Spectres Game"}]
tellraw @s[scores={switch.stats.played.kart_racer=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.kart_racer"},"color":"yellow"},{"text":" parties jouées de Kart Racer"}]
tellraw @s[scores={switch.stats.played.rush_the_point=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.rush_the_point"},"color":"yellow"},{"text":" parties jouées de Rush The Point"}]
tellraw @s[scores={switch.stats.played.spleef=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.spleef"},"color":"yellow"},{"text":" parties jouées de Spleef"}]
tellraw @s[scores={switch.stats.played.de_a_coudre=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.de_a_coudre"},"color":"yellow"},{"text":" parties jouées de Dé à Coudre"}]
tellraw @s[scores={switch.stats.played.feed_fast=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.feed_fast"},"color":"yellow"},{"text":" parties jouées de Feed Fast"}]
tellraw @s[scores={switch.stats.played.mlg_a_coudre=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.mlg_a_coudre"},"color":"yellow"},{"text":" parties jouées de MLG à Coudre"}]
tellraw @s[scores={switch.stats.played.protect_the_king=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.protect_the_king"},"color":"yellow"},{"text":" parties jouées de Protect The King"}]
tellraw @s[scores={switch.stats.played.castagne=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.castagne"},"color":"yellow"},{"text":" parties jouées de Castagne"}]
tellraw @s[scores={switch.stats.played.layers_2_teams=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.layers_2_teams"},"color":"yellow"},{"text":" parties jouées de Layers 2 Teams"}]
tellraw @s[scores={switch.stats.played.layers_4_teams=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.layers_4_teams"},"color":"yellow"},{"text":" parties jouées de Layers 4 Teams"}]
tellraw @s[scores={switch.stats.played.thunder_spear=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.thunder_spear"},"color":"yellow"},{"text":" parties jouées de Thunder Spear"}]
tellraw @s[scores={switch.stats.played.tnt_run=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.tnt_run"},"color":"yellow"},{"text":" parties jouées de TNT Run"}]
tellraw @s[scores={switch.stats.played.sheepwars=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.sheepwars"},"color":"yellow"},{"text":" parties jouées de SheepWars"}]
tellraw @s[scores={switch.stats.played.block_party=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.block_party"},"color":"yellow"},{"text":" parties jouées de Block Party"}]
tellraw @s[scores={switch.stats.played.replicate_the_build=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.replicate_the_build"},"color":"yellow"},{"text":" parties jouées de Replicate The Build"}]
tellraw @s[scores={switch.stats.played.moutron=1..}] [{"text":"➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.played.moutron"},"color":"yellow"},{"text":" parties jouées de Moutron"}]

# Total victories (all games)
tellraw @s [{"text":"\n➤ ","color":"gold"},{"score":{"name":"@s","objective":"switch.stats.victories"},"color":"yellow"},{"text":" victoires au total"}]

# Reset trigger
scoreboard players set @s switch.trigger.stats 0

