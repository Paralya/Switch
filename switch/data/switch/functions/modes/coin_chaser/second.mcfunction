
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #coin_chaser_seconds switch.data 1

# XP bar update
scoreboard players remove #remaining_time switch.data 1
function switch:modes/coin_chaser/xp_bar

# Summon gold ingots if low amount (~10 gold per player)
execute store result score #gold_count switch.data if entity @e[type=item,tag=switch.coin]
execute store result score #player_count switch.data if entity @e[type=player,gamemode=!spectator]
scoreboard players operation #gold_count switch.data *= #100 switch.data
scoreboard players operation #gold_count switch.data /= #player_count switch.data
execute if score #coin_chaser_seconds switch.data matches 0.. if score #gold_count switch.data matches ..1000 run function switch:modes/coin_chaser/summon_gold

# Particles
execute at @e[type=item,tag=switch.coin] positioned ~ ~25 ~ run particle angry_villager ~ ~ ~ 0.1 25 0.1 0 100 force @a[distance=0..]

