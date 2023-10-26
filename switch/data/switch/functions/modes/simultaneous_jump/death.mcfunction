
execute if entity @s[gamemode=!spectator] run tellraw @a[tag=!switch.detached] [{"selector":"@s","color":"red"},{"text":" a raté son saut [+0 points]"}]
function switch:modes/simultaneous_jump/teleport

