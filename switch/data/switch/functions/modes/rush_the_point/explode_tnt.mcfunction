
kill @s
particle explosion ~ ~1 ~ 1 1 1 0 10
playsound entity.generic.explode block @a[distance=..16]
fill ~1 ~2 ~ ~-1 ~-2 ~ air replace cut_sandstone
fill ~ ~2 ~1 ~ ~-2 ~-1 air replace cut_sandstone
fill ~2 ~1 ~ ~-2 ~-1 ~ air replace cut_sandstone
fill ~ ~1 ~2 ~ ~-1 ~-2 air replace cut_sandstone
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace cut_sandstone
fill ~-1 ~ ~-2 ~1 ~ ~2 air replace cut_sandstone
fill ~-2 ~ ~-1 ~2 ~ ~1 air replace cut_sandstone

