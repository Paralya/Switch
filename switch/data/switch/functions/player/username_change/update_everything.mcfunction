
$say $(old_username)
$say $(username)
$say $(UUID)

# Basic objectives
$scoreboard players operation @s switch.id = $(old_username) switch.id
$scoreboard players operation @s switch.tutorial = $(old_username) switch.tutorial
$scoreboard players operation @s switch.money = $(old_username) switch.money
$scoreboard players operation @s switch.money_bonus = $(old_username) switch.money_bonus
$scoreboard players operation @s switch.last_total_games = $(old_username) switch.last_total_games
$scoreboard players operation @s switch.reconnect = $(old_username) switch.reconnect
$scoreboard players operation @s switch.play_time = $(old_username) switch.play_time
$scoreboard players operation @s switch.last_death = $(old_username) switch.last_death
$scoreboard players operation @s switch.stats.kills = $(old_username) switch.stats.kills
$scoreboard players operation @s switch.stats.deaths = $(old_username) switch.stats.deaths
$scoreboard players operation @s switch.stats.played = $(old_username) switch.stats.played
$scoreboard players operation @s switch.stats.wins = $(old_username) switch.stats.wins
$scoreboard players operation @s switch.stats.win_streak = $(old_username) switch.stats.win_streak

## TODO
# switch:stats => all.id.[...].players[...]
# switch:advancements => all[...].players[...]
# switch:ratings => all[...].players[...]


