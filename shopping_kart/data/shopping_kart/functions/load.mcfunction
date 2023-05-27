
scoreboard objectives add shopping_kart.data dummy
scoreboard objectives add shopping_kart.id dummy
scoreboard objectives add shopping_kart.engine dummy
scoreboard objectives add shopping_kart.max_engine dummy
scoreboard objectives add shopping_kart.motion_x dummy
scoreboard objectives add shopping_kart.motion_z dummy
scoreboard objectives add shopping_kart.predicted_pos_x dummy
scoreboard objectives add shopping_kart.predicted_pos_z dummy
scoreboard objectives add shopping_kart.old_pos_x dummy
scoreboard objectives add shopping_kart.old_pos_y dummy
scoreboard objectives add shopping_kart.old_pos_z dummy
scoreboard objectives add shopping_kart.booster_timer dummy
scoreboard objectives add shopping_kart.reactor_boost dummy
scoreboard objectives add shopping_kart.cruise_control dummy

scoreboard objectives add shopping_kart.trigger_model trigger
scoreboard objectives add shopping_kart.current_model dummy

scoreboard players set ShoppingKart load.status 1010
scoreboard players set #default_max_engine shopping_kart.data 1500

#define storage shopping_kart:main
#define storage shopping_kart:temp
#define score_holder #success
#define score_holder #valid
#define score_holder #count
#define score_holder #temp
#define score_holder #pos

## Setup tellraw prefix
# tellraw @a ["\n",{"nbt":"ShoppingKart","storage":"shopping_kart:main","interpret":true},{"text":" Souhaitez tous la bienvenue à "},{"selector":"@s","color":"aqua"},{"text":" !\nIl est le "},{"score":{"name":"#next_id","objective":"switch.data"},"color":"aqua"},{"text":"ème joueur a rejoindre !"}]
data modify storage shopping_kart:main ShoppingKart set value '[{"text":"[ShoppingKart]","color":"green"}]'


scoreboard players set #-1 shopping_kart.data -1
scoreboard players set #2 shopping_kart.data 2
scoreboard players set #3 shopping_kart.data 3
scoreboard players set #10 shopping_kart.data 10
scoreboard players set #15 shopping_kart.data 15
scoreboard players set #20 shopping_kart.data 20
scoreboard players set #30 shopping_kart.data 30
scoreboard players set #60 shopping_kart.data 60
scoreboard players set #99 shopping_kart.data 99
scoreboard players set #100 shopping_kart.data 100
scoreboard players set #120 shopping_kart.data 120
scoreboard players set #1000 shopping_kart.data 1000
scoreboard players set #10000 shopping_kart.data 10000

