#On prend un nombre aléatoire et y'affecte un thème à afficher
scoreboard players set #modulo_rand switch.data 18
function switch:math/get_random/

# penser à modifier les thèmes en fonction de avec qui tu joues
execute if score #random switch.data matches 0 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Stoupy n'aurait jamais dû...\n","color":"light_purple"}]
execute if score #random switch.data matches 1 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Les pires tap-ins de Twitter\n","color":"light_purple"}]
execute if score #random switch.data matches 2 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Luxio\n","color":"light_purple"}]
execute if score #random switch.data matches 3 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" J'ai une théorie...\n","color":"light_purple"}]
execute if score #random switch.data matches 4 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Session vanne sur VG gros bouffon\n","color":"light_purple"}]
execute if score #random switch.data matches 5 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Paralya\n","color":"light_purple"}]
execute if score #random switch.data matches 6 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Punchline\n","color":"light_purple"}]
execute if score #random switch.data matches 7 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Tweet d'excuse après un drama\n","color":"light_purple"}]
execute if score #random switch.data matches 8 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" L'école'\n","color":"light_purple"}]
execute if score #random switch.data matches 9 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Tweet comme Charly\n","color":"light_purple"}]
execute if score #random switch.data matches 10 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Twitter / X\n","color":"light_purple"}]
execute if score #random switch.data matches 11 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Thème libre j'en sais rien ai de l'inspi un peu non?\n","color":"light_purple"}]
execute if score #random switch.data matches 12 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Minecraft\n","color":"light_purple"}]
execute if score #random switch.data matches 13 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Politique\n","color":"light_purple"}]
execute if score #random switch.data matches 14 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Twitter si on était au Moyen-Age\n","color":"light_purple"}]
execute if score #random switch.data matches 15 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Session vanne sur les villes de France\n","color":"light_purple"}]
execute if score #random switch.data matches 16 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Jeux Vidéo\n","color":"light_purple"}]
execute if score #random switch.data matches 17 run tellraw @a [{"text":"Le thème est :","color":"dark_purple"},{"text":" Musique\n","color":"light_purple"}]