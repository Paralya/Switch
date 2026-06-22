
#> switch:modes/fish_fight/death
#
# @within	switch:modes/fish_fight/joined
#			switch:modes/fish_fight/tick [ as @a[tag=!detached,gamemode=survival,scores={switch.temp.deathCooldown=60..}] ]
#			switch:modes/fish_fight/tick [ as @a[scores={switch.alive=1..},predicate=switch:in_water,sort=random] ]
#

function switch:modes/fish_fight/translations/death

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] run function switch:modes/fish_fight/teams_tp/tp_give

function switch:modes/_common/death_spectator_lives


scoreboard players set @s switch.temp.deathCooldown 0

