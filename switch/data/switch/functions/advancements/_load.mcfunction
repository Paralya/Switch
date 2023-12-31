
# Setup storages
$$(p1) run data modify storage switch:advancements all set value []
$$(p1)[{id:1}] run $(p2) append value {id:1,$(p3)}
$$(p1)[{id:2}] run $(p2) append value {id:2,$(p3)}
$$(p1)[{id:3}] run $(p2) append value {id:3,$(p3)}
$$(p1)[{id:4}] run $(p2) append value {id:4,$(p3)}
$$(p1)[{id:5}] run $(p2) append value {id:5,$(p3)}
$$(p1)[{id:6}] run $(p2) append value {id:6,$(p3)}
$$(p1)[{id:7}] run $(p2) append value {id:7,$(p3)}
$$(p1)[{id:8}] run $(p2) append value {id:8,$(p3)}
$$(p1)[{id:9}] run $(p2) append value {id:9,$(p3)}
$$(p1)[{id:10}] run $(p2) append value {id:10,$(p3)}
$$(p1)[{id:11}] run $(p2) append value {id:11,$(p3)}
$$(p1)[{id:12}] run $(p2) append value {id:12,$(p3)}
$$(p1)[{id:13}] run $(p2) append value {id:13,$(p3)}
$$(p1)[{id:14}] run $(p2) append value {id:14,$(p3)}
$$(p1)[{id:15}] run $(p2) append value {id:15,$(p3)}
$$(p1)[{id:16}] run $(p2) append value {id:16,$(p3)}
$$(p1)[{id:17}] run $(p2) append value {id:17,$(p3)}
$$(p1)[{id:18}] run $(p2) append value {id:18,$(p3)}
$$(p1)[{id:19}] run $(p2) append value {id:19,$(p3)}
$$(p1)[{id:20}] run $(p2) append value {id:20,$(p3)}
$$(p1)[{id:21}] run $(p2) append value {id:21,$(p3)}
$$(p1)[{id:22}] run $(p2) append value {id:22,$(p3)}
$$(p1)[{id:23}] run $(p2) append value {id:23,$(p3)}
$$(p1)[{id:24}] run $(p2) append value {id:24,$(p3)}
$$(p1)[{id:25}] run $(p2) append value {id:25,$(p3)}
$$(p1)[{id:26}] run $(p2) append value {id:26,$(p3)}
$$(p1)[{id:27}] run $(p2) append value {id:27,$(p3)}
$$(p1)[{id:28}] run $(p2) append value {id:28,$(p3)}
$$(p1)[{id:29}] run $(p2) append value {id:29,$(p3)}
$$(p1)[{id:30}] run $(p2) append value {id:30,$(p3)}
$$(p1)[{id:31}] run $(p2) append value {id:31,$(p3)}
$$(p1)[{id:32}] run $(p2) append value {id:32,$(p3)}
$$(p1)[{id:33}] run $(p2) append value {id:33,$(p3)}
$$(p1)[{id:34}] run $(p2) append value {id:34,$(p3)}
$$(p1)[{id:35}] run $(p2) append value {id:35,$(p3)}
$$(p1)[{id:36}] run $(p2) append value {id:36,$(p3)}
$$(p1)[{id:37}] run $(p2) append value {id:37,$(p3)}
$$(p1)[{id:38}] run $(p2) append value {id:38,$(p3)}
$$(p1)[{id:39}] run $(p2) append value {id:39,$(p3)}
$$(p1)[{id:40}] run $(p2) append value {id:40,$(p3)}
$$(p1)[{id:41}] run $(p2) append value {id:41,$(p3)}
$$(p1)[{id:42}] run $(p2) append value {id:42,$(p3)}
$$(p1)[{id:43}] run $(p2) append value {id:43,$(p3)}
$$(p1)[{id:44}] run $(p2) append value {id:44,$(p3)}
$$(p1)[{id:45}] run $(p2) append value {id:45,$(p3)}
$$(p1)[{id:46}] run $(p2) append value {id:46,$(p3)}
$$(p1)[{id:47}] run $(p2) append value {id:47,$(p3)}
$$(p1)[{id:48}] run $(p2) append value {id:48,$(p3)}
$$(p1)[{id:49}] run $(p2) append value {id:49,$(p3)}
$$(p1)[{id:50}] run $(p2) append value {id:50,$(p3)}
$$(p1)[{id:51}] run $(p2) append value {id:51,$(p3)}
$$(p1)[{id:52}] run $(p2) append value {id:52,$(p3)}
$$(p1)[{id:53}] run $(p2) append value {id:53,$(p3)}
$$(p1)[{id:54}] run $(p2) append value {id:54,$(p3)}
$$(p1)[{id:55}] run $(p2) append value {id:55,$(p3)}
$$(p1)[{id:56}] run $(p2) append value {id:56,$(p3)}
$$(p1)[{id:57}] run $(p2) append value {id:57,$(p3)}
$$(p1)[{id:58}] run $(p2) append value {id:58,$(p3)}
$$(p1)[{id:59}] run $(p2) append value {id:59,$(p3)}
$$(p1)[{id:60}] run $(p2) append value {id:60,$(p3)}
#$$(p1)[{id:X}] run $(p2) append value {id:X,$(p3)}

# Update storages
$$(p2)[{id:1}] merge value {color:"green",auteur:"Stoupy",name:"Bénévolat",description:"Aider à la construction d'une map ou la création d'un mini-jeu"}
$$(p2)[{id:2}] merge value {color:"green",auteur:"Stoupy",name:"Fidèle",description:"Jouez un total de 100 parties sur le Switch"}
$$(p2)[{id:3}] merge value {color:"green",auteur:"Stoupy",name:"La moula",description:"Ayez au moins 400$ dans votre porte-monnaie"}
$$(p2)[{id:4}] merge value {color:"green",auteur:"Lawtank",name:"First Victor",description:"Gagnez votre première partie dans n'importe quel mini-jeu"}
$$(p2)[{id:5}] merge value {color:"red",auteur:"GoldVision",name:"Gros Diabète",description:"Gagner une partie de Traitors Game en étant Gros Traitre"}
$$(p2)[{id:6}] merge value {color:"yellow",auteur:"Fhara",name:"Gay Jumper",description:"Terminer le parcours du Gay Shooter"}
$$(p2)[{id:7}] merge value {color:"red",auteur:"TreekoZ",name:"Pitch Slayer",description:"Remporter un Pitchout avec 3 vies"}
$$(p2)[{id:8}] merge value {color:"green",auteur:"Poppiz",name:"Fast Food",description:"Atteignez au moins 50 points en Feed Fast"}
$$(p2)[{id:9}] merge value {color:"red",auteur:"TreekoZ",name:"Bagarreur",description:"Tuez deux personnes dans un délai de 10 secondes en Castagne"}
$$(p2)[{id:10}] merge value {color:"yellow",auteur:"Stoupy",name:"Contre Courant",description:"Réussissez à faire voter au moins 8 personnes un jeu non populaire (Feed Fast, Laser Game, etc.)"}
$$(p2)[{id:11}] merge value {color:"green",auteur:"Lawtank",name:"Berger",description:"Gagnez une partie de SheepWars sans utiliser aucun mouton (y compris le mouton d'abordage)"}
$$(p2)[{id:12}] merge value {color:"red",auteur:"OfChara",name:"Sans Faute",description:"Gagnez une partie de Spectres Game sans perdre aucun membre de votre équipe."}
$$(p2)[{id:13}] merge value {color:"green",auteur:"Axaltau",name:"Pacifiste",description:"Survivez 100 secondes en PitchOut sans mettre aucun coup"}
$$(p2)[{id:14}] merge value {color:"red",auteur:"Lawtank",name:"The Last King",description:"Soyez le dernier survivant en Protect The King"}
$$(p2)[{id:15}] merge value {color:"yellow",auteur:"Lawtank",name:"Tomahawk",description:"Tuez un joueur en lançant votre couteau en Murder Mystery"}
$$(p2)[{id:16}] merge value {color:"red",auteur:"Lawtank",name:"Héro Humanitaire",description:"Tuez au moins 8 zombies en une partie d'Infected"}
$$(p2)[{id:17}] merge value {color:"red",auteur:"Lawtank",name:"Vive la chair",description:"Infectez 5 survivants dans une partie d'Infected"}
$$(p2)[{id:18}] merge value {color:"red",auteur:"OfChara",name:"Roi fantôme",description:"Tuez 3 personnes en tant que spectre en Spectres Games"}
$$(p2)[{id:19}] merge value {color:"yellow",auteur:"Manu",name:"Wattouat",description:"Mourir à cause d'un moutron foudroyant en SheepWars"}
$$(p2)[{id:20}] merge value {color:"yellow",auteur:"OfChara",name:"Fusée",description:"Dépassez 5 joueurs dans le dernier tour en Kart Racer"}
$$(p2)[{id:21}] merge value {color:"yellow",auteur:"OfChara",name:"Plongeur Expert",description:"Complétez 3 dés à coudre dans les modes de jeu du style"}
$$(p2)[{id:22}] merge value {color:"red",auteur:"OfChara",name:"Homophobe",description:"Mettre au moins 42 flèches en Gay Shooter"}
$$(p2)[{id:23}] merge value {color:"yellow",auteur:"Lawtank",name:"Pélican",description:"Soyez celui ayant le plus de kills en Cigogne (sans égalité)"}
$$(p2)[{id:24}] merge value {color:"red",auteur:"Fhara",name:"Feeling The Music",description:"Survivez 20 manches en Block Party"}
$$(p2)[{id:25}] merge value {color:"red",auteur:"OfChara",name:"Ocelot",description:"Ne pas descendre en dessous de la moitié de vie en Creeper Apocalypse"}
$$(p2)[{id:26}] merge value {color:"green",auteur:"Marcus",name:"Suicidaire",description:"Lancer des boules de neiges sur 8 wardens en Warden Escape"}
$$(p2)[{id:27}] merge value {color:"red",auteur:"Megamat",name:"Sam Flynn",description:"Éliminer 3 joueurs avec sa traînée en Moutron"}
$$(p2)[{id:28}] merge value {color:"yellow",auteur:"Megamat",name:"D&Cube",description:"Faites au minimum 50 points en Build Battle"}
$$(p2)[{id:29}] merge value {color:"yellow",auteur:"Marcus",name:"Embrouilleur",description:"Tapez chaque joueur de la partie en Castagne"}
$$(p2)[{id:30}] merge value {color:"red",auteur:"Lawtank",name:"Légende",description:"Gagnez 5 mini-jeux d'affilée"}
$$(p2)[{id:31}] merge value {color:"yellow",auteur:"Xiaojuun",name:"Interville",description:"Mourir en block party à cause d'une vache folle"}
$$(p2)[{id:32}] merge value {color:"yellow",auteur:"Enlaniel",name:"Reste dans ta tombe",description:"Tuez deux fois le ninja dans une partie de Traitors Game"}
$$(p2)[{id:33}] merge value {color:"yellow",auteur:"Megamat",name:"Rush Thief",description:"Capturez le drapeau ennemi en Rush The Flag"}
$$(p2)[{id:34}] merge value {color:"green",auteur:"Megamat",name:"Monopoly",description:"Ramasser 20 lingots d'or en une partie en Murder Mystery"}
$$(p2)[{id:35}] merge value {color:"green",auteur:"Xiaojuun",name:"Daltonien",description:"Meurs à la première manche en Block Party"}
$$(p2)[{id:36}] merge value {color:"green",auteur:"Megamat",name:"Contre son camp",description:"Marcher sur sa propre mine pendant une partie de Landing Mine"}
$$(p2)[{id:37}] merge value {color:"yellow",auteur:"Megamat",name:"Oppenheimer",description:"Survivre plus d'une minute en Bombardement"}
$$(p2)[{id:38}] merge value {color:"yellow",auteur:"Xiaojuun",name:"Regarde ma queue",description:"Avoir une trainée de 15 secondes en moutron"}
$$(p2)[{id:39}] merge value {color:"red",auteur:"ArtiGrrr",name:"Précision Artistique",description:"Finir une partie de Snowball Painter avec exactement 51 points"}
$$(p2)[{id:40}] merge value {color:"yellow",auteur:"Marcus",name:"Harcelé",description:"Mourir 3 fois par la même personne en Pitchout"}
$$(p2)[{id:41}] merge value {color:"red",auteur:"ArtiGrrr",name:"Vengeur",description:"Tuez son assassin en temps que Ninja dans une partie de Traitors Game"}
$$(p2)[{id:42}] merge value {color:"red",auteur:"ArtiGrrr",name:"Xenophobe",description:"Eliminer tous les joueurs d'une même couleur en Layers 4 Teams"}
$$(p2)[{id:43}] merge value {color:"yellow",auteur:"ArtiGrrr",name:"Avide",description:"Détruisez 5 blocs d'obsidienne en une partie de Rush The Point"}
$$(p2)[{id:44}] merge value {color:"yellow",auteur:"Xiaojuun",name:"C'est tout naturel",description:"Poussez un joueur vers un dé à coudre en Simultaneous Jump"}
$$(p2)[{id:45}] merge value {color:"green",auteur:"Lawtank",name:"Humm Charal !",description:"Tuez 10 moutons en une partie de SheepWars"}
$$(p2)[{id:46}] merge value {color:"green",auteur:"Stoupy",name:"Automutilation",description:"Se tuer soi-même avec un mouton en SheepWars"}
$$(p2)[{id:47}] merge value {color:"green",auteur:"luigimario12",name:"Il a rien compris lui",description:"Courir 500 blocs en une partie de Pitchout"}
$$(p2)[{id:48}] merge value {color:"red",auteur:"luigimario12",name:"Donald Trump",description:"Faire au maximum 5 coups en une partie de MiniGolf"}
$$(p2)[{id:49}] merge value {color:"yellow",auteur:"luigimario12",name:"Damidot",description:"Recevoir une note Legendary en Build Battle"}
$$(p2)[{id:50}] merge value {color:"red",auteur:"Stoupy & Lawtank",name:"Zom 100",description:"Terminer le secret de la map Old Japan Apocalypse en Infected"}
$$(p2)[{id:51}] merge value {color:"red",auteur:"Stoupy",name:"Pharaon",description:"Terminer le secret de la map Ancienne Egypte en Infected"}
$$(p2)[{id:52}] merge value {color:"red",auteur:"Stoupy",name:"The Volcano Core",description:"Terminer le secret de la map Lost Graveyard Remastered en Infected"}
$$(p2)[{id:53}] merge value {color:"red",auteur:"Stoupy",name:"Storm Area",description:"Terminer le secret de la map Area51 en Infected"}
$$(p2)[{id:54}] merge value {color:"red",auteur:"Stoupy",name:"Secret Slayer",description:"Terminer les secrets de toutes les maps dans le mode de jeu Infected"}
#$$(p2)[{id:X}] merge value {color:"green",auteur:"__AUTHOR__",name:"__TITLE__",description:"__DESCRIPTION__"}

