
# Dépôt GitHub du serveur Switch

Document (Google Sheet) :
- [Explications](https://docs.google.com/spreadsheets/d/1p8txd9e-WH-t7zdegMFMGXVKa1qQa2WFIVKO3CeP65c/edit#gid=2076353036)
- [Liste des jeux](https://docs.google.com/spreadsheets/d/1p8txd9e-WH-t7zdegMFMGXVKa1qQa2WFIVKO3CeP65c/edit#gid=919232064)

<br>

# Comment contribuer ?

## 0. Pré-requis
Avant tout, vous devez avoir un compte GitHub et savoir un minimum utiliser Git.

Ensuite, je vous conseille d'utiliser VSCode (Visual Studio Code) pour modifier les fichiers avec les extensions suivantes :
- [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server)
- [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
- [language-mcfunction](https://marketplace.visualstudio.com/items?itemName=arcensoth.language-mcfunction)
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

<br>

## 1. Comment ajouter un mini-jeu ?
Les mini-jeux sont inclus dans le datapack `switch` et sont donc dans le dossier [`data/switch/functions/modes/`](switch/data/switch/functions/load.mcfunction).

Un moteur est présent avec plusieurs spécificités afin de manipuler et donner la main aux mini-jeux lorsqu'ils sont lancés.
<br>Il est aussi responsable des votes, du choix des maps aléatoirement, de la ParalyaMoney, des statistiques, et d'autres choses encore.

<br>

### 1.1. Créer un nouveau mini-jeu en copiant un existant
Pour créer un nouveau mini-jeu, il suffit de copier le mode de jeu le plus proche de celui que vous voulez créer.
<br>Par exemple, si vous voulez créer un jeu de type "PvP" et avec des rôles, vous pouvez copier le `traitors_game`.

Une fois copié, vous devez renommer le dossier et le contenu des fichiers à l'intérieur. Pour cela, avec VSCode,
<br>vous pouvez utiliser la fonction de recherche (Ctrl+Maj+F) et remplacer `traitors_game` par le nom de votre mini-jeu
<br>tout en faisant attention à ce que la recherche ne concerne que votre dossier et pas tout le datapack !

![Image 1](https://cdn.discordapp.com/attachments/1117933012986900560/1118193949992034404/image_1.png)
![Image 2](https://cdn.discordapp.com/attachments/1117933012986900560/1118193950654738513/image_2.png)

<br>

Ensuite, vous devez modifier le fichier [`data/switch/functions/load.mcfunction`](switch/data/switch/functions/load.mcfunction) pour ajouter votre mini-jeu dans la liste.

Il faut simplement ajouter une ligne, pour cela copiez en une déjà existante et respectez les points suivants :
- L'`index` doit être unique et à la suite du précédent obligatoirement.
- L'`id` doit être l'écriture simple et minuscule de votre mini-jeu (comme le nom de votre dossier)
- Le `Name` sera utilisé pour l'affichage durant les votes, gardez le bien comme ça.
- Le `Lore` doit commencer par le nom du mode entre crochets, et terminer avec un temps de jeu estimé et
<br>par qui le mode a été proposé et développé (ça peut être la même personne).

![Image 3](https://cdn.discordapp.com/attachments/826544632338448436/1118233017996017707/image.png)

La prochaine étape est de configurer les maps que le moteur pourra choisir aléatoirement pour votre mini-jeu.
<br>Pour cela, vous devez modifier le fichier [`data/switch/functions/choose_map_for/traitors_game`](switch/data/switch/functions/choose_map_for/traitors_game.mcfunction) où `traitors_game` est le nom de votre mini-jeu.
<br>Cela veut dire que vous l'avez copié et renommé en fonction de votre mini-jeu.

![Image 4](https://cdn.discordapp.com/attachments/1117933012986900560/1118193951539732621/image_4.png)

Pour ce qui est des maps disponibles, vous ne devez **jamais** utiliser des maps "aventures" si votre mini-jeu permet de casser des blocs.
<br>En effet, les maps aventures ne peuvent pas se régénérer et donc si un joueur casse un bloc, il ne pourra pas être réparé.
<br>Il faut donc utiliser des maps "survival" pour ce genre de mini-jeu.

La liste des maps est disponibles sous plusieurs formats :
- [`data/switch/functions/maps/all_maps`](switch/data/switch/functions/maps/all_maps.mcfunction) : Toutes les maps et leur coordonnées sont disponibles dans le fichier avec leur nom générique (que vous pouvez utiliser dans `choose_map_for`).
- [`data/switch/functions/maps/load_survival`](switch/data/switch/functions/maps/load_survival.mcfunction) Toutes les maps régénerables utilisables sont indiquées.
- [`data/switch/functions/maps/load_adventure`](switch/data/switch/functions/maps/load_adventure.mcfunction) Toutes les maps non régénerables utilisables sont indiquées.

Si votre mode de jeu est en aventure et que vous souhaitez utiliser une map survival, vous devez indiquer dans votre `start.mcfunction` que la map ne doit pas être régénérée, exemple dans [`data/switch/functions/modes/pitch_creep/start`](switch/data/switch/functions/modes/pitch_creep/start.mcfunction) à la ligne 27 :
```mcfunction
# Indique que la map ne doit pas être régénérée
scoreboard players set #is_adventure switch.data 1

# Indique les joueurs doivent être placés aléatoirement
scoreboard players set #do_spreadplayers switch.data 1

# Charge la map
function switch:choose_map_for/pitch_creep
```

