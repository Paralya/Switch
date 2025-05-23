
#> switch:translations/modes_fish_fight_teams_tp_only_one_winner
#
# @within	switch:modes/fish_fight/teams_tp/only_one_winner
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"text":"----------------------------------","color":"#CCDBF9"},{"text":"\nOnly One Winner","bold":true,"color":"#9FD5EE"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Il ne reste qu'","color":"white"},{"text":"une","bold":true,"underlined":true,"color":"white"},{"text":" équipe en vie, vous avez obtenu une victoire ! Mais il faut maintenant se battre pour être le dernier","color":"white"},{"text":" Vainqueur","italic":true,"color":"red"},{"text":"..","color":"white"},{"text":"\n----------------------------------","color":"#CCDBF9"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"text":"----------------------------------","color":"#CCDBF9"},{"text":"\nOnly One Winner","bold":true,"color":"#9FD5EE"},{"text":" \u2022 ","bold":true,"color":"gray"},{"text":"Only ","color":"white"},{"text":"one","bold":true,"underlined":true,"color":"white"},{"text":" team alive, you've got a win! But now you have to fight to be the last one ","color":"white"},{"text":"Winner","italic":true,"color":"red"},{"text":"...","color":"white"},{"text":"\n----------------------------------","color":"#CCDBF9"}]

