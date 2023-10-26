
execute store result score #x switch.data run data get entity @s Pos[0]
execute store result score #y switch.data run data get entity @s Pos[1]
execute store result score #z switch.data run data get entity @s Pos[2]
scoreboard players operation #dx switch.data = @s switch.temp.dx
scoreboard players operation #dy switch.data = @s switch.temp.dy
scoreboard players operation #dz switch.data = @s switch.temp.dz
scoreboard players operation #respawn_cp_id switch.data = @s switch.temp.id
scoreboard players operation #checkpoint switch.data = @s switch.checkpoint
scoreboard players remove #checkpoint switch.data 1
execute if score #checkpoint switch.data matches -1 run scoreboard players operation #checkpoint switch.data = #total_checkpoints switch.data

scoreboard players set #can_hard_reset switch.data 0
execute if entity @s[tag=switch.can_hard_reset] run scoreboard players set #can_hard_reset switch.data 1
execute as @a[tag=!switch.detached,predicate=switch:has_same_checkpoint] run function switch:modes/kart_racer/checkpoints/check_player_pos

particle wax_on ~ ~2 ~ 2 2 2 0 2
particle wax_off ~ ~2 ~ 2 2 2 0 2

