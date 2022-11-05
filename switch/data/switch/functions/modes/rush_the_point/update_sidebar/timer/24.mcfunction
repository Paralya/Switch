
execute if score #remaining_time switch.data matches 598 run team modify switch.temp.sidebar.3 suffix [{"text":"emps restant : "},{"text":"9","color":"yellow"},{"text":"m"},{"text":"58","color":"yellow"},{"text":"s"}]
execute if score #remaining_time switch.data matches 599 run team modify switch.temp.sidebar.3 suffix [{"text":"emps restant : "},{"text":"9","color":"yellow"},{"text":"m"},{"text":"59","color":"yellow"},{"text":"s"}]
execute if score #remaining_time switch.data matches 600.. run team modify switch.temp.sidebar.3 suffix [{"text":"emps restant : "},{"text":"10","color":"yellow"},{"text":"m"},{"text":"00","color":"yellow"},{"text":"s"}]

