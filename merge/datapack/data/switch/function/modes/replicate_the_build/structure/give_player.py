




with open("give_player.mcfunction","w") as f:
    l=""
    for i in range(0,7):
        for j in range(0,7):
            for k in range(0,7):
                l=l+f"execute as @a[scores={{switch.alive=1..}}] run loot give @s mine ~{i} ~{j} ~{k}"
                l=l+r' diamond_pickaxe{Enchantments:[{id:"silk_touch",lvl:1s}]}'+"\n"
    print(l)


