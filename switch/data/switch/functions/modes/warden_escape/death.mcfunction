
execute if entity @s[gamemode=!spectator] run tellraw @a [{"selector":"@s","color":"red"},{"text":" est mort, il a survécu "},{"score":{"name":"#warden_escape_seconds","objective":"switch.data"}},{"text":" secondes !"}]
scoreboard players set @s switch.alive 0
function switch:utils/classic_death

