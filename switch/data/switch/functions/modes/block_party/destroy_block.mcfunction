
# Fill to remove block_party blocks
scoreboard players set #count switch.data 0
execute store result score #count switch.data run fill ~-.1 ~-1 ~-.1 ~.1 ~-5 ~.1 air replace #switch:block_party
execute if score #count switch.data matches 0 run fill ~-.3 ~-1 ~-.3 ~.3 ~-5 ~.3 air replace #switch:block_party

# Kill marker
kill @s

