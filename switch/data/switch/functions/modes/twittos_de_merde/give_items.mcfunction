clear @a[tag=!detached]
give @a[tag=!detached] minecraft:writable_book
function switch:translations/modes_twittos_de_merde_give_items
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
