
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #warden_escape_ticks switch.data 1

kill @e[type=item]

execute as @a[tag=!switch.detached,x=0,y=69,z=0,distance=..10] run function switch:modes/warden_escape/death
execute as @a[tag=!switch.detached,gamemode=adventure] at @s run function switch:modes/warden_escape/player_tick

item replace entity @a[tag=!switch.detached] hotbar.0 with snowball 16

execute unless entity @a[tag=!switch.detached,scores={switch.alive=1..}] run function switch:modes/warden_escape/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/warden_escape/process_end

