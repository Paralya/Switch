
#> switch:advancements/update_percentages
#
# @executed	as the player & at current position
#
# @within	switch:advancements/easy
#			switch:advancements/hard
#			switch:advancements/jumps/blue
#			switch:advancements/jumps/bricks
#			switch:advancements/jumps/brown
#			switch:advancements/jumps/dripstone
#			switch:advancements/jumps/duality
#			switch:advancements/jumps/graviglitch
#			switch:advancements/jumps/green
#			switch:advancements/jumps/obsidian
#			switch:advancements/jumps/pink
#			switch:advancements/jumps/purple
#			switch:advancements/jumps/red
#			switch:advancements/jumps/white
#			switch:advancements/jumps/yellow
#			switch:advancements/medium
#			switch:player/joined
#

# Update percentage
setblock 0 16 0 air
setblock 0 16 0 yellow_shulker_box
loot insert 0 16 0 loot switch:get_username
data modify storage switch:main input set value {id:"", username:""}
data modify storage switch:main input.username set from block 0 16 0 Items[0].components."minecraft:profile".name

## For each advancement, check if the player has the advancement
scoreboard players set @s switch.advancements 0

execute if entity @s[advancements={switch:visible/jump_green=true}] run function switch:advancements/_pre_macro {id:"jump_green"}
execute if entity @s[advancements={switch:visible/jump_white=true}] run function switch:advancements/_pre_macro {id:"jump_white"}
execute if entity @s[advancements={switch:visible/jump_blue=true}] run function switch:advancements/_pre_macro {id:"jump_blue"}
execute if entity @s[advancements={switch:visible/jump_yellow=true}] run function switch:advancements/_pre_macro {id:"jump_yellow"}
execute if entity @s[advancements={switch:visible/jump_red=true}] run function switch:advancements/_pre_macro {id:"jump_red"}
execute if entity @s[advancements={switch:visible/jump_brown=true}] run function switch:advancements/_pre_macro {id:"jump_brown"}
execute if entity @s[advancements={switch:visible/jump_purple=true}] run function switch:advancements/_pre_macro {id:"jump_purple"}
execute if entity @s[advancements={switch:visible/jump_dripstone=true}] run function switch:advancements/_pre_macro {id:"jump_dripstone"}
execute if entity @s[advancements={switch:visible/jump_bricks=true}] run function switch:advancements/_pre_macro {id:"jump_bricks"}
execute if entity @s[advancements={switch:visible/jump_pink=true}] run function switch:advancements/_pre_macro {id:"jump_pink"}
execute if entity @s[advancements={switch:visible/jump_obsidian=true}] run function switch:advancements/_pre_macro {id:"jump_obsidian"}
execute if entity @s[advancements={switch:visible/jump_duality=true}] run function switch:advancements/_pre_macro {id:"jump_duality"}
execute if entity @s[advancements={switch:visible/jump_graviglitch=true}] run function switch:advancements/_pre_macro {id:"jump_graviglitch"}
execute if entity @s[advancements={switch:visible/1=true}] run function switch:advancements/_pre_macro {id:1}
execute if entity @s[advancements={switch:visible/2=true}] run function switch:advancements/_pre_macro {id:2}
execute if entity @s[advancements={switch:visible/3=true}] run function switch:advancements/_pre_macro {id:3}
execute if entity @s[advancements={switch:visible/4=true}] run function switch:advancements/_pre_macro {id:4}
execute if entity @s[advancements={switch:visible/5=true}] run function switch:advancements/_pre_macro {id:5}
execute if entity @s[advancements={switch:visible/6=true}] run function switch:advancements/_pre_macro {id:6}
execute if entity @s[advancements={switch:visible/7=true}] run function switch:advancements/_pre_macro {id:7}
execute if entity @s[advancements={switch:visible/8=true}] run function switch:advancements/_pre_macro {id:8}
execute if entity @s[advancements={switch:visible/9=true}] run function switch:advancements/_pre_macro {id:9}
execute if entity @s[advancements={switch:visible/10=true}] run function switch:advancements/_pre_macro {id:10}
execute if entity @s[advancements={switch:visible/11=true}] run function switch:advancements/_pre_macro {id:11}
execute if entity @s[advancements={switch:visible/12=true}] run function switch:advancements/_pre_macro {id:12}
execute if entity @s[advancements={switch:visible/13=true}] run function switch:advancements/_pre_macro {id:13}
execute if entity @s[advancements={switch:visible/14=true}] run function switch:advancements/_pre_macro {id:14}
execute if entity @s[advancements={switch:visible/15=true}] run function switch:advancements/_pre_macro {id:15}
execute if entity @s[advancements={switch:visible/16=true}] run function switch:advancements/_pre_macro {id:16}
execute if entity @s[advancements={switch:visible/17=true}] run function switch:advancements/_pre_macro {id:17}
execute if entity @s[advancements={switch:visible/18=true}] run function switch:advancements/_pre_macro {id:18}
execute if entity @s[advancements={switch:visible/19=true}] run function switch:advancements/_pre_macro {id:19}
execute if entity @s[advancements={switch:visible/20=true}] run function switch:advancements/_pre_macro {id:20}
execute if entity @s[advancements={switch:visible/21=true}] run function switch:advancements/_pre_macro {id:21}
execute if entity @s[advancements={switch:visible/22=true}] run function switch:advancements/_pre_macro {id:22}
execute if entity @s[advancements={switch:visible/23=true}] run function switch:advancements/_pre_macro {id:23}
execute if entity @s[advancements={switch:visible/24=true}] run function switch:advancements/_pre_macro {id:24}
execute if entity @s[advancements={switch:visible/25=true}] run function switch:advancements/_pre_macro {id:25}
execute if entity @s[advancements={switch:visible/26=true}] run function switch:advancements/_pre_macro {id:26}
execute if entity @s[advancements={switch:visible/27=true}] run function switch:advancements/_pre_macro {id:27}
execute if entity @s[advancements={switch:visible/28=true}] run function switch:advancements/_pre_macro {id:28}
execute if entity @s[advancements={switch:visible/29=true}] run function switch:advancements/_pre_macro {id:29}
execute if entity @s[advancements={switch:visible/30=true}] run function switch:advancements/_pre_macro {id:30}
execute if entity @s[advancements={switch:visible/31=true}] run function switch:advancements/_pre_macro {id:31}
execute if entity @s[advancements={switch:visible/32=true}] run function switch:advancements/_pre_macro {id:32}
execute if entity @s[advancements={switch:visible/33=true}] run function switch:advancements/_pre_macro {id:33}
execute if entity @s[advancements={switch:visible/34=true}] run function switch:advancements/_pre_macro {id:34}
execute if entity @s[advancements={switch:visible/35=true}] run function switch:advancements/_pre_macro {id:35}
execute if entity @s[advancements={switch:visible/36=true}] run function switch:advancements/_pre_macro {id:36}
execute if entity @s[advancements={switch:visible/37=true}] run function switch:advancements/_pre_macro {id:37}
execute if entity @s[advancements={switch:visible/38=true}] run function switch:advancements/_pre_macro {id:38}
execute if entity @s[advancements={switch:visible/39=true}] run function switch:advancements/_pre_macro {id:39}
execute if entity @s[advancements={switch:visible/40=true}] run function switch:advancements/_pre_macro {id:40}
execute if entity @s[advancements={switch:visible/41=true}] run function switch:advancements/_pre_macro {id:41}
execute if entity @s[advancements={switch:visible/42=true}] run function switch:advancements/_pre_macro {id:42}
execute if entity @s[advancements={switch:visible/43=true}] run function switch:advancements/_pre_macro {id:43}
execute if entity @s[advancements={switch:visible/44=true}] run function switch:advancements/_pre_macro {id:44}
execute if entity @s[advancements={switch:visible/45=true}] run function switch:advancements/_pre_macro {id:45}
execute if entity @s[advancements={switch:visible/46=true}] run function switch:advancements/_pre_macro {id:46}
execute if entity @s[advancements={switch:visible/47=true}] run function switch:advancements/_pre_macro {id:47}
execute if entity @s[advancements={switch:visible/48=true}] run function switch:advancements/_pre_macro {id:48}
execute if entity @s[advancements={switch:visible/49=true}] run function switch:advancements/_pre_macro {id:49}
execute if entity @s[advancements={switch:visible/50=true}] run function switch:advancements/_pre_macro {id:50}
execute if entity @s[advancements={switch:visible/51=true}] run function switch:advancements/_pre_macro {id:51}
execute if entity @s[advancements={switch:visible/52=true}] run function switch:advancements/_pre_macro {id:52}
execute if entity @s[advancements={switch:visible/53=true}] run function switch:advancements/_pre_macro {id:53}
execute if entity @s[advancements={switch:visible/54=true}] run function switch:advancements/_pre_macro {id:54}
execute if entity @s[advancements={switch:visible/55=true}] run function switch:advancements/_pre_macro {id:55}
execute if entity @s[advancements={switch:visible/56=true}] run function switch:advancements/_pre_macro {id:56}
execute if entity @s[advancements={switch:visible/57=true}] run function switch:advancements/_pre_macro {id:57}
execute if entity @s[advancements={switch:visible/58=true}] run function switch:advancements/_pre_macro {id:58}
execute if entity @s[advancements={switch:visible/59=true}] run function switch:advancements/_pre_macro {id:59}
execute if entity @s[advancements={switch:visible/60=true}] run function switch:advancements/_pre_macro {id:60}
execute if entity @s[advancements={switch:visible/61=true}] run function switch:advancements/_pre_macro {id:61}
execute if entity @s[advancements={switch:visible/62=true}] run function switch:advancements/_pre_macro {id:62}
execute if entity @s[advancements={switch:visible/63=true}] run function switch:advancements/_pre_macro {id:63}
execute if entity @s[advancements={switch:visible/64=true}] run function switch:advancements/_pre_macro {id:64}
execute if entity @s[advancements={switch:visible/65=true}] run function switch:advancements/_pre_macro {id:65}
execute if entity @s[advancements={switch:visible/66=true}] run function switch:advancements/_pre_macro {id:66}
execute if entity @s[advancements={switch:visible/67=true}] run function switch:advancements/_pre_macro {id:67}
execute if entity @s[advancements={switch:visible/68=true}] run function switch:advancements/_pre_macro {id:68}
execute if entity @s[advancements={switch:visible/69=true}] run function switch:advancements/_pre_macro {id:69}
execute if entity @s[advancements={switch:visible/70=true}] run function switch:advancements/_pre_macro {id:70}
execute if entity @s[advancements={switch:visible/71=true}] run function switch:advancements/_pre_macro {id:71}
execute if entity @s[advancements={switch:visible/72=true}] run function switch:advancements/_pre_macro {id:72}
execute if entity @s[advancements={switch:visible/73=true}] run function switch:advancements/_pre_macro {id:73}
execute if entity @s[advancements={switch:visible/74=true}] run function switch:advancements/_pre_macro {id:74}
execute if entity @s[advancements={switch:visible/75=true}] run function switch:advancements/_pre_macro {id:75}
execute if entity @s[advancements={switch:visible/76=true}] run function switch:advancements/_pre_macro {id:76}
execute if entity @s[advancements={switch:visible/77=true}] run function switch:advancements/_pre_macro {id:77}
execute if entity @s[advancements={switch:visible/78=true}] run function switch:advancements/_pre_macro {id:78}
execute if entity @s[advancements={switch:visible/79=true}] run function switch:advancements/_pre_macro {id:79}
execute if entity @s[advancements={switch:visible/80=true}] run function switch:advancements/_pre_macro {id:80}
execute if entity @s[advancements={switch:visible/81=true}] run function switch:advancements/_pre_macro {id:81}
execute if entity @s[advancements={switch:visible/82=true}] run function switch:advancements/_pre_macro {id:82}
execute if entity @s[advancements={switch:visible/83=true}] run function switch:advancements/_pre_macro {id:83}
setblock 0 16 0 air

