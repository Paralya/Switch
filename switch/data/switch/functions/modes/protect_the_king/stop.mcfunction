
tp @e[type=!player] 0 -10000 0
kill @e[type=!player]

tag @a remove switch.king
team remove switch.temp.red_king
team remove switch.temp.blue_king
team remove switch.temp.red
team remove switch.temp.blue

bossbar remove switch.temp.red_king
bossbar remove switch.temp.blue_king

execute as @a run attribute @s generic.attack_speed base set 4.0
execute as @a run attribute @s generic.max_health base set 20.0

scoreboard objectives remove switch.temp.deathCount

