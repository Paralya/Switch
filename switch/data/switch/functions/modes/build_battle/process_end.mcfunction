
scoreboard players add #process_end switch.data 1

# Teleport players to most points build and calculate scores
execute if score #process_end switch.data matches 1 at @e[type=marker,tag=switch.build_battle.best] run spreadplayers ~24 ~24 5 10 under 128 false @a
execute if score #process_end switch.data matches 1 run function switch:modes/build_battle/rating_time/end_calculation

# Fireworks
execute if score #process_end switch.data matches 1 at @a[sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 20 at @a[sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 40 at @a[sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 60 at @a[sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 80 at @a[sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 100 at @a[sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}
execute if score #process_end switch.data matches 120 at @a[sort=random,limit=8] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;16711680,16776960,16711935],FadeColors:[I;16711680,16776960,16711935]}]}}}}

execute if score #process_end switch.data matches 150 run function switch:engine/restart

