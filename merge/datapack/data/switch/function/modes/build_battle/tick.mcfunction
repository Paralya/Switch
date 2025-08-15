
scoreboard players add #build_battle_ticks switch.data 1

## Global tick
# For each marker, place the correct template
execute as @e[type=marker,tag=switch.build_battle_marker,sort=random,limit=5] at @s run function switch:modes/build_battle/tick_marker

# While people are voting, display the themes in inventory and check their votes
execute if score #build_battle_state switch.data matches 0 run kill @e[type=item]
execute if score #build_battle_state switch.data matches 0 as @a[tag=!detached] if data entity @s Inventory[0] run function switch:modes/build_battle/preparation/check_player_vote
execute if score #build_battle_state switch.data matches 0 as @a[tag=!detached] in switch:build_battle run function switch:modes/build_battle/preparation/display_themes

# Check players that voted during rating time
execute if score #build_battle_state switch.data matches 2 as @a[tag=!detached,scores={switch.right_click=1..}] at @s run function switch:modes/build_battle/rating_time/right_click

# Kill unexpected entities
kill @e[type=end_crystal]
kill @e[type=ender_pearl]
kill @e[type=enderman]
kill @e[type=fireball]
kill @e[type=wither]
kill @e[type=allay]
kill @e[type=vex]
kill @e[type=tnt]

## End game
execute if score #process_end switch.data matches 1.. run function switch:modes/build_battle/process_end

