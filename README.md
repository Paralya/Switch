
[![GitHub](https://img.shields.io/github/v/release/Paralya/Switch?logo=github&label=GitHub)](https://github.com/Paralya/Switch/releases/latest)
[![Discord](https://img.shields.io/discord/1216400498488377467?label=Discord&logo=discord)](https://discord.gg/anxzu6rA9F)
[![StewBeet](https://img.shields.io/github/v/release/Stoupy51/StewBeet?logo=github&label=StewBeet)](https://github.com/Stoupy51/StewBeet)

# Dépôt GitHub du serveur Switch

Le datapack et le resource pack du serveur **Switch** (Paralya) : un lobby, une infinité de mini-jeux votés entre chaque partie, un système de maps régénérables, des boutiques, des statistiques et des succès.

Tout est **généré en Python** avec [StewBeet](https://stewbeet.paralya.fr/), un framework au-dessus de [beet](https://github.com/mcbeet/beet). Aucun fichier `.mcfunction` n'est écrit à la main : ils sont produits par le code de `src/`.

Documents (Google Sheet) :
- [Explications](https://docs.google.com/spreadsheets/d/1p8txd9e-WH-t7zdegMFMGXVKa1qQa2WFIVKO3CeP65c/edit#gid=2076353036)
- [Liste des jeux](https://docs.google.com/spreadsheets/d/1p8txd9e-WH-t7zdegMFMGXVKa1qQa2WFIVKO3CeP65c/edit#gid=919232064)

<br>

## Sommaire

- [Dépôt GitHub du serveur Switch](#dépôt-github-du-serveur-switch)
	- [Sommaire](#sommaire)
	- [Prérequis](#prérequis)
	- [Build](#build)
	- [⚠️ Ne jamais éditer le dossier `build`](#️-ne-jamais-éditer-le-dossier-build)
	- [Structure du dépôt](#structure-du-dépôt)
	- [Le pipeline de build](#le-pipeline-de-build)
	- [Où se trouve quoi ?](#où-se-trouve-quoi-)
	- [Ajouter un mode de jeu](#ajouter-un-mode-de-jeu)
		- [1. Générer le squelette](#1-générer-le-squelette)
		- [2. Remplir `main.py`](#2-remplir-mainpy)
		- [3. Déclarer le mode dans la liste de vote](#3-déclarer-le-mode-dans-la-liste-de-vote)
		- [4. Tester en jeu](#4-tester-en-jeu)
		- [5. Ressources supplémentaires (optionnel)](#5-ressources-supplémentaires-optionnel)
	- [Anatomie d'un mode](#anatomie-dun-mode)
	- [Ajouter autre chose](#ajouter-autre-chose)
	- [Conventions de code](#conventions-de-code)
	- [Garde-fous](#garde-fous)
	- [Workflow Git](#workflow-git)

<br>

## Prérequis

- **Python 3.14+**
- **StewBeet** : `pip install -U stewbeet`

<br>

## Build

Une seule commande, à la racine du dépôt :

```bash
stewbeet
```

| Commande           | Effet                                        |
|--------------------|----------------------------------------------|
| `stewbeet`         | Build complet (équivaut à `stewbeet build`)  |
| `stewbeet rebuild` | Nettoie les caches puis rebuild              |
| `stewbeet clean`   | Nettoie les caches et les dossiers de sortie |
| `stewbeet --help`  | Liste toutes les commandes                   |

Le build remplit `build/` puis copie les `.zip` vers les chemins de `build_copy_destinations` (`beet.yml`).

> Ces chemins sont **personnels** (resourcepacks local, SFTP du serveur) : adaptez-les chez vous, mais ne committez pas vos chemins locaux.

<br>

## ⚠️ Ne jamais éditer le dossier `build`

`build/` est entièrement généré et écrasé à chaque build : il n'est versionné que parce que le serveur pull le dépôt, donc on ne le commit qu'après un vrai `stewbeet`.

Pour retrouver le code d'une commande in-game, grep son texte dans `src/` : le chemin de la fonction est le premier argument de `write_function`.

<br>

## Structure du dépôt

```bash
Switch/
├── ⚙️ beet.yml                 # Config du projet et du pipeline de build
├── 🚀 upload.py                # Publication d'une release GitHub
├── 🧰 tools/                   # Scaffolding et garde-fous (voir plus bas)
├── 🐍 src/                     # TOUT le code source
│   ├── setup_definitions.py    # Étape 1 : items, blocs, matériaux, disques
│   ├── link.py                 # Étape 2 : appelle tous les générateurs
│   ├── validation.py           # Contrôles de cohérence, échoue le build
│   ├── 📦 database/            # Items et comportements de blocs
│   ├── 🎨 resource_pack/       # Langues, sounds.json, shaders, textures GUI, fonts
│   └── 📂 datapack/
│       ├── main.py             # Définitions brutes du datapack
│       ├── definitions/        # Advancements, dimensions, loot tables, prédicats, tags...
│       ├── 🎮 modes/           # Un dossier par mini-jeu, + spec/catalogue/emit
│       ├── 🧠 engine/          # Vote, démarrage, arrêt, signaux vers les modes
│       ├── 🧍 player/          # Layout d'inventaire, practice, jump timer
│       ├── 🗺️ maps/            # Chargement des maps, checkpoints, cycles de spawn
│       ├── 🌍 survival_maps/   # Génération et régénération des maps
│       ├── 🎒 kits/            # Modèle déclaratif des kits (Kit, KitItem, rôles)
│       ├── 🛒 shop/            # Boutiques (agrège les shop.py des modes)
│       ├── 📊 stats/           # Classements et statistiques
│       ├── 🏆 advancements/    # Succès et pourcentages
│       ├── 💬 npc/             # PNJ du lobby
│       ├── 🎬 cinematic/       # Cinématiques d'intro
│       ├── 🎵 music/           # Lecteur de musique
│       ├── 🌐 translations/    # Textes partagés FR/EN
│       ├── 🔧 utils/           # Fonctions utilitaires partagées
│       ├── ⏱️ profiling/       # Mesure de performance
│       ├── 🌱 root/            # Fonctions à la racine (switch:...)
│       └── 🔗 misc_links/      # Pop-ups, loot tables aléatoires, Note Block Studio
├── 🖼️ assets/                  # Textures, sons, disques, pack.png
├── 📚 libs/                    # Packs externes fusionnés au build
├── 🎼 note_block_studio/       # Musiques (midi, datapacks générés)
├── 📤 continuous_delivery/     # Config de la release GitHub
└── ⛔ build/                   # SORTIE GÉNÉRÉE, ne jamais éditer
```

<br>

## Le pipeline de build

L'ordre vient de la clé `pipeline` de `beet.yml`. Deux entrées seulement sont du code maison :

1. **`src.setup_definitions`** remplit la base d'items et de blocs (`Item`, `Block`, matériaux de `ORES_CONFIGS`, disques) et charge les définitions écrites à la main. Les plugins StewBeet suivants s'appuient dessus.
2. **`src.link`** appelle `generate_all_modes()` puis chaque générateur de sous-système : c'est là que la quasi-totalité des `.mcfunction` sont écrites.

Le reste vient de plugins StewBeet : headers, constantes de scoreboard, dépendances, merge Smithed Weld, zip, copie, sha1.

`src/datapack/modes/__init__.py` **importe dynamiquement** chaque dossier contenant un `main.py` et appelle son `write_mode()`, puis le `write_resources()` de son `resources.py` s'il existe. Aucune liste d'imports à maintenir.

<br>

## Où se trouve quoi ?

| Je veux modifier...                                                     | Fichier                                                                               |
|-------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
| 🗳️ La liste des mini-jeux votables, descriptions, temps estimé, auteurs | `src/datapack/modes/catalogue.py` (`MODES`)                                           |
| 🧩 Les groupes de vote (variantes sous une même entrée)                 | `src/datapack/modes/catalogue.py` (`GROUPS`)                                          |
| 🎮 La logique d'un mini-jeu                                             | `src/datapack/modes/<mode>/main.py`                                                   |
| 🌐 Les messages FR/EN d'un mini-jeu                                     | `src/datapack/modes/<mode>/translations.py`                                           |
| 📜 Les advancements, prédicats, loot tables, structures d'un mini-jeu   | `src/datapack/modes/<mode>/resources.py`                                              |
| 🔁 Un helper partagé entre plusieurs modes                              | `src/datapack/modes/emit.py` ou `src/datapack/modes/_common/main.py`                  |
| 🧠 Le vote, le lancement, l'arrêt d'une partie, les signaux             | `src/datapack/engine/main.py`                                                         |
| 🌍 Les maps de jeu (dimensions, régénération, zones)                    | `src/datapack/survival_maps/definitions.py`                                           |
| 🏁 Les checkpoints de course et les cycles de spawn                     | `src/datapack/maps/main.py`                                                           |
| 🎒 Un kit ou une classe                                                 | `src/datapack/kits/` et `src/datapack/modes/<mode>/kits.py`                           |
| 🛒 Une boutique                                                         | `src/datapack/modes/<mode>/shop.py`, agrégé par `src/datapack/shop/shared_memory.py`  |
| 📦 Un item ou un bloc custom                                            | `src/database/misc_items.py`, `src/database/blocks_behaviors.py`                      |
| ⛏️ Les matériaux générés (armures, outils)                              | `src/setup_definitions.py` (`ORES_CONFIGS`)                                           |
| 🖼️ Une texture d'item                                                   | `assets/textures/**/<item_id>.png`, détection automatique                             |
| 🔊 Un son                                                               | `assets/sounds/`, ou `src/datapack/modes/<mode>/sounds/` pour un son propre à un mode |
| ✨ Les shaders                                                          | `src/resource_pack/shaders.py`                                                        |
| 🪟 Les textures de GUI et de tooltips                                   | `src/resource_pack/textures.py`                                                       |

<br>

## Ajouter un mode de jeu

### 1. Générer le squelette

```bash
python tools/new_mode.py mon_mode
```

Le mode obtenu build et se lance en jeu immédiatement. La découverte est automatique : aucun import à ajouter ailleurs.

```bash
src/datapack/modes/mon_mode/
├── __init__.py         # vide
├── main.py             # write_mode()
└── translations.py     # write_translations()
```

### 2. Remplir `main.py`

Le fichier généré ressemble déjà à ceci, avec les six hooks branchés. Il ne reste qu'à écrire les mécaniques du jeu.

```python
# Imports
from stewbeet import Mem, write_function

from ..emit import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "mon_mode"
	path: str = f"{ns}:modes/{mode}"

	# Écrit /calls/* (le dispatch appelé par le moteur) et /_force_start
	write_modes_calls(mode)
	write_translations()

	# /start : appelé une fois au lancement de la partie
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true

# Choix de la map parmi une liste (les ids viennent de survival_maps/definitions.py)
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"{mode}", maps:["switch_space"]}}

scoreboard players set #mon_mode_seconds {ns}.data -6
scoreboard players set #process_end {ns}.data 0
""")

	# /tick : chaque tick de jeu
	write_function(f"{path}/tick", f"""
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}
""")

	# /second : chaque seconde de jeu
	write_function(f"{path}/second", f"""
scoreboard players add #mon_mode_seconds {ns}.data 1
function {path}/xp_bar
function {path}/translations/second
""")

	# /joined : un joueur rejoint en cours de partie
	write_function(f"{path}/joined", f"""
gamemode spectator @s
""")

	# /stop : nettoyage en fin de partie
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.mon_score
""")

	# /xp_bar : barre d'XP servant de timer
	write_time_xp_bar(f"{path}/xp_bar", 300, "#mon_mode_seconds", "#mon_mode_seconds")
```

Les hooks disponibles sont `joined`, `second`, `start`, `stop`, `tick` et `inventory_changed`.
Le moteur les appelle via `switch:engine/signals/macro_*`, qui redirige vers `switch:modes/<mode>/calls/<hook>`.
`write_modes_calls()` génère ces redirections et le garde-fou sur `current_game` qui empêche un mode de tourner pendant qu'un autre est en cours.

### 3. Déclarer le mode dans la liste de vote

Dans `src/datapack/modes/definitions.py`, ajoutez une entrée à `MODES` :

```python
{
	"min_players":2, "max_players":-1, "id":"mon_mode", "name_fr":"Mon Mode",
	"estimated_time": "2-5 mins", "inspiration": "Épicube", "suggested_by": "Pseudo", "developed_by": "Pseudo",
	"description": {
		"fr": [{"text":"Première ligne de description.\n"},{"text":"Deuxième ligne.\n"}],
		"en": [{"text":"First description line.\n"},{"text":"Second line.\n"}]
	},
},
```

| Clé / comportement    | Détail                                                                                       |
|-----------------------|----------------------------------------------------------------------------------------------|
| `id`                  | **Exactement** le nom du dossier                                                             |
| `max_players`         | `UNLIMITED` quand le mode n'a pas de plafond                                                 |
| `group`               | Optionnel : les jeux d'un même groupe forment une entrée de vote, puis un second vote départage (voir `GROUPS`) |
| Lore, index, pop-ups  | Générés automatiquement à partir de cette entrée                                             |
| Entrée commentée      | Le mode est **quand même généré** : testable via `_force_start` sans polluer le vote         |
| Erreur de saisie      | Le build échoue avec un message qui nomme le problème et suggère la valeur la plus proche    |

### 4. Tester en jeu

```
/function switch:test_mode
/function switch:modes/mon_mode/_force_start
```

### 5. Ressources supplémentaires (optionnel)

Advancements, prédicats, loot tables, item modifiers, tags ou structures vont dans un `resources.py` exposant `write_resources()`, appelé automatiquement après `write_mode()`.

<br>

## Anatomie d'un mode

| Fichier           | Rôle                                                                         | Appelé par                           |
|-------------------|------------------------------------------------------------------------------|--------------------------------------|
| `main.py`         | `write_mode()` : toute la logique, écrit les `.mcfunction`                   | automatique                          |
| `translations.py` | `write_translations()` : messages FR/EN dans `<mode>/translations/*`         | `write_mode()`                       |
| `resources.py`    | `write_resources()` : advancements, prédicats, loot tables, tags, structures | automatique                          |
| `kits.py`         | Kits et classes du mode, construits avec `Kit` et `KitItem`                  | `write_mode()`                       |
| `shop.py`         | Constante `SHOP` : les upgrades vendues par le mode                          | automatique                          |
| `structures/`     | Fichiers `.nbt`, enregistrés via `register_structures()`                     | `resources.py`                       |
| `sounds/`         | Fichiers `.ogg` propres au mode, via `register_sounds()`                     | `resources.py`                       |

- **`_common/`** : fonctions partagées écrites dans `switch:modes/_common/*` (mort en spectateur, fin de partie, barre d'XP, kits communs).
- **`_coupdetat/`** : pseudo-mode utilisé par le moteur, pas un mini-jeu votable.
- Les helpers Python partagés vivent dans `src/datapack/modes/emit.py` : `write_modes_calls`, `write_server_announce`, `write_time_xp_bar`, `write_no_drop`, `register_structures`, `register_sounds`.
- Le namespace n'est jamais écrit en dur : utilisez toujours `ns: str = Mem.ctx.project_id`.

<br>

## Ajouter autre chose

- **Une map** : un `clone_survival(...)` ou `fill_survival(...)` dans `src/datapack/survival_maps/definitions.py` (coordonnées, id, nom, auteurs, `view` de la cinématique). Elle devient utilisable dans le `maps:[...]` d'un `choose_map_for`.
- **Un item ou un bloc** : `Item(...)` ou `Block(...)` dans `src/database/misc_items.py`. Texture trouvée automatiquement si un `.png` du même nom existe sous `assets/textures/` ; modèle, loot table et recettes sont générés.
- **Un son** : le `.ogg` dans `assets/sounds/`, ou dans le `sounds/` du mode s'il lui est propre. Voir `assets/compress_ogg.py`, `force_mono.py` et `mp3_to_ogg.py`.
- **Une boutique** : un `shop.py` exposant une constante `SHOP`, sur le modèle de `spleef/shop.py`. Le registre la récupère tout seul ; son rang dans la boutique vient de `SHOP_ORDER` (`src/datapack/shop/shared_memory.py`).

<br>

## Conventions de code

- **Typage strict** : pyright en mode `strict` (`pyrightconfig.json`), pas de `Any`.
- **Indentation par tabulations**, alignement des colonnes par espaces.
- Code auto-explicatif : peu de commentaires, les vraies explications vont dans les docstrings.
- Préférez le déclaratif et le paramétré à la duplication. Le CI lance [jscpd](https://github.com/kucherenko/jscpd) sur `src/` pour traquer le copier-coller.
- Un fichier qui dépasse environ 300 lignes devient un sous-module. **Exception assumée : le `main.py` d'un mode de jeu.** Toute la logique du mode reste au même endroit, ce qui rend le Ctrl+F immédiat et évite d'avoir à deviner dans quel fichier se trouve une mécanique. `build_battle/main.py` fait 935 lignes, et c'est très bien ainsi.
- Lint : `ruff check src tools --fix` (la config vit dans `ruff.toml`).
- Perfs : le serveur tourne à 20 tps avec beaucoup de joueurs. Évitez les `@e` non filtrés dans les `tick`, préférez tags et scores.

<br>

## Garde-fous

Quatre outils, tous lançables à la main. Les trois premiers tournent aussi en CI.

| Commande | Ce qu'elle garantit |
|---|---|
| `ruff check src tools` | Style et imports |
| `pyright` | Typage strict, sans `Any` |
| `python tools/check_conventions.py` | Taille des fichiers, pureté du modèle, aucun import descendant vers un mode nommé |
| `python tools/check_output_drift.py` | **Le refactoring n'a rien changé** : rebuild puis `build/` identique à HEAD |
| `python tools/report_merged_functions.py` | Aucune fonction n'est écrite par deux émetteurs sans que ce soit déclaré |

Le plus important est `check_output_drift.py`. `write_function` **ajoute** à la suite par défaut, donc deux émetteurs visant le même chemin fusionnent silencieusement dans l'ordre d'appel. Après tout déplacement de code, un `build/` inchangé est la preuve que rien n'a bougé en jeu.

Deux règles s'appuient sur des listes explicites qui ne doivent que diminuer :
- `LONG_FILE_DEBT` dans `tools/check_conventions.py` : les fichiers qui dépassent encore 300 lignes.
- `DECLARED_MERGES` dans `tools/report_merged_functions.py` : les fonctions volontairement construites par ajouts successifs.

<br>

## Workflow Git

- Une branche par fonctionnalité, puis Pull Request vers `main`.
- Commits courts, format conventionnel avec gitmoji **après** les deux-points :
  - `feat(modes): ✨ Ajout du mode Block Party`
  - `fix(race): 🐛 Correction des checkpoints sur rainbow_road`
  - `perf(engine): ⚡️ Réduction du coût du tick`
  - `build: 🚀 Built with latest StewBeet version`
- Les releases sont publiées avec `python upload.py` (nécessite `~/stewbeet/credentials.yml`).

