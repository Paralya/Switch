
#> switch:modes/fish_fight/tp_airdox
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/fish_fight/start [ as @a[tag=!detached,sort=random] ]
#			switch:modes/fish_fight/tick [ as @a[tag=!detached,gamemode=survival,scores={switch.alive=1..,switch.temp.cooldown=1..}] & at @s ]
#			switch:modes/fish_fight/tick [ as @e[type=axolotl] & at @s ]
#			switch:modes/fish_fight/teams_tp/only_one_winner [ as @a[tag=!detached] ]
#			switch:modes/fish_fight/teams_tp/tp_give
#

execute store result score #tp_random switch.data run random value 1..19
scoreboard players set @s switch.temp.deathCooldown 0

execute if score #tp_random switch.data matches 1 run tp @s 2 151 -12030

execute if score #tp_random switch.data matches 2 run tp @s 1 150 -12024

execute if score #tp_random switch.data matches 3 run tp @s 10 152 -12019

execute if score #tp_random switch.data matches 4 run tp @s 16 154 -12012

execute if score #tp_random switch.data matches 5 run tp @s 7 153 -12011

execute if score #tp_random switch.data matches 6 run tp @s 10 152 -12006

execute if score #tp_random switch.data matches 7 run tp @s 4 152 -12003

execute if score #tp_random switch.data matches 8 run tp @s 8 151 -11999

execute if score #tp_random switch.data matches 9 run tp @s 1 151 -11994

execute if score #tp_random switch.data matches 10 run tp @s 12 142 -11972

execute if score #tp_random switch.data matches 11 run tp @s 5 142 -11975

execute if score #tp_random switch.data matches 12 run tp @s 8 144 -11980

execute if score #tp_random switch.data matches 13 run tp @s 1 144 -11985

execute if score #tp_random switch.data matches 14 run tp @s 7 144 -11993

execute if score #tp_random switch.data matches 15 run tp @s 8 143 -12003

execute if score #tp_random switch.data matches 16 run tp @s 11 144 -11997

execute if score #tp_random switch.data matches 17 run tp @s -14 151 -11995

execute if score #tp_random switch.data matches 18 run tp @s -14 156 -12005

execute if score #tp_random switch.data matches 19 run tp @s -11 151 -12013

