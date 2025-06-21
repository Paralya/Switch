
#> switch:player/joined
#
# @within	switch:player/tick
#

# Add 0 to every shop score
function switch:shop/initialize_shop_scores

# Check if new username
function switch:player/username_change/check

# Update advancements just in case
function switch:advancements/update_percentages

# Update player storage
function switch:player/update_stats_storage/main
#function switch:stats/sort_player_stats

# On détecte si c'est une reconnexion ou non
scoreboard players set #reconnect switch.data 0
execute if score @s switch.last_total_games = total_games switch.last_total_games run scoreboard players set #reconnect switch.data 1

# Si ce n'est pas une reconnexion, on reset ses attributs
execute if score #reconnect switch.data matches 0 run function switch:utils/reset_attributes

# Si le joueur n'a pas joué depuis plus de 600 secondes, on le détache
scoreboard players operation @s switch.reconnect -= #score switch.reconnect
execute if score @s[tag=!detached] switch.reconnect matches -600.. run function switch:player/make_join
function switch:translations/player_joined
execute unless score @s switch.reconnect matches -600.. run function switch:player/trigger/detach/main

# Prevent calling this function again
scoreboard players operation @s switch.reconnect = #score switch.reconnect

