
# Basic objectives
$scoreboard players operation $(username) switch.id = $(old_username) switch.id
$scoreboard players operation $(username) switch.tutorial = $(old_username) switch.tutorial
$scoreboard players operation $(username) switch.money = $(old_username) switch.money
$scoreboard players operation $(username) switch.money_bonus = $(old_username) switch.money_bonus
$scoreboard players operation $(username) switch.last_total_games = $(old_username) switch.last_total_games
$scoreboard players operation $(username) switch.reconnect = $(old_username) switch.reconnect
$scoreboard players operation $(username) switch.advancements = $(old_username) switch.advancements
$scoreboard players operation $(username) switch.play_time = $(old_username) switch.play_time
$scoreboard players operation $(username) switch.last_death = $(old_username) switch.last_death
$scoreboard players operation $(username) switch.stats.kills = $(old_username) switch.stats.kills
$scoreboard players operation $(username) switch.stats.deaths = $(old_username) switch.stats.deaths
$scoreboard players operation $(username) switch.stats.played = $(old_username) switch.stats.played
$scoreboard players operation $(username) switch.stats.wins = $(old_username) switch.stats.wins
$scoreboard players operation $(username) switch.stats.win_streak = $(old_username) switch.stats.win_streak

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
$function switch:player/username_change/update_shops {username:"$(username)", old_username:"$(old_username)"}

