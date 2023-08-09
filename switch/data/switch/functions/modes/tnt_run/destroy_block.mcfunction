
# Fill to remove tnt_run blocks
scoreboard players set #count switch.data 0
execute store result score #count switch.data run fill ~-.1 ~-1 ~-.1 ~.1 ~-5 ~.1 air replace #switch:tnt_run
execute if score #count switch.data matches 0 run fill ~-.3 ~-1 ~-.3 ~.3 ~-5 ~.3 air replace #switch:tnt_run

# Kill marker
kill @s

