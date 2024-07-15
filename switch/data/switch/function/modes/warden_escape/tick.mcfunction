
scoreboard players add #warden_escape_ticks switch.data 1

# Manage death and items
execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/warden_escape/death
kill @e[type=item]

# Player tick to change Warden Sus
execute as @a[tag=!detached,gamemode=adventure] at @s run function switch:modes/warden_escape/player_tick

# Infinite snowball
item replace entity @a[tag=!detached] hotbar.0 with snowball 16
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.temp.snowballs_shot=42..}] only switch:visible/72

# Process end
execute unless entity @a[scores={switch.alive=1..}] run function switch:modes/warden_escape/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/warden_escape/process_end

