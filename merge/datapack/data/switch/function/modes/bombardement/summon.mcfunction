
# Summon the canon ball
execute store result score #random switch.data run random value 1..3
execute if score #random switch.data matches 1 run summon armor_stand 121054 132 121026 {NoGravity:true,Silent:true,Invulnerable:true,Invisible:true,Tags:["switch.ball","switch.new"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[1f,1f,1f]},item:{id:"magma_block",count:1}}]}
execute if score #random switch.data matches 2 run summon armor_stand 121057 132 121026 {NoGravity:true,Silent:true,Invulnerable:true,Invisible:true,Tags:["switch.ball","switch.new"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[1f,1f,1f]},item:{id:"magma_block",count:1}}]}
execute if score #random switch.data matches 3 run summon armor_stand 121060 132 121026 {NoGravity:true,Silent:true,Invulnerable:true,Invisible:true,Tags:["switch.ball","switch.new"],Passengers:[{id:"item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.5f,0f],scale:[1f,1f,1f]},item:{id:"magma_block",count:1}}]}
execute if score #random switch.data matches 1 positioned 121054 132 121026 run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a[tag=!detached,distance=..100]
execute if score #random switch.data matches 2 positioned 121057 132 121026 run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a[tag=!detached,distance=..100]
execute if score #random switch.data matches 3 positioned 121060 132 121026 run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a[tag=!detached,distance=..100]
execute positioned 121057 132 121026 run playsound entity.explode ambient @a[tag=!detached] ~ ~ ~ 1 1

# Get a random position
summon marker 121057 109 121064 {Tags:["switch.temp"]}
execute as @e[type=marker,tag=switch.temp] at @s run spreadplayers ~ ~ 0 15 under 150 false @s
execute as @e[type=marker,tag=switch.temp] at @s run tp @s ~ ~ ~-0.5
execute if predicate switch:chance/0.25 run tp @e[type=marker,tag=switch.temp] @r[tag=!detached,gamemode=!spectator]

# Face the random position
execute as @e[type=armor_stand,tag=switch.new] at @s facing entity @e[type=marker,tag=switch.temp] feet run tp @s ^ ^ ^1 ~ ~
tag @e[type=armor_stand,tag=switch.new] remove switch.new

# Kill the random position
kill @e[type=marker,tag=switch.temp]

