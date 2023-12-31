
effect clear @s resistance
effect clear @s regeneration
effect clear @s blindness
effect clear @s slowness
scoreboard players reset @s switch.temp.infection
scoreboard players remove @s switch.infected.antidote 1
playsound entity.zombie_villager.cure ambient @a[distance=..24]
particle happy_villager ~ ~1 ~ 0.35 0.5 0.35 0.1 50
tellraw @a[tag=!detached] [{"selector":"@s"},{"text":" vient de soigner son infection avec un antidote !","color":"dark_purple"}]

