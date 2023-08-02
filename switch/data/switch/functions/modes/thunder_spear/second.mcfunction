
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

# Classic timer
scoreboard players add #thunder_spear_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

# XP bar
execute if score #thunder_spear_seconds switch.data matches 0.. run function switch:modes/thunder_spear/xp_bar
execute if score #thunder_spear_seconds switch.data matches 0 run tellraw @a ["",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" Scrollez dans votre hotbar pour utiliser le grappin en seconde main !"}]
execute if score #thunder_spear_seconds switch.data matches 0 as @a at @s run playsound entity.experience_orb.pickup ambient @s

