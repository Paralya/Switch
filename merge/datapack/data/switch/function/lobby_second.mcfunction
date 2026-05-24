
# If players in the lobby, show title action bar with the current game and number of players
function switch:player/detached_action_bar

# Prevent end gateway's beam
data modify block 34 82 47 Age set value 143L

# Jumps
execute positioned -8 81.5 -22 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_green\\\"}].players",path:"jump_green",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000001"}
execute positioned 22 88.5 0 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_white\\\"}].players",path:"jump_white",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000002"}
execute positioned 0 81.5 -39 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_blue\\\"}].players",path:"jump_blue",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000003"}
execute positioned 33 83.5 47 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_dripstone\\\"}].players",path:"jump_dripstone",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000004"}
execute positioned 63 88.5 10 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_yellow\\\"}].players",path:"jump_yellow",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000005"}
execute positioned -26 91.5 15 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_red\\\"}].players",path:"jump_red",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000006"}
execute positioned 44 86.5 82 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_duality\\\"}].players",path:"jump_duality",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000007"}
execute positioned -44 93.5 27 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_pink\\\"}].players",path:"jump_pink",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000008"}
execute positioned -20 75.5 -78 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_brown\\\"}].players",path:"jump_brown",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000009"}
execute positioned -42 94.5 32 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_purple\\\"}].players",path:"jump_purple",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000010"}
execute positioned -123 79.5 -11 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_bricks\\\"}].players",path:"jump_bricks",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000011"}
execute positioned -83 100.5 71 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_graviglitch\\\"}].players",path:"jump_graviglitch",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000012"}
execute positioned 36 83.5 -73 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_obsidian\\\"}].players",path:"jump_obsidian",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000013"}

# Black holes (lobby and tutorial area)
execute positioned 0 69 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000001 run summon item_display ~ ~ ~ {UUID:uuid("20180612-2024-2025-2026-000000000001"),item:{id:"stone",count:1,components:{"item_model":"switch:bg_black_hole"}},Tags:["switch.black_hole_lobby"],transformation:{scale:[-300f,-300f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
execute positioned -500 69 -500 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000002 run summon item_display ~ ~ ~ {UUID:uuid("20180612-2024-2025-2026-000000000002"),item:{id:"stone",count:1,components:{"item_model":"switch:bg_black_hole"}},Tags:["switch.black_hole_tutorial"],transformation:{scale:[-100f,-100f,-100f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}


### Minigames stats
## None
execute positioned 47.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.TODO2.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000001"}
execute positioned 36.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.TODOO.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000002"}
execute positioned -80.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.TODO.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000003"}

## Global
execute positioned -5 71.5 -15 run function switch:stats/display/tick_macro {path:"all.player.total_deaths",label:"Deaths",mode:3,uuid:"20180612-2024-2025-2026-102000000001"}
execute positioned -5 71.5 -18 run function switch:stats/display/tick_macro {path:"all.player.total_kills",label:"Kills",mode:3,uuid:"20180612-2024-2025-2026-102000000002"}
execute positioned -3 71.5 -20 run function switch:stats/display/tick_macro {path:"all.player.total_wins",label:"Victories",mode:3,uuid:"20180612-2024-2025-2026-102000000003"}
execute positioned 0 71.5 -21 run function switch:stats/display/tick_macro {path:"all.player.played_win_ratio",label:"Win rate",mode:3,uuid:"20180612-2024-2025-2026-102000000004"}
execute positioned 3 71.5 -20 run function switch:stats/display/tick_macro {path:"all.player.total_played",label:"Games played",mode:3,uuid:"20180612-2024-2025-2026-102000000005"}
execute positioned 5 71.5 -18 run function switch:stats/display/tick_macro {path:"all.player.advancement_count",label:"Advancements",mode:3,uuid:"20180612-2024-2025-2026-102000000006"}
execute positioned 5 71.5 -15 run function switch:stats/display/tick_macro {path:"all.player.total_money",label:"Current money",mode:3,uuid:"20180612-2024-2025-2026-102000000007"}


## Solo multiple winners
# Murder mystery
execute positioned 14.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.murder_mystery.total_games",label:"Murder Mystery",mode:2,uuid:"20180612-2024-2025-2026-103000000001"}
execute positioned 13 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.murder_mystery.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-103000000002"}
execute positioned 16 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.murder_mystery.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-103000000003"}

# Pitch creep
execute positioned 25.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.pitch_creep.total_games",label:"Pitch Creep",mode:2,uuid:"20180612-2024-2025-2026-104000000001"}
execute positioned 24 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.pitch_creep.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-104000000002"}
execute positioned 27 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.pitch_creep.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-104000000003"}

# Warden escape
execute positioned 36.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.warden_escape.total_games",label:"Warden Escape",mode:2,uuid:"20180612-2024-2025-2026-105000000001"}
execute positioned 35 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.warden_escape.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-105000000002"}
execute positioned 38 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.warden_escape.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-105000000003"}

# Panic chase
execute positioned 47.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.panic_chase.total_games",label:"Panic Chase",mode:2,uuid:"20180612-2024-2025-2026-106000000001"}
execute positioned 49 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.panic_chase.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-106000000002"}
execute positioned 46 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.panic_chase.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-106000000003"}

# Creeper apocalypse
execute positioned 25.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.creeper_apocalypse.total_games",label:"Creeper Apocalypse",mode:2,uuid:"20180612-2024-2025-2026-107000000001"}
execute positioned 27 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.creeper_apocalypse.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-107000000002"}
execute positioned 24 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.creeper_apocalypse.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-107000000003"}

# Infected
execute positioned 14.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.infected.total_games",label:"Infected",mode:2,uuid:"20180612-2024-2025-2026-108000000001"}
execute positioned 16 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.infected.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-108000000002"}
execute positioned 13 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.infected.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-108000000003"}

## Solo one winner
# Spleef
execute positioned 2 70.5 14.5 run function switch:stats/display/tick_macro {path:"all.modes.spleef.total_games",label:"Spleef",mode:2,uuid:"20180612-2024-2025-2026-109000000001"}
execute positioned 6 70.5 13 run function switch:stats/display/tick_macro {path:"all.modes.spleef.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-109000000002"}
execute positioned 6 70.5 16 run function switch:stats/display/tick_macro {path:"all.modes.spleef.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-109000000003"}

# Dé à coudre
execute positioned 6 70.5 24 run function switch:stats/display/tick_macro {path:"all.modes.de_a_coudre.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-110000000001"}
execute positioned 2 70.5 25.5 run function switch:stats/display/tick_macro {path:"all.modes.de_a_coudre.total_games",label:"Dé à Coudre",mode:2,uuid:"20180612-2024-2025-2026-110000000002"}
execute positioned 6 70.5 27 run function switch:stats/display/tick_macro {path:"all.modes.de_a_coudre.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-110000000003"}

# TNT run
execute positioned 2 70.5 36.5 run function switch:stats/display/tick_macro {path:"all.modes.tnt_run.total_games",label:"TNT Run",mode:2,uuid:"20180612-2024-2025-2026-111000000001"}
execute positioned 6 70.5 35 run function switch:stats/display/tick_macro {path:"all.modes.tnt_run.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-111000000002"}
execute positioned 6 70.5 38 run function switch:stats/display/tick_macro {path:"all.modes.tnt_run.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-111000000003"}

# Block party
execute positioned 2 70.5 47.5 run function switch:stats/display/tick_macro {path:"all.modes.block_party.total_games",label:"Block Party",mode:2,uuid:"20180612-2024-2025-2026-112000000001"}
execute positioned 6 70.5 46 run function switch:stats/display/tick_macro {path:"all.modes.block_party.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-112000000002"}
execute positioned 6 70.5 49 run function switch:stats/display/tick_macro {path:"all.modes.block_party.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-112000000003"}

# Snowball painter
execute positioned 2 70.5 58.5 run function switch:stats/display/tick_macro {path:"all.modes.snowball_painter.total_games",label:"Snowball Painter",mode:2,uuid:"20180612-2024-2025-2026-113000000001"}
execute positioned 6 70.5 57 run function switch:stats/display/tick_macro {path:"all.modes.snowball_painter.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-113000000002"}
execute positioned 6 70.5 60 run function switch:stats/display/tick_macro {path:"all.modes.snowball_painter.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-113000000003"}

# Coin chaser
execute positioned 2 70.5 69.5 run function switch:stats/display/tick_macro {path:"all.modes.coin_chaser.total_games",label:"Coin Chaser",mode:2,uuid:"20180612-2024-2025-2026-114000000001"}
execute positioned 6 70.5 68 run function switch:stats/display/tick_macro {path:"all.modes.coin_chaser.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-114000000002"}
execute positioned 6 70.5 71 run function switch:stats/display/tick_macro {path:"all.modes.coin_chaser.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-114000000003"}

# Bombardement
execute positioned 2 70.5 80.5 run function switch:stats/display/tick_macro {path:"all.modes.bombardement.total_games",label:"Bombardement",mode:2,uuid:"20180612-2024-2025-2026-115000000001"}
execute positioned 6 70.5 79 run function switch:stats/display/tick_macro {path:"all.modes.bombardement.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-115000000002"}
execute positioned 6 70.5 82 run function switch:stats/display/tick_macro {path:"all.modes.bombardement.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-115000000003"}

# Minigolf
execute positioned 2 70.5 91.5 run function switch:stats/display/tick_macro {path:"all.modes.minigolf.total_games",label:"MiniGolf",mode:2,uuid:"20180612-2024-2025-2026-116000000001"}
execute positioned 6 70.5 90 run function switch:stats/display/tick_macro {path:"all.modes.minigolf.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-116000000002"}
execute positioned 6 70.5 93 run function switch:stats/display/tick_macro {path:"all.modes.minigolf.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-116000000003"}

# MLG à coudre
execute positioned 2 70.5 102.5 run function switch:stats/display/tick_macro {path:"all.modes.mlg_a_coudre.total_games",label:"MLG à Coudre",mode:2,uuid:"20180612-2024-2025-2026-117000000001"}
execute positioned 6 70.5 101 run function switch:stats/display/tick_macro {path:"all.modes.mlg_a_coudre.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-117000000002"}
execute positioned 6 70.5 104 run function switch:stats/display/tick_macro {path:"all.modes.mlg_a_coudre.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-117000000003"}

# Fish fight
execute positioned 2 70.5 113.5 run function switch:stats/display/tick_macro {path:"all.modes.fish_fight.total_games",label:"Fish Fight",mode:2,uuid:"20180612-2024-2025-2026-118000000001"}
execute positioned 6 70.5 112 run function switch:stats/display/tick_macro {path:"all.modes.fish_fight.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-118000000002"}
execute positioned 6 70.5 115 run function switch:stats/display/tick_macro {path:"all.modes.fish_fight.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-118000000003"}

# Fireblast
execute positioned 2 70.5 124.5 run function switch:stats/display/tick_macro {path:"all.modes.fireblast.total_games",label:"Fireblast",mode:2,uuid:"20180612-2024-2025-2026-119000000001"}
execute positioned 6 70.5 123 run function switch:stats/display/tick_macro {path:"all.modes.fireblast.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-119000000002"}
execute positioned 6 70.5 126 run function switch:stats/display/tick_macro {path:"all.modes.fireblast.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-119000000003"}
execute unless entity 20180612-2024-2025-2026-119000000004 run summon small_fireball 6 70.42 124.5 {UUID:uuid("20180612-2024-2025-2026-119000000004")}

# Race
execute positioned 2 70.5 135.5 run function switch:stats/display/tick_macro {path:"all.modes.race.total_games",label:"Race",mode:2,uuid:"20180612-2024-2025-2026-120000000001"}
execute positioned 6 70.5 134 run function switch:stats/display/tick_macro {path:"all.modes.race.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-120000000002"}
execute positioned 6 70.5 137 run function switch:stats/display/tick_macro {path:"all.modes.race.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-120000000003"}

# One shot
execute positioned -2 70.5 135.5 run function switch:stats/display/tick_macro {path:"all.modes.one_shot.total_games",label:"One Shot",mode:2,uuid:"20180612-2024-2025-2026-121000000001"}
execute positioned -6 70.5 137 run function switch:stats/display/tick_macro {path:"all.modes.one_shot.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-121000000002"}
execute positioned -6 70.5 134 run function switch:stats/display/tick_macro {path:"all.modes.one_shot.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-121000000003"}

# Pillars of fortune
execute positioned -2 70.5 124.5 run function switch:stats/display/tick_macro {path:"all.modes.pillars_of_fortune.total_games",label:" Pillars of Fortune ",mode:2,uuid:"20180612-2024-2025-2026-122000000001"}
execute positioned -6 70.5 126 run function switch:stats/display/tick_macro {path:"all.modes.pillars_of_fortune.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-122000000002"}
execute positioned -6 70.5 123 run function switch:stats/display/tick_macro {path:"all.modes.pillars_of_fortune.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-122000000003"}

# Memory mine
execute positioned -2 70.5 113.5 run function switch:stats/display/tick_macro {path:"all.modes.memory_mine.total_games",label:"Memory Mine",mode:2,uuid:"20180612-2024-2025-2026-123000000001"}
execute positioned -6 70.5 115 run function switch:stats/display/tick_macro {path:"all.modes.memory_mine.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-123000000002"}
execute positioned -6 70.5 112 run function switch:stats/display/tick_macro {path:"all.modes.memory_mine.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-123000000003"}
execute if predicate switch:chance/0.25 run particle dust{color:[1.0,0.0,0.0],scale:1.0} -5 69.55 114 0 0 0 0 1 normal

# Cigogne
execute positioned -2 70.5 102.5 run function switch:stats/display/tick_macro {path:"all.modes.cigogne.total_games",label:"Cigogne",mode:2,uuid:"20180612-2024-2025-2026-124000000001"}
execute positioned -6 70.5 104 run function switch:stats/display/tick_macro {path:"all.modes.cigogne.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-124000000002"}
execute positioned -6 70.5 101 run function switch:stats/display/tick_macro {path:"all.modes.cigogne.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-124000000003"}

# Shoot da'sheep
execute positioned -2 70.5 91.5 run function switch:stats/display/tick_macro {path:"all.modes.shoot_da_sheep.total_games",label:"Shoot Da\'Sheep",mode:2,uuid:"20180612-2024-2025-2026-125000000001"}
execute positioned -6 70.5 93 run function switch:stats/display/tick_macro {path:"all.modes.shoot_da_sheep.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-125000000002"}
execute positioned -6 70.5 90 run function switch:stats/display/tick_macro {path:"all.modes.shoot_da_sheep.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-125000000003"}

# Simultaneous jump
execute positioned -2 70.5 80.5 run function switch:stats/display/tick_macro {path:"all.modes.simultaneous_jump.total_games",label:"Simultaneous Jump",mode:2,uuid:"20180612-2024-2025-2026-126000000001"}
execute positioned -6 70.5 82 run function switch:stats/display/tick_macro {path:"all.modes.simultaneous_jump.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-126000000002"}
execute positioned -6 70.5 79 run function switch:stats/display/tick_macro {path:"all.modes.simultaneous_jump.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-126000000003"}

# Build battle
execute positioned -2 70.5 69.5 run function switch:stats/display/tick_macro {path:"all.modes.build_battle.total_games",label:"Build Battle",mode:2,uuid:"20180612-2024-2025-2026-127000000001"}
execute positioned -6 70.5 71 run function switch:stats/display/tick_macro {path:"all.modes.build_battle.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-127000000002"}
execute positioned -6 70.5 68 run function switch:stats/display/tick_macro {path:"all.modes.build_battle.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-127000000003"}

# Moutron
execute positioned -2 70.5 58.5 run function switch:stats/display/tick_macro {path:"all.modes.moutron.total_games",label:"Moutron",mode:2,uuid:"20180612-2024-2025-2026-128000000001"}
execute positioned -6 70.5 60 run function switch:stats/display/tick_macro {path:"all.modes.moutron.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-128000000002"}
execute positioned -6 70.5 57 run function switch:stats/display/tick_macro {path:"all.modes.moutron.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-128000000003"}

# Thunder spear
execute positioned -2 70.5 47.5 run function switch:stats/display/tick_macro {path:"all.modes.thunder_spear.total_games",label:"Thunder Spear",mode:2,uuid:"20180612-2024-2025-2026-129000000001"}
execute positioned -6 70.5 49 run function switch:stats/display/tick_macro {path:"all.modes.thunder_spear.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-129000000002"}
execute positioned -6 70.5 46 run function switch:stats/display/tick_macro {path:"all.modes.thunder_spear.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-129000000003"}

# Castagne
execute positioned -2 70.5 36.5 run function switch:stats/display/tick_macro {path:"all.modes.castagne.total_games",label:"Castagne",mode:2,uuid:"20180612-2024-2025-2026-130000000001"}
execute positioned -6 70.5 38 run function switch:stats/display/tick_macro {path:"all.modes.castagne.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-130000000002"}
execute positioned -6 70.5 35 run function switch:stats/display/tick_macro {path:"all.modes.castagne.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-130000000003"}

# Feed fast
execute positioned -2 70.5 25.5 run function switch:stats/display/tick_macro {path:"all.modes.feed_fast.total_games",label:"Feed Fast",mode:2,uuid:"20180612-2024-2025-2026-131000000001"}
execute positioned -6 70.5 27 run function switch:stats/display/tick_macro {path:"all.modes.feed_fast.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-131000000002"}
execute positioned -6 70.5 24 run function switch:stats/display/tick_macro {path:"all.modes.feed_fast.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-131000000003"}

# Pitchout
execute positioned -2 70.5 14.5 run function switch:stats/display/tick_macro {path:"all.modes.pitchout.total_games",label:"Pitchout",mode:2,uuid:"20180612-2024-2025-2026-132000000001"}
execute positioned -6 70.5 16 run function switch:stats/display/tick_macro {path:"all.modes.pitchout.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-132000000002"}
execute positioned -6 70.5 13 run function switch:stats/display/tick_macro {path:"all.modes.pitchout.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-132000000003"}


## Team VS Team
# Spectres game
execute positioned -14.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.spectres_game.total_games",label:"Spectres Game",mode:2,uuid:"20180612-2024-2025-2026-133000000001"}
execute positioned -13 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.spectres_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-133000000002"}
execute positioned -16 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.spectres_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-133000000003"}
particle dolphin -15 69.55 4 0.2 0 0.2 0 2 normal

# SheepWars
execute positioned -25.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.sheepwars.total_games",label:"SheepWars",mode:2,uuid:"20180612-2024-2025-2026-134000000001"}
execute positioned -24 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.sheepwars.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-134000000002"}
execute positioned -27 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.sheepwars.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-134000000003"}

# Rush the flag
execute positioned -36.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_flag.total_games",label:"Rush The Flag",mode:2,uuid:"20180612-2024-2025-2026-135000000001"}
execute positioned -35 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_flag.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-135000000002"}
execute positioned -38 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_flag.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-135000000003"}

# Guy shooter
execute positioned -46 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.gay_shooter.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-136000000001"}
execute positioned -47.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.gay_shooter.total_games",label:"Guy Shooter",mode:2,uuid:"20180612-2024-2025-2026-136000000002"}
execute positioned -49 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.gay_shooter.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-136000000003"}

# Layers 4 teams
execute positioned -58.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.layers_4_teams.total_games",label:"Layers 4 Teams",mode:2,uuid:"20180612-2024-2025-2026-137000000001"}
execute positioned -57 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.layers_4_teams.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-137000000002"}
execute positioned -60 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.layers_4_teams.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-137000000003"}

# Beat the kings
execute positioned -69.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.beat_the_kings.total_games",label:"Beat The Kings",mode:2,uuid:"20180612-2024-2025-2026-138000000001"}
execute positioned -68 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.beat_the_kings.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-138000000002"}
execute positioned -71 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.beat_the_kings.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-138000000003"}

# GlassRunner
execute positioned -80.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.glassrunner.total_games",label:"GlassRunner",mode:2,uuid:"20180612-2024-2025-2026-139000000001"}
execute positioned -79 70.5 7 run function switch:stats/display/tick_macro {path:"all.modes.glassrunner.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-139000000002"}
execute positioned -82 70.5 7 run function switch:stats/display/tick_macro {path:"all.modes.glassrunner.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-139000000003"}
execute unless entity 20180612-2024-2025-2026-139000000004 run summon snowball -80.42 72.20 6.05 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000004")}
execute unless entity 20180612-2024-2025-2026-139000000005 run summon snowball -80.48 73.40 7.30 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000005")}

# Laser game
execute positioned -69.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.laser_game.total_games",label:"Laser Game",mode:2,uuid:"20180612-2024-2025-2026-140000000001"}
execute positioned -71 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.laser_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-140000000002"}
execute positioned -68 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.laser_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-140000000003"}

# Layers 2 teams
execute positioned -58.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.layers_2_teams.total_games",label:"Layers 2 Teams",mode:2,uuid:"20180612-2024-2025-2026-141000000001"}
execute positioned -60 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.layers_2_teams.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-141000000002"}
execute positioned -57 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.layers_2_teams.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-141000000003"}

# Protect the king
execute positioned -47.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.protect_the_king.total_games",label:"Protect The King",mode:2,uuid:"20180612-2024-2025-2026-142000000001"}
execute positioned -49 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.protect_the_king.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-142000000002"}
execute positioned -46 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.protect_the_king.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-142000000003"}

# Rush the point
execute positioned -36.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_point.total_games",label:"Rush The Point",mode:2,uuid:"20180612-2024-2025-2026-143000000001"}
execute positioned -38 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_point.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-143000000002"}
execute positioned -35 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_point.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-143000000003"}

# Capture the flag
execute positioned -25.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.capture_the_flag.total_games",label:"Capture The Flag",mode:2,uuid:"20180612-2024-2025-2026-144000000001"}
execute positioned -27 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.capture_the_flag.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-144000000002"}
execute positioned -24 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.capture_the_flag.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-144000000003"}

# Traitors game
execute positioned -14.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.traitors_game.total_games",label:"Traitors Game",mode:2,uuid:"20180612-2024-2025-2026-145000000001"}
execute positioned -16 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.traitors_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-145000000002"}
execute positioned -13 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.traitors_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-145000000003"}

