
## This file is auto-generated by the script in the same folder, do not edit this file
# Top
tellraw @s ["\n",{"nbt":"ParalyaMusic","storage":"switch:main","interpret":true},{"text":" 🔀","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 2"},"hoverEvent":{"action":"show_text","value":{"text":"Randomize","color":"gray"}}},{"text":" ⏮","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 3"},"hoverEvent":{"action":"show_text","value":{"text":"Previous","color":"gray"}}},{"text":" ⏯","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 4"},"hoverEvent":{"action":"show_text","value":{"text":"Play/Pause","color":"gray"}}},{"text":" ⏭","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 5"},"hoverEvent":{"action":"show_text","value":{"text":"Next","color":"gray"}}},{"text":" 🔁","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 6"},"hoverEvent":{"action":"show_text","value":{"text":"Repeat","color":"gray"}}}]
tellraw @s ""

# For each music, write a line
execute if score @s switch.music.current matches 100 run tellraw @s [{"text":"➤ At The Speed Of Light (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 100"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m24s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 100 run tellraw @s [{"text":"➤ At The Speed Of Light","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 100"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m24s)","color":"gray"}}}]
execute if score @s switch.music.current matches 101 run tellraw @s [{"text":"➤ Fingerdash (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 101"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m03s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 101 run tellraw @s [{"text":"➤ Fingerdash","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 101"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m03s)","color":"gray"}}}]
execute if score @s switch.music.current matches 102 run tellraw @s [{"text":"➤ Ludicrous Speed (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 102"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m10s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 102 run tellraw @s [{"text":"➤ Ludicrous Speed","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 102"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 4m10s)","color":"gray"}}}]
execute if score @s switch.music.current matches 103 run tellraw @s [{"text":"➤ Never Gonna Give You Up (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 103"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m24s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 103 run tellraw @s [{"text":"➤ Never Gonna Give You Up","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 103"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m24s)","color":"gray"}}}]
execute if score @s switch.music.current matches 104 run tellraw @s [{"text":"➤ Stay Inside Me (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 104"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m42s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 104 run tellraw @s [{"text":"➤ Stay Inside Me","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 104"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m42s)","color":"gray"}}}]
execute if score @s switch.music.current matches 105 run tellraw @s [{"text":"➤ Stereo Madness (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 105"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m30s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 105 run tellraw @s [{"text":"➤ Stereo Madness","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 105"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 1m30s)","color":"gray"}}}]
execute if score @s switch.music.current matches 106 run tellraw @s [{"text":"➤ The Maze Of Mayonnaise (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 106"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m47s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 106 run tellraw @s [{"text":"➤ The Maze Of Mayonnaise","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 106"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 2m47s)","color":"gray"}}}]
execute if score @s switch.music.current matches 107 run tellraw @s [{"text":"➤ Unravel (Currently playing)","color":"#FFC0CB","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 107"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m37s)","color":"gray"}}}]
execute unless score @s switch.music.current matches 107 run tellraw @s [{"text":"➤ Unravel","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger switch.trigger.music set 107"},"hoverEvent":{"action":"show_text","value":{"text":"Play the music (Duration: 3m37s)","color":"gray"}}}]

