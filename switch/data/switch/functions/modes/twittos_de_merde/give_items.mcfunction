clear @a
give @a minecraft:writable_book
tellraw @a {"text":"C'est l'heure d'un nouveau round ! \n","color":"red"}
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s
