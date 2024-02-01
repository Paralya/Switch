
clear @s tnt 1
execute positioned over world_surface run summon marker ~ ~ ~ {Tags:["switch.mine"]}
scoreboard players set @s switch.temp.cooldown 100
particle dust 255 0 0 255 ~ ~ ~ 0 0 0 1 25 force @a[distance=..50]
playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 0

