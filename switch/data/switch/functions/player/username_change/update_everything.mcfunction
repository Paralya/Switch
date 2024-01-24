
# Basic objectives
$scoreboard players operation @s switch.id = $(old_username) switch.id
$scoreboard players operation @s switch.tutorial = $(old_username) switch.tutorial
$scoreboard players operation @s switch.money = $(old_username) switch.money
$scoreboard players operation @s switch.money_bonus = $(old_username) switch.money_bonus
$scoreboard players operation @s switch.last_total_games = $(old_username) switch.last_total_games
$scoreboard players operation @s switch.reconnect = $(old_username) switch.reconnect
$scoreboard players operation @s switch.advancements = $(old_username) switch.advancements
$scoreboard players operation @s switch.play_time = $(old_username) switch.play_time
$scoreboard players operation @s switch.last_death = $(old_username) switch.last_death
$scoreboard players operation @s switch.stats.kills = $(old_username) switch.stats.kills
$scoreboard players operation @s switch.stats.deaths = $(old_username) switch.stats.deaths
$scoreboard players operation @s switch.stats.played = $(old_username) switch.stats.played
$scoreboard players operation @s switch.stats.wins = $(old_username) switch.stats.wins
$scoreboard players operation @s switch.stats.win_streak = $(old_username) switch.stats.win_streak

# Stats {player:{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{}}
data modify storage switch:temp copy set from storage switch:main minigames
data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_stats_loop with storage switch:temp copy[0]
$data modify storage switch:stats all.player.total_played[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_wins[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_kills[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_deaths[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_money[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.played_win_ratio[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.advancement_count[{name:"$(old_username)"}].name set value "$(username)"

# Advancements
data modify storage switch:temp copy set from storage switch:advancements all
data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_advancements_loop with storage switch:temp copy[0]

# Ratings
data modify storage switch:temp copy set from storage switch:ratings all
data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_ratings_loop with storage switch:temp copy[0]


# Shops
$scoreboard players operation @s switch.pitchout.boots = $(old_username) switch.pitchout.boots
$scoreboard players operation @s switch.pitchout.ender_pearl = $(old_username) switch.pitchout.ender_pearl

$scoreboard players operation @s switch.infected.sword = $(old_username) switch.infected.sword
$scoreboard players operation @s switch.infected.armor = $(old_username) switch.infected.armor
$scoreboard players operation @s switch.infected.antidote = $(old_username) switch.infected.antidote
$scoreboard players operation @s switch.infected.zombie_speed = $(old_username) switch.infected.zombie_speed
$scoreboard players operation @s switch.infected.zombie_jump = $(old_username) switch.infected.zombie_jump
$scoreboard players operation @s switch.infected.zombie_strength = $(old_username) switch.infected.zombie_strength

$scoreboard players operation @s switch.spleef.snow_block = $(old_username) switch.spleef.snow_block
$scoreboard players operation @s switch.spleef.powder_snow = $(old_username) switch.spleef.powder_snow

$scoreboard players operation @s switch.sheepwars.choosen_kit = $(old_username) switch.sheepwars.choosen_kit
$scoreboard players operation @s switch.sheepwars.kit_health = $(old_username) switch.sheepwars.kit_health
$scoreboard players operation @s switch.sheepwars.kit_bow = $(old_username) switch.sheepwars.kit_bow
$scoreboard players operation @s switch.sheepwars.kit_sword = $(old_username) switch.sheepwars.kit_sword
$scoreboard players operation @s switch.sheepwars.kit_more_sheep = $(old_username) switch.sheep.more_sheep
$scoreboard players operation @s switch.sheepwars.kit_builder = $(old_username) switch.sheepwars.kit_builder
$scoreboard players operation @s switch.sheepwars.kit_mobility = $(old_username) switch.sheepwars.kit_mobility
$scoreboard players operation @s switch.sheepwars.kit_armored_sheep = $(old_username) switch.sheepwars.kit_armored_sheep


