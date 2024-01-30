
# Tellraw + sound + fireworks
execute if entity @s[tag=switch.blue_flag] run tellraw @a[tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_blue_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"bleu","color":"blue"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[tag=!detached] ["",{"text":"[CaptureTheFlag] ","color":"yellow"},{"selector":"@p[tag=switch.has_red_flag]"},{"text":" vient de sécuriser le drapeau ","color":"aqua"},{"text":"rouge","color":"red"}]
execute if entity @s[tag=switch.blue_flag] run advancement grant @p[tag=switch.has_blue_flag] only switch:visible/33
execute if entity @s[tag=switch.red_flag] run advancement grant @p[tag=switch.has_red_flag] only switch:visible/33
execute as @a[tag=!detached] at @s run playsound entity.firework_rocket.blast ambient @s

execute if entity @s[tag=switch.blue_flag] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680],FadeColors:[I;16711680]}]}}}}
execute if entity @s[tag=switch.red_flag] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;255],FadeColors:[I;255]}]}}}}

# Add point
execute if entity @s[tag=switch.blue_flag] run scoreboard players add #red_points switch.data 1
execute if entity @s[tag=switch.red_flag] run scoreboard players add #blue_points switch.data 1
execute if entity @s[tag=switch.blue_flag] as @p[tag=switch.has_blue_flag] run function switch:modes/capture_the_flag/teleport_to_spawn
execute if entity @s[tag=switch.red_flag] as @p[tag=switch.has_red_flag] run function switch:modes/capture_the_flag/teleport_to_spawn

# Reset the flag
function switch:modes/capture_the_flag/flag_reset

