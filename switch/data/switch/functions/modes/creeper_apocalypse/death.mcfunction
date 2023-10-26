
execute if entity @s[gamemode=!spectator] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#creeper_apocalypse_seconds","objective":"switch.data"}},{"text":" secondes !"}]
function switch:utils/classic_death
scoreboard players set @s switch.alive 0

