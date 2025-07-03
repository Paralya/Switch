
# Increment ticks counter
scoreboard players add #pitchout_ticks switch.data 1

# Prevent item drops
execute as @e[type=item,tag=!switch.checked] run function switch:modes/pitchout/no_drop

# Teleport players back to spawn if they fall in water and have cooldown
execute as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] if data storage switch:main {map:"pitchout_1"} run function switch:modes/pitchout/map_1/teleport_players
execute as @a[tag=!detached,scores={switch.alive=1..,switch.temp.cooldown=1..},predicate=switch:in_water] if data storage switch:main {map:"pitchout_halloween"} run function switch:modes/pitchout/map_halloween/teleport_players

# Kill players who fall in water (if no cooldown)
execute as @a[tag=!detached,scores={switch.alive=1..},predicate=switch:in_water,sort=random] run function switch:modes/pitchout/death

# Display colored particles above players based on lives remaining and player name
# 4 lives (blue)
execute at @a[tag=!detached,scores={switch.alive=4}] run particle dust{color:[0.0,0.0,0.75],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
# 3 lives (special colors for specific players, green for others)
execute at @a[tag=!detached,scores={switch.alive=3},name="Stoupy51"] run particle dust{color:[0.0,0.0,0.75],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name="AirDox_"] run particle dust{color:[0.749,0.514,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name="Luxio_"] run particle dust{color:[0.557,0.122,0.643],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name="Thitanas"] run particle dust{color:[0.0,0.0,0.5],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
execute at @a[tag=!detached,scores={switch.alive=3},name=!"Stoupy51",name=!"AirDox_",name=!"Luxio_",name=!"Thitanas"] run particle dust{color:[0.0,0.75,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
# 2 lives (yellow)
execute at @a[tag=!detached,scores={switch.alive=2}] run particle dust{color:[0.75,0.75,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1
# 1 life (red)
execute at @a[tag=!detached,scores={switch.alive=1}] run particle dust{color:[0.75,0.0,0.0],scale:1.0} ~ ~2.4 ~ .1 .1 .1 0 1

# Handle respawn cooldown
scoreboard players remove @a[scores={switch.temp.cooldown=1..}] switch.temp.cooldown 1
execute as @a[scores={switch.temp.cooldown=1..80}] run attribute @s jump_strength base reset
item replace entity @a[scores={switch.temp.cooldown=1}] armor.chest with air

# Handle deaths from unknown causes
function switch:utils/on_death_run_function {function:"switch:modes/pitchout/death"}

# Check for game end conditions
# Count remaining players
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,scores={switch.alive=1..}]
# End game if only 1 or fewer players remain
execute if score #pitchout_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function switch:modes/pitchout/process_end
# End game after 600 seconds (10 minutes)
execute if score #pitchout_seconds switch.data matches 600.. run function switch:modes/pitchout/process_end

