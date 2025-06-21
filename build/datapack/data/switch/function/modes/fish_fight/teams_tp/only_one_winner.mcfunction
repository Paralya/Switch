
#> switch:modes/fish_fight/teams_tp/only_one_winner
#
# @within	switch:modes/fish_fight/second
#

function switch:translations/modes_fish_fight_teams_tp_only_one_winner
playsound entity.zombified_piglin.ambient ambient @s
execute as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win

execute if data storage switch:main {map:"luxio_fish_fight"} as @a[tag=!detached] run function switch:maps/spread_one_player
execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached] run function switch:modes/fish_fight/tp_airdox

effect give @a[tag=!detached,gamemode=!spectator] slowness 4 5 true
team remove switch.temp.red
team remove switch.temp.blue
clear @a[tag=!detached] red_concrete
clear @a[tag=!detached] blue_concrete
scoreboard players set #TEAM_FISH switch.data 0

