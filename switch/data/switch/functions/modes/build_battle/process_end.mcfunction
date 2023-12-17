
scoreboard players add #process_end switch.data 1

# Teleport players to most points build, add "winner" to the sign, and calculate scores
execute if score #process_end switch.data matches 1 at @e[type=marker,tag=switch.build_battle.best] run spreadplayers ~19 ~19 5 10 under 128 false @a[tag=!detached]
execute if score #process_end switch.data matches 1 at @e[type=marker,tag=switch.build_battle.best] run data modify block ~19 ~30 ~19 front_text.messages[0] set value '{"text":"Winner !","underlined":true}'
execute if score #process_end switch.data matches 1 at @e[type=marker,tag=switch.build_battle.best] run data modify block ~19 ~30 ~19 back_text.messages[0] set value '{"text":"Winner !","underlined":true}'
execute if score #process_end switch.data matches 1 at @e[type=marker,tag=switch.build_battle.best] run setblock ~19 ~29 ~19 emerald_block
execute if score #process_end switch.data matches 1 run function switch:modes/build_battle/rating_time/end_calculation
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run function switch:modes/build_battle/add_money

# Fireworks
execute if score #process_end switch.data matches 1 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 25 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 50 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 75 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 100 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 125 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 150 at @a[tag=!detached,sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}

execute if score #process_end switch.data matches 200 run function switch:engine/restart

