
#> switch:player/jump_timer/tick
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick_detach
#

# Cancel the timer of practice mode players
execute if entity @s[tag=switch.jump_timing,tag=switch.practice] run function switch:player/jump_timer/cancel

# Start/restart the timer when crossing a start line (1 block in front of the jump tp)
execute if entity @s[x=-5,y=71,z=-10,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:1}
execute if entity @s[x=6,y=71,z=-10,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:2}
execute if entity @s[x=0,y=76,z=-28,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:3}
execute if entity @s[x=11,y=75,z=23,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:4}
execute if entity @s[x=-14,y=74,z=13,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:5}
execute if entity @s[x=-36,y=72,z=-14,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:6}
execute if entity @s[x=-12,y=74,z=36,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:7}
execute if entity @s[x=13,y=73,z=48,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:8}
execute if entity @s[x=-47,y=76,z=15,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:9}
execute if entity @s[x=-87,y=70,z=0,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:10}
execute if entity @s[x=51,y=75,z=-14,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:11}
execute if entity @s[x=12,y=75,z=112,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:12}
execute if entity @s[x=-12,y=74,z=91,dx=0,dy=1,dz=0,gamemode=!creative,gamemode=!spectator,tag=!switch.practice] run function switch:player/jump_timer/start {id:13}

# Update the timer from the stopwatch and show it in the actionbar
execute if entity @s[tag=switch.jump_timing] run function switch:player/jump_timer/query
execute if entity @s[tag=switch.jump_timing] run function switch:player/jump_timer/actionbar

