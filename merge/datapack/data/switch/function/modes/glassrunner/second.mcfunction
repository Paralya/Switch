
scoreboard players add #glassrunner_seconds switch.data 1

execute positioned 2997 128 2997 as @a[tag=!detached,dx=5,dy=3,dz=5] run function switch:modes/glassrunner/ctp/center/adding_timer
execute positioned 2997 128 2997 unless entity @a[tag=!detached,dx=5,dy=3,dz=5] run function switch:modes/glassrunner/ctp/center/reset

execute if score #glassrunner.ctp.center.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/center/red
execute if score #glassrunner.ctp.center.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/center/blue



execute positioned 2924 128 3074 as @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side1/adding_timer
execute positioned 2924 128 3074 unless entity @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side1/reset

execute if score #glassrunner.ctp.side1.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side1/red
execute if score #glassrunner.ctp.side1.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side1/blue



execute positioned 3074 128 2924 as @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side2/adding_timer
execute positioned 3074 128 2924 unless entity @a[tag=!detached,dx=2,dy=3,dz=2] run function switch:modes/glassrunner/ctp/side2/reset

execute if score #glassrunner.ctp.side2.red.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side2/red
execute if score #glassrunner.ctp.side2.blue.timer switch.data matches 1.. run function switch:modes/glassrunner/ctp/side2/blue

# Update scoreboard
data modify storage switch:main input set value {red:0,blue:0}
execute store result storage switch:main input.red int 1 run scoreboard players get #glassrunner.points.red switch.data
execute store result storage switch:main input.blue int 1 run scoreboard players get #glassrunner.points.blue switch.data
function switch:modes/glassrunner/ctp/update_sb with storage switch:main input

