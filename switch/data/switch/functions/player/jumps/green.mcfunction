
scoreboard players add @s switch.money 51
function switch:stats/util_update_player
tellraw @s [{"nbt":"ParalyaMoney","storage":"switch:main","interpret":true},{"text":" En récompense, je te donne "},{"text":"51","color":"light_purple"},{"text":"$","color":"light_purple"},{"text":" !","color":"light_purple"}]

