
execute at @e[tag=switch.checkpoint] run forceload remove ~ ~
execute at @e[tag=switch.effect_block] run forceload remove ~ ~

# Safe kill karts and checkpoints
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.vehicle]"}
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.checkpoint]"}

schedule clear switch:modes/race/give_items
schedule clear switch:modes/race/post_load

scoreboard objectives remove switch.temp
scoreboard objectives remove switch.temp.old_speed
scoreboard objectives remove switch.temp.compteur
scoreboard objectives remove switch.temp.dx
scoreboard objectives remove switch.temp.dy
scoreboard objectives remove switch.temp.dz
scoreboard objectives remove switch.temp.id
scoreboard objectives remove switch.temp.vote_collisions
scoreboard objectives remove switch.temp.change_map
scoreboard objectives remove switch.temp.checkpoint
scoreboard objectives remove switch.temp.classement
scoreboard objectives remove switch.temp.pv_classement
scoreboard objectives remove switch.temp.pos_on_last_lap
scoreboard objectives remove switch.temp.sidebar
scoreboard objectives remove switch.respawn_cp_id
scoreboard objectives remove switch.hard_respawn_cp_id
scoreboard objectives remove switch.checkpoint
scoreboard objectives remove switch.lap
scoreboard objectives remove switch.effects.last
scoreboard objectives remove switch.effects.timer

team remove switch.temp.kart
team remove switch.temp.1
team remove switch.temp.2
team remove switch.temp.3
team remove switch.temp.4
team remove switch.temp.5
team remove switch.temp.6
team remove switch.temp.7
team remove switch.temp.8
team remove switch.temp.9
team remove switch.temp.10
team remove switch.temp.10+

data remove storage switch:main respawn_states

