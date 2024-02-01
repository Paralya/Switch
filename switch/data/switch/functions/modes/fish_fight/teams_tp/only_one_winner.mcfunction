tellraw @a[tag=!detached] ["",{"text":"----------------------------------","color":"#CCDBF9"},{"text":"\n"},{"text":"Only One Winner","bold":true,"color":"#9FD5EE"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Il ne reste qu'","color":"white"},{"text":"une","bold":true,"underlined":true,"color":"white"},{"text":" équipe en vie, battez vous pour être le dernier","color":"white"},{"text":" Vainqueur","italic":true,"color":"red"},{"text":"..","color":"white"},{"text":"\n"},{"text":"----------------------------------","color":"#CCDBF9"}]
playsound entity.ender_dragon.growl ambient @s
team remove switch.temp.red
team remove switch.temp.blue
scoreboard players set #TEAM_FISH switch.data 0