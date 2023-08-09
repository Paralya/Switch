




with open("give_player.mcfunction","w") as f:
    l=""
    for i in range(0,7):
        for j in range(0,7):
            for k in range(0,7):
                l=l+"loot give @a[tag=switch.alive] mine ~{i} ~{j} ~{k}".format(i=i,j=j,k=k)
                l=l+r' diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}'+"\n"
    f.write(l)


