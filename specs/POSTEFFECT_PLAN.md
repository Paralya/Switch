
# Plan : intro de jeu et effets d'écran par `/posteffect`

Ce fichier contient tout ce qu'il faut pour reprendre le chantier sans mémoire de conversation.
Le cours sur le moteur est dans [POSTEFFECT_26.3.md](../../MC_Guns_System/specs/POSTEFFECT_26.3.md) : le lire avant d'écrire un shader.

## Objectif

Remplacer le fondu noir de lancement de jeu par une séquence en post effect qui présente le mode : transition, nom du mode, règles concises, animation.
Les explications de démarrage quittent le chat et passent dans la carte.
Le même générateur sert ensuite aux cartes de rôle, aux ambiances en jeu et à l'écran de fin.

## Avancement

- [x] Prérequis A : MGS ne retire que ses propres ids (poussé)
- [x] Prérequis B : horloge partagée dans StewBeet, documentée (poussé, release 3.15.0 à publier par Stoupy)
- [x] Prérequis B bis : MGS importe l'horloge de StewBeet (poussé)
- [x] Prérequis C : serveur de test jetable (recette ci-dessous)
- [x] Lot 1 : transition et carte du mode (validé par Stoupy, poussé)
- [x] Lot 2 : cartes de rôle personnelles (codé, à valider par Stoupy)
- [ ] Lot 3 : pictogrammes animés par archétype
- [ ] Lot 4 : ambiances en jeu
- [ ] Lot 5 : écran de fin

## Décisions prises

| Sujet | Décision |
|---|---|
| Police | Pixel, sous licence OFL, couvrant les accents français. Le choix exact reste à faire |
| Annonces chat de démarrage | Supprimées, la carte les remplace |
| Clips Flashback | Abandonnés. Toute animation est codée en GLSL |
| Son de transition | Oui. Sons vanilla superposés d'abord, `.ogg` synthétisé ensuite si besoin (à valider à l'oreille par Stoupy) |
| Iris | Compatible, confirmé par Stoupy et par la spec MGS |
| Horloge partagée | Déplacée de MGS vers StewBeet, avec sa documentation |
| MGS | Corrigé pour ne retirer que ses propres ids |
| Animations par mode | Par archétype (environ 8), pas une par mode |

À confirmer par Stoupy :

- S'arrêter après le lot 1 pour valider la direction visuelle avant les lots suivants (recommandé).
- L'ordre des lots 2 et 3 (cartes de rôle avant pictogrammes, vu son enthousiasme pour les rôles).

## État actuel du lancement

| Tick | Ce qui se passe | Où |
|---|---|---|
| 0 | Fin du vote, `utils/black_transition` : title d'un pixel noir, `times 10 30 10` | [launch_game.py:120-126](../src/datapack/engine/launch_game.py#L120-L126), [special_fonts/utils.py:29-37](../src/resource_pack/special_fonts/utils.py#L29-L37) |
| 12 | `launch` : reset des joueurs, `signals/start`, toast "mode sélectionné" | [launch_game.py:180-215](../src/datapack/engine/launch_game.py#L180-L215), [pop_ups.py](../src/datapack/engine/pop_ups.py) |
| 12 | Le mode démarre et envoie son explication dans le chat | `modes/<mode>/translations/start`, via `write_server_announce` dans [emit.py:88-103](../src/datapack/modes/emit.py#L88-L103) |
| 12 | `maps/intro_spread` appelle `#cinemalya:v1/intro` avec `display_time:130,duration:50` | [survival.py:25-35](../src/datapack/maps/generation/survival.py#L25-L35) |
| 42 à 122 | Carte Cinemalya en `text_display` : nom de la map et crédits | lib Cinemalya, `intro/display`, `fade_in` à 30t, `fade_out` à `display_time - 20` |
| 142 à 192 | Travelling de la caméra vers la position du joueur | lib Cinemalya |

Faits utiles :

- `signals/second` est retenu tant que des entités Cinemalya existent pendant les 199 premiers ticks ([signals.py:66-72](../src/datapack/engine/signals.py#L66-L72)). Garder la durée totale actuelle évite d'y toucher.
- 45 modes dans `MODES` ([catalogue.py](../src/datapack/modes/catalogue.py)), chacun avec `description: Localized` en fr et en ([spec.py](../src/datapack/modes/spec.py)).
- 24 modes annoncent leur démarrage par `write_server_announce(f"{path}/start", ...)`. Les autres ont un `translations/start` écrit à la main (64 appels à `translations/start` au total).
- Langue du joueur : score `switch.lang`, 0 pour fr, 1 pour en. Table `LANG_PRETEXT` dans `modes/definitions.py`.
- Le jeu gagnant est dans `storage switch:main current_game`. `transition` n'est appelée qu'une fois le jeu final connu, vote de groupe compris.
- Les joueurs sont en spectateur sur la caméra Cinemalya pendant l'intro, donc sans hotbar.
- Cinemalya est une lib de Stoupy (`projects/Cinemalya`), modifiable au besoin.
- Pack de ressources : 2,0 Mo seul, 30 Mo avec les libs.
- beet connaît déjà les post effects : `Mem.ctx.assets[ns].post_effects[id] = PostEffect(...)`.
- Les shaders du projet sont des chaînes Python dans [shaders.py](../src/resource_pack/shaders.py).

## Contraintes du moteur (26.3)

- `/posteffect add|remove|clear|list`, par joueur, permission 2, donc utilisable en fonction.
- Le shader ne reçoit que l'id de l'effet et `GameTime`. Tout paramètre est écrit dans le JSON : un id par valeur.
- Les uniforms du JSON sont des constantes. Types : `int`, `ivec3`, `float`, `vec2`, `vec3`, `vec4`, `matrix4x4`.
- Une texture d'entrée vient de `textures/effect/<chemin>.png`. `width` et `height` sont obligatoires et doivent correspondre au fichier.
- Le depth buffer de `minecraft:main` est lisible (`use_depth_buffer`).
- Une cible `persistent` survit entre les frames et est détruite quand l'effet est retiré, quand la fenêtre change de taille (pour une cible plein écran) et quand le monde cesse d'être rendu (menu).
- Format des cibles : `RGBA8_UNORM`. Taille par défaut : l'écran. Sinon en pixels absolus, jamais en proportion.
- Une passe ne lit jamais la cible qu'elle écrit, `minecraft:main` compris : écrire dans `swap` puis recopier.
- Seule cible externe autorisée : `minecraft:main`.
- Un état ne suit pas un changement d'id. Une animation complète tient dans un seul id.
- Retirer un effet le coupe net : une sortie animée est soit chronométrée dans le même id, soit un second id.
- Le GUI est dessiné après les post effects : chat, bossbar, sidebar, toasts et titles restent visibles par-dessus.
- La liste d'effets est sauvegardée dans les données du joueur, survit à la reconnexion, au changement de dimension et à la réapparition (`PlayerList.respawn` la recopie).
- Un id absent ou qui ne compile pas est ignoré jusqu'au prochain rechargement des ressources : F3+T après chaque correction GLSL.
- Chaque id compile à sa première utilisation, d'où une saccade possible une fois par variante.
- Tout post effect actif active `consistentDepthRequired` (une passe de profondeur en plus).
- `add` et `remove` du même id dans le même tick s'annulent. Pour relancer un effet, alterner deux ids.

## Séquence cible du lot 1

La durée totale reste celle d'aujourd'hui (192 ticks).

| Ticks | Image | Serveur |
|---|---|---|
| 0 | La dernière image du lobby se fige puis se disloque dans la couleur du mode | `posteffect add` de `switch:intro/<mode>_<lang>` à la place de `utils/black_transition` |
| 12 | Écran couvert | `launch` inchangé |
| 12 à 100 | Carte : nom du mode, 2 ou 3 règles révélées une par une, sur la vue floutée de la map | Rien, tout est chronométré dans le shader |
| 100 à 120 | Dissolution par une onde qui suit le relief, du proche au lointain | Rien |
| 120 à 192 | Titre de map Cinemalya puis travelling | `posteffect remove` planifié après la fin |

## Architecture du lot 1

- **Un seul fragment shader** `switch:post/intro`, dans [shaders.py](../src/resource_pack/shaders.py) ou un module voisin si le fichier dépasse 300 lignes.
- **Un générateur** qui parcourt `MODES` et `LANG_PRETEXT` et enregistre 90 effets `intro/<mode>_<lang>` avec `timed_post_effect` de StewBeet.
- **Uniforms par mode** : couleur d'accent. Plus tard : archétype et icône.
- **Texture par mode et par langue** : `textures/effect/intro/<mode>_<lang>.png`, rendue au build avec Pillow, en champ de distance (net à toute résolution, contour et lueur gratuits). Un canal pour le nom, un pour les règles.
- **Cibles** : l'horloge 1x1 persistante, une cible persistante plein écran qui capture l'image du lobby à la première frame (alpha 0 = pas encore capturée), une cible fixe 480x270 pour le flou, `swap`.
- **Si la capture est vide** (fenêtre redimensionnée pendant l'intro), le shader affiche la couleur du mode à la place.
- **Données** : champ `rules: Localized` dans `ModeSpec` (2 ou 3 règles courtes, rédigées à partir des `translations/start` actuels, relues par Stoupy) et champ de couleur d'accent.
- **Application** : dans `launch_game/transition`, macro sur `storage switch:main` : `$posteffect add @a[tag=!detached,scores={switch.lang=0}] switch:intro/$(current_game)_fr`, idem pour en.
- **Nettoyage** : une fonction générée qui retire chaque id Switch (liste tirée de `Mem.ctx.assets[ns].post_effects`), appelée par `utils/reset_players` et à la connexion. Jamais de `posteffect clear`, qui retirerait les effets des autres packs.

À supprimer dans le même changement :

- `utils/black_transition` et le caractère pixel noir s'il ne sert plus ailleurs.
- Les `translations/start` de chaque mode et leurs appels. Vérifier avant qu'aucun ne porte une information absente de la carte.
- Le toast "mode sélectionné" : il s'affiche par-dessus la carte, Stoupy a demandé de le retirer.

Points de détail :

- Le titre Cinemalya apparaît à 42t, derrière la carte, donc son animation d'entrée est invisible. Un argument de délai dans Cinemalya règle ça.
- Son : sons vanilla superposés au tick 0 (souffle) et à l'impact du nom. `launch` joue déjà `ui.toast.in`, Cinemalya joue `item.mace.smash_ground_heavy`.
- Les outils audio existants sont dans [tools/assets/](../tools/assets/), les sons du projet dans `assets/sounds/`.

## Lot 1 : ce qui est en place

| Quoi | Où |
|---|---|
| Timeline et shader | [intro/shader.py](../src/resource_pack/intro/shader.py) |
| Texte rendu avec la police bitmap vanilla | [intro/text.py](../src/resource_pack/intro/text.py) |
| Une chaîne par mode et par langue (90), flou du fond | [intro/card.py](../src/resource_pack/intro/card.py) |
| Couleur `accent` et `rules` de chaque mode | [spec.py](../src/datapack/modes/spec.py), [catalogue.py](../src/datapack/modes/catalogue.py) |
| Application, sons, retrait | `engine/launch_game/intro/*` dans [launch_game.py](../src/datapack/engine/launch_game.py) |
| Démarrage forcé | `force_start_macro` dans [engine/main.py](../src/datapack/engine/main.py) appelle `intro/start` |
| Retrait à la connexion | `player/joined` dans [player/main.py](../src/datapack/player/main.py) |

Timeline réelle, en ticks depuis `posteffect add` :

| Tick | Événement | Son |
|---|---|---|
| 0 à 10 | Des cellules carrées couvrent le lobby | `entity.ender_dragon.flap` (pitch 0.6) |
| 12 | `launch` | `ui.toast.in`, déjà présent |
| 16 | Le nom du mode claque dans son bandeau | `item.mace.smash_ground_heavy` |
| 20 à 32 | La couleur du mode laisse place à la map floutée | |
| 30, 42, 54 | Une règle se déroule | `ui.button.click` (pitch 1.4) |
| 90 à 110 | Dissolution selon la profondeur. Le lointain (fondu progressif de 64 à 256 blocs) et le ciel, hors de portée de la sphère, fondent en parallèle (ticks 97 à 110) | `item.trident.riptide_1` (pitch 1.4) |
| 130 | Le serveur retire l'effet | |

Écarts par rapport au plan de départ :

- **Pas de capture du lobby.** Les 10 premiers ticks couvrent la vue en direct, ce qui évite une cible persistante plein écran.
- **L'intro dure 1,5 s de plus.** Cinemalya tient le plan d'ensemble 160 ticks au lieu de 130 (`MAP_TITLE_TICKS` dans [survival.py](../src/datapack/maps/generation/survival.py)), pour que le titre de map reste visible 2 s après la carte. Le garde de `signals/second` suit.
- **Le son d'impact de Cinemalya est coupé** (`sound:"minecraft:intentionally_empty"`), il tombait au milieu de la carte.
- **Le texte est la police bitmap du jeu**, lue dans le jar vanilla par `beet.contrib.vanilla`. Une texture pèse environ 670 octets, le pack passe de 2,0 à 2,1 Mo.
- **Les modes désactivés ont aussi leur carte**, puisqu'ils se lancent en démarrage forcé.
- **Annonces chat supprimées** pour les 45 modes. Les autres lignes de `translations/start` restent (avertissement PvP, vote de thème, partie apocalyptique). `write_server_announce` n'existe plus.
- **Toast "mode sélectionné" supprimé** avec `engine/pop_ups.py` : la carte porte déjà le nom du mode.
- **Aucune ligne de changement de gamemode dans le chat.** Tout `gamemode` du Switch, de Cinemalya et de MGS s'exécute `as` le joueur visé (`execute as <joueurs> run gamemode <mode> @s`), ce que le jeu n'annonce pas. Aucun override de langue ne vide `gameMode.changed`. `send_command_feedback` est coupé pendant le vote pour une autre raison : cacher le retour des `/trigger` de vote.
- **`_coupdetat` et `replicate_the_build`** ne sont pas dans le catalogue : pas de carte, annonce inchangée.

Pas encore fait ou pas vérifié :

- Aucun test sur le vrai serveur Switch : la séquence complète (vote, `launch`, titre Cinemalya, travelling) n'a jamais tourné. L'effet a été vu en jeu via `posteffect add` sur un monde vanilla, et le datapack se charge sans erreur sur un serveur 26.3 où `intro/start`, `intro/stop` et `transition` s'exécutent.
- Testé en 854x480 en jeu et en 1920x1080 sur le banc hors jeu. Pas en ultra-large, pas avec Iris.
- Les sons sont choisis sans les entendre.
- Si le moteur est désactivé en pleine intro, la carte reste jusqu'au tick 110 et les sons planifiés jouent.
- La saccade de première compilation n'a pas été mesurée.

Builder sans rien copier (ni `_switch_dump`, ni le dossier du jeu, ni le SFTP) :

```
uv run stewbeet -s "meta.stewbeet.build_copy_destinations=null" build
```

Tester l'effet en jeu : serveur vanilla 26.3 hors ligne avec `enable-rcon=true` et `whitelist off`, `build/Switch_resource_pack.zip` dans `ClaireChan/tools/minecraft/run/resourcepacks/` et dans `resourcePacks` de son `options.txt`, puis `posteffect add <joueur> switch:intro/<mode>_<lang>` par RCON et `/screenshot` sur le pont toutes les 250 ms.
Attendre que `/state` réponde avant `/connect` : une connexion trop tôt a fait planter le client une fois.

## Lot 2 : ce qui est en place

Une carte par rôle et par langue (`switch:role/<mode>/<role>_<lang>`), montrée au seul joueur concerné, par-dessus le jeu et jamais par-dessus la carte du mode.
Bandeau sombre dans le tiers haut ("Vous êtes", nom du rôle dans sa couleur), objectif en une ligne dessous, bords teintés. 76 ticks, puis le shader rend le jeu intact.

| Quoi | Où |
|---|---|
| Rôles d'un mode (`roles`, `RoleSpec` : nom, objectif, couleur) | [spec.py](../src/datapack/modes/spec.py), [catalogue.py](../src/datapack/modes/catalogue.py) |
| Shader et chaînes | [intro/role.py](../src/resource_pack/intro/role.py), lecture du texte partagée dans `TEXT_GLSL` de [intro/text.py](../src/resource_pack/intro/text.py) |
| `engine/role_card/<mode>/<role>` (lancée en tant que le joueur), retrait planifié, retrait à la connexion | [role_card.py](../src/datapack/engine/role_card.py) |

Moments d'affichage, tous quelques secondes après l'atterrissage :

| Mode | Rôles | Quand |
|---|---|---|
| traitors_game | inspecteur, innocent, ninja, traître, gros traître, floupy | `roles/announcement` (seconde 0, 6 s après l'atterrissage), les messages du chat restent |
| murder_mystery | innocent, détective, meurtrier | seconde 0, à la place du title "Vous êtes" |
| infected | humain, zombie | humain à l'arrivée sur la map (seconde 0), zombie quand un joueur le devient |
| protect_the_king | les deux rois seulement | seconde 5 |
| beat_the_kings | civil, roi | seconde 5, avec l'annonce du chat |

Chaque carte planifie `role_card/stop` 96 ticks plus tard en `replace` : le retrait suit la dernière carte montrée, donc toutes sont finies.
Pas de carte pour spectres_game, ni pour les changements de rôle en cours de partie (vol de Floupy, solitaire, seconde vie du ninja).
Les textes des cartes sont réduits d'environ 10 % (`TEXT_SCALE`), arrondis à un nombre entier de pixels d'écran par pixel de police.

## Lots suivants

- **Variante du lot 2.** Teinte d'équipe sur la carte du mode.
- **Lot 3, pictogrammes animés.** Environ 8 archétypes : survivre, dernier debout, pousser, course, capture, équipe contre équipe, collecte, construction. Chaque mode choisit un archétype, une icône et une couleur. Les icônes sont des textures vanilla copiées dans `textures/effect/` au build.
- **Lot 4, ambiances en jeu.** Un effet tenu pendant la partie : vignette sombre sur warden_escape, bloom néon sur laser_game. Une seule passe, il tourne à chaque frame.
- **Lot 5, écran de fin.** Désaturation pour les perdants, confettis pour le gagnant.
- **Plus tard.** Décompte 3-2-1-GO en shader (un id par chiffre) à la place des `title` dupliqués dans chaque `translations/second`. Scènes sur mesure pour quelques modes phares.

## Prérequis hors Switch

### A. MGS ne retire que ses propres ids

`player/fx_reset` de MGS retire ses 136 ids un par un ([shaders/__init__.py](../../MC_Guns_System/src/functional/shaders/__init__.py)), à chaque début et fin de partie MGS, mort, reconnexion et `/reload`.
Un `posteffect clear` à cet endroit ferait sauter la carte Switch à 12t dans un mode qui lance une partie MGS, et une carte de rôle à chaque mort.
Vérifié par `scripts/verify.py check --diff` : seul `fx_reset.mcfunction` change. La spec MGS dit maintenant que la liste survit à la mort.
Effet de bord accepté : un id d'une ancienne version de MGS n'est plus retiré, le client l'ignore.

### B. Horloge partagée dans StewBeet

Module [post_effects.py](../../StewBeet/python_package/stewbeet/core/utils/post_effects.py), exporté à plat depuis `stewbeet` :

- `timed_post_effect(effect_id, fragment_shader, uniforms, inputs=None, pre_passes=None, targets=None)` : le namespace est celui du projet.
- `post_uniform(name, kind, value)`.
- `POST_SHADER_HEADER`, `SCREENQUAD_VERTEX_SHADER`, `POST_CLOCK_GLSL`, `POST_CLOCK_FSH`, `POST_COPY_FSH`.
- Côté GLSL : `#include <ns:clock.glsl>`, puis `clock_elapsed(clock, GameTime)` et `clock_ramp(clock, GameTime, duration)`.

Guide : `StewBeet/docs/web/public/docs/12_post_effects/` (en et fr). Test : `python_package/tests/plugin_40_core_post_effects`.
Switch dépend de StewBeet par chemin local ([pyproject.toml](../pyproject.toml)), donc le module est utilisable tout de suite.

### B bis. MGS sur l'horloge partagée

MGS importe `timed_post_effect`, `post_uniform`, `POST_SHADER_HEADER` et `SCREENQUAD_VERTEX_SHADER` depuis `stewbeet`, et son `common.py` n'existe plus.
Son `pyproject.toml` demande `stewbeet>=3.15.0`, version à publier : d'ici là `uv run` et `uv lock` échouent dans MGS, et son `uv.lock` reste sur 3.14.0.
Pour builder MGS en attendant : `PYTHONPATH=../StewBeet/python_package .venv/Scripts/python scripts/verify.py check --diff`.
Le GLSL renommé (`clock_*`) n'a pas été rechargé en jeu : les chaînes JSON sont identiques, seuls les noms changent dans les shaders.

### C. Serveur de test

Le client de test de ClaireChan (`ClaireChan/tools/minecraft`, Fabric 26.3, pseudo hors ligne `ClaireChan`) se pilote par HTTP sur `127.0.0.1:47621` :
`/state`, `/connect {address}`, `/disconnect`, `/command {command}`, `/chat {after}`, `/hold {key, ticks}`, `/look {yaw, pitch}`, `/screenshot`, `/quit`.
Il démarre avec `gradlew.bat runClient` (environ une minute, prêt quand `/state` répond `loading: false`). Un second joueur : `runClient2`, port 47622.
Son dossier de jeu est `tools/minecraft/run/` : y déposer le pack dans `resourcepacks/`. Iris, Sodium et Complementary y sont, désactivés (`.jar.disabled`).

Il ne fait que rejoindre un serveur, et il n'y en a pas de prêt : ClaireChan monte le sien à chaque fois. Faire pareil :

- Un serveur jetable hors ligne (`online-mode=false`), `server.jar` 26.3 de piston-data.mojang.com, dans un dossier de travail ignoré par git. Modèle : `server()` dans [verify.py](../../MC_Guns_System/scripts/verify.py) de MGS.
- Ne jamais toucher aux serveurs de Stoupy (`D:/latest_snapshot` est le sien, en `online-mode=true`).
- Passer en priorité Idle tout java lancé (serveur, client, Gradle), sinon son PC lague.
- Un seul client de test à la fois.
- Le pilotage du serveur passe par RCON ou par son entrée standard.

Une capture est une image fixe : vérifier une animation par captures successives.
Pour itérer vite sur le visuel hors jeu, un banc de rendu `moderngl` hors du projet suffit.

## Risques

- Saccade de compilation à la première utilisation de chaque id : à mesurer, elle tombe sur l'image figée.
- Une carte de 4 s ne se relit pas. La description du mode reste dans le lore du vote.
- Poids des 90 textures de texte : estimation grossière de 1 à 3 Mo.
- Le chat et la sidebar restent visibles par-dessus la carte.

## Vérifications avant de livrer

- `ruff check`, pyright strict, `stouputils check`, `uvx complexipy . --failed --max-complexity-allowed 15`.
- Chaque shader : `#version 330`, la ligne `GL_ARB_separate_shader_objects`, `layout(location = N)` sur chaque `in` et `out`.
- Test en jeu avec et sans shaderpack Iris, en 16:9 et en ultra-large.
- Un joueur qui se déconnecte en pleine intro n'a plus la carte à son retour.

