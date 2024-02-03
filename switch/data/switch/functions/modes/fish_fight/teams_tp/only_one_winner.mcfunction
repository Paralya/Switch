tellraw @a[tag=!detached] ["",{"text":"----------------------------------","color":"#CCDBF9"},{"text":"\n"},{"text":"Only One Winner","bold":true,"color":"#9FD5EE"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Il ne reste qu'","color":"white"},{"text":"une","bold":true,"underlined":true,"color":"white"},{"text":" équipe en vie, vous avez obtenu une victoire ! Mais il faut maintenant se battre pour être le dernier","color":"white"},{"text":" Vainqueur","italic":true,"color":"red"},{"text":"..","color":"white"},{"text":"\n"},{"text":"----------------------------------","color":"#CCDBF9"}]
playsound entity.zombified_piglin.ambient ambient @s
execute as @a[tag=!detached,scores={switch.alive=1..}] at @s run function switch:engine/add_win

execute if data storage switch:main {map:"luxio_fish_fight"} as @a[tag=!detached] run function switch:maps/spread_one_player
execute if data storage switch:main {map:"airdox_fish_fight"} as @a[tag=!detached] run function switch:modes/fish_fight/tp_airdox


effect give @a[tag=!detached,gamemode=!spectator] slowness 4 5 true
team remove switch.temp.red
team remove switch.temp.blue
clear @a[tag=!detached] red_wool
clear @a[tag=!detached] blue_wool
scoreboard players set #TEAM_FISH switch.data 0