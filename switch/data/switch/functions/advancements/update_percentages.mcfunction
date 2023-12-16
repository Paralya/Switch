
# Update percentage
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
data modify storage switch:main input set value {id:"",username:""}
data modify storage switch:main input.username set from block 0 0 0 Items[0].tag.SkullOwner.Name

execute if entity @s[advancements={switch:jump_green=true}] run function switch:advancements/_pre_macro {id:"jump_green"}
execute if entity @s[advancements={switch:jump_white=true}] run function switch:advancements/_pre_macro {id:"jump_white"}
execute if entity @s[advancements={switch:jump_blue=true}] run function switch:advancements/_pre_macro {id:"jump_blue"}
execute if entity @s[advancements={switch:visible/jump_yellow=true}] run function switch:advancements/_pre_macro {id:"jump_yellow"}
execute if entity @s[advancements={switch:jump_red=true}] run function switch:advancements/_pre_macro {id:"jump_red"}
execute if entity @s[advancements={switch:visible/1=true}] run function switch:advancements/_pre_macro {id:"1"}
execute if entity @s[advancements={switch:visible/2=true}] run function switch:advancements/_pre_macro {id:"2"}
execute if entity @s[advancements={switch:visible/3=true}] run function switch:advancements/_pre_macro {id:"3"}
execute if entity @s[advancements={switch:visible/4=true}] run function switch:advancements/_pre_macro {id:"4"}
execute if entity @s[advancements={switch:visible/5=true}] run function switch:advancements/_pre_macro {id:"5"}
execute if entity @s[advancements={switch:visible/6=true}] run function switch:advancements/_pre_macro {id:"6"}
execute if entity @s[advancements={switch:visible/7=true}] run function switch:advancements/_pre_macro {id:"7"}
execute if entity @s[advancements={switch:visible/8=true}] run function switch:advancements/_pre_macro {id:"8"}
execute if entity @s[advancements={switch:visible/9=true}] run function switch:advancements/_pre_macro {id:"9"}
execute if entity @s[advancements={switch:visible/10=true}] run function switch:advancements/_pre_macro {id:"10"}
execute if entity @s[advancements={switch:visible/11=true}] run function switch:advancements/_pre_macro {id:"11"}
execute if entity @s[advancements={switch:visible/12=true}] run function switch:advancements/_pre_macro {id:"12"}
execute if entity @s[advancements={switch:visible/13=true}] run function switch:advancements/_pre_macro {id:"13"}
execute if entity @s[advancements={switch:visible/14=true}] run function switch:advancements/_pre_macro {id:"14"}
execute if entity @s[advancements={switch:visible/15=true}] run function switch:advancements/_pre_macro {id:"15"}
execute if entity @s[advancements={switch:visible/16=true}] run function switch:advancements/_pre_macro {id:"16"}
execute if entity @s[advancements={switch:visible/17=true}] run function switch:advancements/_pre_macro {id:"17"}
execute if entity @s[advancements={switch:visible/18=true}] run function switch:advancements/_pre_macro {id:"18"}
execute if entity @s[advancements={switch:visible/19=true}] run function switch:advancements/_pre_macro {id:"19"}
execute if entity @s[advancements={switch:visible/20=true}] run function switch:advancements/_pre_macro {id:"20"}
execute if entity @s[advancements={switch:visible/21=true}] run function switch:advancements/_pre_macro {id:"21"}
execute if entity @s[advancements={switch:visible/22=true}] run function switch:advancements/_pre_macro {id:"22"}
execute if entity @s[advancements={switch:visible/23=true}] run function switch:advancements/_pre_macro {id:"23"}
execute if entity @s[advancements={switch:visible/24=true}] run function switch:advancements/_pre_macro {id:"24"}
execute if entity @s[advancements={switch:visible/25=true}] run function switch:advancements/_pre_macro {id:"25"}
execute if entity @s[advancements={switch:visible/26=true}] run function switch:advancements/_pre_macro {id:"26"}
execute if entity @s[advancements={switch:visible/27=true}] run function switch:advancements/_pre_macro {id:"27"}
execute if entity @s[advancements={switch:visible/28=true}] run function switch:advancements/_pre_macro {id:"28"}
execute if entity @s[advancements={switch:visible/29=true}] run function switch:advancements/_pre_macro {id:"29"}
execute if entity @s[advancements={switch:visible/30=true}] run function switch:advancements/_pre_macro {id:"30"}
execute if entity @s[advancements={switch:visible/31=true}] run function switch:advancements/_pre_macro {id:"31"}
execute if entity @s[advancements={switch:visible/32=true}] run function switch:advancements/_pre_macro {id:"32"}
execute if entity @s[advancements={switch:visible/33=true}] run function switch:advancements/_pre_macro {id:"33"}
execute if entity @s[advancements={switch:visible/34=true}] run function switch:advancements/_pre_macro {id:"34"}
execute if entity @s[advancements={switch:visible/35=true}] run function switch:advancements/_pre_macro {id:"35"}
execute if entity @s[advancements={switch:visible/36=true}] run function switch:advancements/_pre_macro {id:"36"}
execute if entity @s[advancements={switch:visible/37=true}] run function switch:advancements/_pre_macro {id:"37"}
execute if entity @s[advancements={switch:visible/38=true}] run function switch:advancements/_pre_macro {id:"38"}
execute if entity @s[advancements={switch:visible/39=true}] run function switch:advancements/_pre_macro {id:"39"}
execute if entity @s[advancements={switch:visible/40=true}] run function switch:advancements/_pre_macro {id:"40"}
execute if entity @s[advancements={switch:visible/41=true}] run function switch:advancements/_pre_macro {id:"41"}
execute if entity @s[advancements={switch:visible/42=true}] run function switch:advancements/_pre_macro {id:"42"}
execute if entity @s[advancements={switch:visible/43=true}] run function switch:advancements/_pre_macro {id:"43"}
execute if entity @s[advancements={switch:visible/44=true}] run function switch:advancements/_pre_macro {id:"44"}
execute if entity @s[advancements={switch:visible/45=true}] run function switch:advancements/_pre_macro {id:"45"}
execute if entity @s[advancements={switch:visible/46=true}] run function switch:advancements/_pre_macro {id:"46"}

setblock 0 0 0 air

