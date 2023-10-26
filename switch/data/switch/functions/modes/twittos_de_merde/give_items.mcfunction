clear @a[tag=!switch.detached]
give @a[tag=!switch.detached] minecraft:writable_book
tellraw @a[tag=!switch.detached] {"text":"C'est l'heure d'un nouveau round ! \n","color":"red"}
execute as @a[tag=!switch.detached] at @s run playsound entity.experience_orb.pickup ambient @s
