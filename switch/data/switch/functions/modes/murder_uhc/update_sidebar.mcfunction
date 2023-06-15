
scoreboard players set #count switch.data 0
execute store result score #count switch.data if entity @e[type=marker,tag=switch.murder_uhc.detective]
execute if score #count switch.data matches 0 run scoreboard players reset Ins switch.temp.sidebar
execute if score #count switch.data matches 1 run team modify switch.temp.sidebar.5 suffix [{"text":"pecteur : ","color":"green"},{"text":"1","color":"yellow"}]

scoreboard players set #count switch.data 0
execute store result score #count switch.data if entity @e[type=marker,tag=switch.murder_uhc.ninja]
execute if score #count switch.data matches 0 run scoreboard players reset Nin switch.temp.sidebar
execute if score #count switch.data matches 1 run team modify switch.temp.sidebar.4 suffix [{"text":"ja : ","color":"green"},{"text":"1","color":"yellow"}]

scoreboard players set #count switch.data 0
execute store result score #count switch.data if entity @e[type=marker,tag=switch.murder_uhc.innocent]
execute if score #count switch.data matches 0 run scoreboard players reset Inn switch.temp.sidebar
execute if score #count switch.data matches 1 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"1","color":"yellow"}]
execute if score #count switch.data matches 2 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"2","color":"yellow"}]
execute if score #count switch.data matches 3 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"3","color":"yellow"}]
execute if score #count switch.data matches 4 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"4","color":"yellow"}]
execute if score #count switch.data matches 5 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"5","color":"yellow"}]
execute if score #count switch.data matches 6 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"6","color":"yellow"}]
execute if score #count switch.data matches 7 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"7","color":"yellow"}]
execute if score #count switch.data matches 8 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"8","color":"yellow"}]
execute if score #count switch.data matches 9 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"9","color":"yellow"}]
execute if score #count switch.data matches 10 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"10","color":"yellow"}]
execute if score #count switch.data matches 11 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"11","color":"yellow"}]
execute if score #count switch.data matches 12 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"12","color":"yellow"}]
execute if score #count switch.data matches 13 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"13","color":"yellow"}]
execute if score #count switch.data matches 14 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"14","color":"yellow"}]
execute if score #count switch.data matches 15 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"15","color":"yellow"}]
execute if score #count switch.data matches 16 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"16","color":"yellow"}]
execute if score #count switch.data matches 17 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"17","color":"yellow"}]
execute if score #count switch.data matches 18 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"18","color":"yellow"}]
execute if score #count switch.data matches 19 run team modify switch.temp.sidebar.3 suffix [{"text":"ocent : ","color":"green"},{"text":"19","color":"yellow"}]

scoreboard players set #count switch.data 0
execute store result score #count switch.data if entity @e[type=marker,tag=switch.murder_uhc.traitor,tag=!switch.murder_uhc.big_traitor]
execute if score #count switch.data matches 0 run scoreboard players reset Tra switch.temp.sidebar
execute if score #count switch.data matches 1 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"1","color":"yellow"}]
execute if score #count switch.data matches 2 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"2","color":"yellow"}]
execute if score #count switch.data matches 3 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"3","color":"yellow"}]
execute if score #count switch.data matches 4 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"4","color":"yellow"}]
execute if score #count switch.data matches 5 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"5","color":"yellow"}]
execute if score #count switch.data matches 6 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"6","color":"yellow"}]
execute if score #count switch.data matches 7 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"7","color":"yellow"}]
execute if score #count switch.data matches 8 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"8","color":"yellow"}]
execute if score #count switch.data matches 9 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"9","color":"yellow"}]
execute if score #count switch.data matches 10 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"10","color":"yellow"}]
execute if score #count switch.data matches 11 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"11","color":"yellow"}]
execute if score #count switch.data matches 12 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"12","color":"yellow"}]
execute if score #count switch.data matches 13 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"13","color":"yellow"}]
execute if score #count switch.data matches 14 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"14","color":"yellow"}]
execute if score #count switch.data matches 15 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"15","color":"yellow"}]
execute if score #count switch.data matches 16 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"16","color":"yellow"}]
execute if score #count switch.data matches 17 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"17","color":"yellow"}]
execute if score #count switch.data matches 18 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"18","color":"yellow"}]
execute if score #count switch.data matches 19 run team modify switch.temp.sidebar.2 suffix [{"text":"itre : ","color":"red"},{"text":"19","color":"yellow"}]

scoreboard players set #count switch.data 0
execute store result score #count switch.data if entity @e[type=marker,tag=switch.murder_uhc.big_traitor]
execute if score #count switch.data matches 0 run scoreboard players reset Gro switch.temp.sidebar
execute if score #count switch.data matches 1 run team modify switch.temp.sidebar.1 suffix [{"text":"s Traitre : ","color":"dark_red"},{"text":"1","color":"yellow"}]

