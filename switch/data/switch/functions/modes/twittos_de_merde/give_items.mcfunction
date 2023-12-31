clear @a[tag=!detached]
give @a[tag=!detached] minecraft:writable_book
tellraw @a[tag=!detached] {"text":"C'est l'heure d'un nouveau round ! \n","color":"red"}
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
