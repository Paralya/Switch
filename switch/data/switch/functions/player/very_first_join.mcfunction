
scoreboard players add @s switch.money 0
scoreboard players add @s switch.money_bonus 0
scoreboard players operation @s switch.stats.wins = @s switch.money
scoreboard players operation @s switch.money *= #10 switch.data

function switch:player/joined
