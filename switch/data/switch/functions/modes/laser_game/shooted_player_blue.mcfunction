
tag @s add global.ignore
playsound entity.player.hurt player @s
execute as @a[tag=switch.temp] at @s run playsound entity.arrow.hit_player player @s
tellraw @s [{"selector":"@a[tag=switch.temp]"},{"text":" vous a tiré dessus ! Vous êtes désactivé pendant 5 secondes.","color":"gray"}]
tellraw @a[tag=switch.temp] [{"text":"Vous avez tué ","color":"gray"},{"selector":"@s"},{"text":" ! [+10 points]"}]

scoreboard players set @s switch.temp.dead_cooldown -100

scoreboard players add #red_points switch.data 10
function switch:modes/laser_game/update_sidebar/red_points

