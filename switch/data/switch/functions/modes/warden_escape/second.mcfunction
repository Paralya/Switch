
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #warden_escape_seconds switch.data 1

execute if score #warden_escape_seconds switch.data matches 0.. run function switch:modes/warden_escape/xp_bar
execute if score #warden_escape_seconds switch.data matches 0 run summon warden 520 101.69 520
execute if score #warden_escape_seconds switch.data matches 0 run summon warden 548 101.69 502
execute if score #warden_escape_seconds switch.data matches 0 run summon warden 509 101.69 506
execute if score #warden_escape_seconds switch.data matches 0 run summon warden 504 101.69 547
execute if score #warden_escape_seconds switch.data matches 0 run summon warden 548 101.69 548
execute if score #warden_escape_seconds switch.data matches 0 run effect give @e[type=warden] glowing 2 255 true
execute if score #warden_escape_seconds switch.data matches ..-1 run tp @e[type=warden] 0 -10000 0
execute if score #warden_escape_seconds switch.data matches ..-1 run kill @e[type=warden]

