
# Plan : overlay d'inventaire du lobby (technique de la Quarry)

Ce fichier contient tout ce qu'il faut pour reprendre le chantier sans mémoire de conversation.
Le lot 1 est codé.

## Objectif

- Un overlay permanent, dessiné dans l'inventaire (touche E) des joueurs du lobby, pour le rendre beau. Possiblement animé.
- Pas de bouton, pas de texte dessiné, pas de page, pas de clic : l'inventaire actuel garde son fonctionnement.
- Les 13 jumps gardent leur place. Chacun a un item model propre pour l'état fait et un autre pour l'état pas fait, avec des variantes de couleur. Il n'y a pas de variante de l'overlay par combinaison de jumps.

## Décisions prises (2026-11-25)

- Un overlay seul, sans libellé dans la texture (aucun texte dessiné).
- Les jumps : un item model par jump et par état, pas un fond par combinaison.
- Le vote reste en chat.
- Pas de container ouvrable dans le lobby.
- Pas de GUI en créatif.
- Une seule page : l'inventaire actuel des jumps, avec le nouvel overlay. Pas de pages ni de clics.
- Le nouvel affichage cohabite avec l'inventaire actuel des jumps, il ne le remplace pas.
- Les textures sont dessinées par une session Opus en `high`, dans le style de ce qui existe (shaders, badges).
- L'overlay couvre tout l'écran d'inventaire et la barre des effets à sa droite. Le helper StewBeet `setup_gui_in_resource_packs` reste tel quel et Switch ne s'en sert pas : son plan s'arrête à 176 x 176 px et laisse 6 px vanilla à droite du cadre.

Ce que fait le `tooltip_style` des jumps (`success` ou `failure`) : il change seulement le cadre du tooltip au survol. Il n'a aucun effet sur l'overlay permanent ni sur l'icône du jump. L'état fait ou pas fait se voit par l'item model du jump, pas par le tooltip.

## Avancement

- [x] Lecture de la Quarry (code, build, helper StewBeet)
- [x] Lecture du lobby Switch (inventaire, practice, layout, tutoriel, vote, triggers)
- [x] Test en jeu sur 26.3 de l'overlay placé dans l'inventaire du joueur
- [x] Décisions
- [x] Lot 1 : overlay statique
- [ ] Lot 2 : item models des 13 jumps (fait, pas fait)
- [ ] Lot 3 : animation éventuelle
- [ ] Question restante : bannière au-dessus du cadre

## Comment la Quarry dessine son GUI

Chemins relatifs à `D:\advanced_desktop\projects\StardustFragment`, sauf pour StewBeet.

- La Quarry est un barrel vanilla posé par le plugin `custom_blocks` de StewBeet. Son titre reste le nom du bloc : pas de police custom, pas de render node.
- Tout le visuel passe par un item model posé dans le slot 26 du barrel, le coin bas droit : `recovery_compass[item_model="stardust:gui/quarry",tooltip_display={hide_tooltip:true},custom_data={common_signals:{temp:true}}]`, réécrit à chaque seconde (`src/utils/quarry.py:203`).
- Le model vient de `setup_gui_in_resource_packs` (StewBeet, `python_package/stewbeet/contrib/simplenergy/gui.py:34`), appelé dans `src/link.py:31` avec `{"quarry": GuiTranslation.barrel_bottom_right}`.
- Le helper lit chaque PNG de `assets/textures/gui/` et écrit une texture, un model `item/gui/<nom>` et une définition `items/gui/<nom>.json`.
- Le model est un plan de 48 x 48 unités dont la face sud prend l'UV `[0,5,11,16]`, le carré de 176 x 176 px en bas à gauche d'une texture 256 x 256.
- `display.gui` met ce plan à l'échelle 3.66 et le décale de `[-78,75,-76]`. La définition d'item porte `"oversized_in_gui": true`, sans quoi le client coupe le rendu à 16 px.
- La texture `assets/textures/gui/quarry.png` (256 x 256, 865 octets) peint les lignes du barrel avec une fenêtre transparente sur les slots qui montrent un item.

## Ce que montre le test en jeu (26.3, 2026-11-25)

Montage : serveur 26.3 jetable, client de test ClaireChan en GUI scale 2, pack de test avec le model `barrel_bottom_right` sur un item posé en `inventory.26` (slot 35, coin bas droit de l'inventaire principal).

- L'overlay couvre toute la moitié haute de l'écran d'inventaire : armure, aperçu du joueur, grille de craft 2x2 et les 3 lignes de l'inventaire principal.
- Il dépasse du cadre : 34 px s'affichent au-dessus de l'écran d'inventaire.
- La ligne de hotbar de l'écran d'inventaire reste vanilla, et le HUD ne montre rien de l'overlay.
- Avec le transform StewBeet, 6 px au bord droit du cadre restent vanilla : le plan couvre x = -6 à 170 sur les 176 px de l'écran.
- Le pixel (tx, ty) de la texture tombe en (tx - 5.84, ty - 114.84) en pixels GUI depuis le coin haut gauche de l'écran d'inventaire.
- Les items des autres slots sont dessinés sous l'overlay. Une zone transparente de la texture laisse voir l'item du slot en dessous : c'est ainsi que les icônes de jump se voient.
- Le nombre de l'item overlay se dessine par-dessus le fond : l'overlay porte `max_stack_size=1`.
- Sous un fond opaque, l'icône vide du slot offhand reste visible (dessinée après l'overlay) et le bouton du recipe book disparaît (dessiné avant) : l'overlay garde une fenêtre transparente sur ce bouton.
- Dans l'écran d'un coffre, l'overlay recouvre les 27 slots du coffre. Sans container au lobby, ce cas ne se présente pas.
- Captures : `D:\advanced_desktop\ClaireChan\tools\minecraft\run\screenshots\2026-11-25_14.34.54.855.png` (inventaire) et `2026-11-25_14.36.37.083.png` (coffre).

## Le lobby actuel

Chemins relatifs à la racine de Switch.

- Un joueur du lobby porte le tag `detached`, joue en adventure autour de `0 69 0` dans l'overworld, et passe chaque tick dans `player/tick_detach` (`src/datapack/player/tick_detach.py`).
- `player/setup_lobby_inventory` pose 13 items de jump dans `inventory.3..5`, `inventory.10..16` et `inventory.21..23`, avec deux lignes par jump selon l'advancement (`src/datapack/player/main.py:182`). Chaque item est un bloc vanilla (dripstone, concrete rose, briques, ...) avec `custom_data` `jump:true`.
- Le lobby compte les items `jump:true`, trouve celui qui manque, téléporte au départ du jump avec Cinemalya, vide l'inventaire et le repose (`tick_detach`). Les nouveaux item models gardent ce fonctionnement, puisque les items restent les mêmes.
- Le toggle du practice mode est en `inventory.8`, ses 3 items d'action vont en `hotbar.3..5` quand il est actif.
- Le vote passe par le chat. Pendant le vote et l'attente de joueurs, les joueurs attachés sont en spectator avec un inventaire vidé : leur écran d'inventaire s'ouvre, sans overlay.
- `tutorial/start` et `trigger/detach/basic_stuff` vident l'inventaire : l'overlay arrive à la fin du tutoriel et au retour au lobby.
- `src/recolor.py` remplace dans le datapack chaque couleur nommée par un hex de sa palette.
- Le badge TAB de `badge()` (`src/datapack/modes/emit.py`) est le seul render node du projet. Il reste hors de ce chantier (pas de texte dessiné).
- Le resource pack pèse 2,2 Mo seul et 31 Mo avec les libs.

## Architecture

- Deux pièces, car un item model fait au plus 192 px GUI (48 unités à l'échelle 4) : `lobby` en `inventory.0` couvre l'écran d'inventaire, `lobby_wing` en `inventory.26` couvre la barre des effets.
- Le client dessine les effets, puis le fond et les widgets, puis les slots dans l'ordre. Les jumps, le toggle practice, la hotbar et l'offhand passent donc par-dessus `lobby`, qui dessine leurs socles. L'aperçu du joueur et le bouton du recipe book, dessinés avant, gardent une fenêtre transparente.
- Zone dessinable : x = -8 à 304 et y = -20 à 172 depuis le coin de l'écran d'inventaire. Le texel (tx, ty) de la texture 320 x 192 tombe sur le pixel GUI (tx - 8, ty - 20), au pixel près à toute échelle.
- Génération : `src/resource_pack/lobby_gui.py` enregistre la texture `src/resource_pack/textures/item/gui/lobby.png`, un model et une définition d'item par pièce de `PARTS`. `setup_lobby_inventory` pose les pièces de `PARTS`.
- Chaque pièce porte `max_stack_size=1`, `tooltip_display={hide_tooltip:true}` et `custom_data` `lobby_gui:true`. Les slots `inventory.0` et `inventory.26` ne servent à aucun jump.
- Les jumps : chaque jump reçoit un `item_model` selon l'advancement : deux lignes par jump existent déjà dans `setup_lobby_inventory`, elles posent l'`item_model` au lieu de (ou en plus de) `tooltip_style`. 26 petites textures de 16 x 16 px, une paire par jump.
- Toutes les écritures restent dans `inventory.*`, jamais en `hotbar.*` ni en offhand : le layout appris des kits et le contrôle `LEARNED_SLOT_WRITE` de `src/validation.py` ne sont pas concernés.
- Pas de détection de clic : le comptage des items `jump:true` de `tick_detach` ne change pas.

## Lots

Chaque lot se termine par ses preuves, mesurées sur un serveur 26.3 jetable avec le client de test, jamais sur le serveur de production.
Pour le joueur de test, suivre la mémoire `switch-test-player-setup`.

### Lot 1 : overlay statique

- Contenu : la texture de l'overlay, ses deux item models et leur pose par `setup_lobby_inventory`.
- Preuve : le build passe et `build/resource_pack` contient `assets/switch/items/gui/lobby.json` avec `"oversized_in_gui": true`.
- Preuve : captures de l'écran d'inventaire en GUI scale 2 et 4, cadre et texture alignés.
- Preuve : capture du HUD sans trace de l'overlay.
- Preuve : sous un fond opaque, une capture dit si l'icône offhand et le bouton du recipe book restent visibles.
- Preuve : le joueur en créatif et en spectator ne casse rien (pas d'erreur de log).

### Lot 2 : item models des jumps

- Contenu : 26 textures de 16 x 16 px (13 jumps, 2 états), leurs item models, et la pose par `setup_lobby_inventory` selon l'advancement.
- Preuve : chaque jump affiche le bon état (capture par état, advancement accordé ou révoqué par RCON).
- Preuve : un jump téléporte toujours à son départ quand son item est pris (position lue par RCON), et l'inventaire se remet comme avant.
- Preuve : un joueur dont l'inventaire date d'avant la mise à jour reçoit les nouveaux models sans déclencher de téléportation.
- Preuve : un score de test compte les déclenchements de `switch:inventory_changed` par joueur du lobby : le nombre n'augmente que lors d'un vrai changement d'état d'un jump.

### Lot 3 : animation

- Contenu : une animation éventuelle de l'overlay, par `.mcmeta` de la texture.
- Preuve : captures de l'overlay final aux GUI scales 2 et 4.
- Preuve : taille de `build/Switch_resource_pack.zip` avant et après.
- Preuve si animé : le coût de rendu (un model animé est re-rendu à chaque frame, `OversizedItemRenderer`) mesuré sur le client de test, sans baisse notable des images par seconde.

## Risques techniques

- **GUI scale :** l'overlay est en pixels GUI et suit le GUI scale sans calcul. La zone de 20 px au-dessus du cadre demande 20 px GUI libres : un écran de 240 px GUI de haut en laisse 37. L'aile finit 304 px à droite du coin de l'écran d'inventaire : sous 432 px GUI de large (1728 px d'écran en GUI scale 4), le bord de l'écran la coupe.
- **Recipe book :** il décale l'écran d'inventaire vers la droite. L'overlay suit son slot, et le panneau du recipe book reste à côté, non couvert.
- **Grille de craft :** elle reste utilisable sous l'overlay, et un item posé là disparaît de la vue jusqu'à la fermeture. Sans bouton, le risque est cosmétique.
- **Taille du resource pack :** un overlay 256 x 256 pèse peu (`quarry.png` : 865 octets). Une texture animée coûte plus : `nether_star_generator_on.png` de Stardust fait 256 x 7680 px pour 31 Ko.
- **Rendu animé :** un model oversized est rendu dans sa propre texture et re-rendu à chaque frame seulement si le model est animé. À mesurer au lot 3.
- **`inventory_changed` :** une commande qui change un item de l'inventaire déclenche l'advancement `switch:inventory_changed` et les écouteurs du mode en cours. Réécrire un item identique ne déclenche rien : écrire un jump seulement quand son état change.
- **Joueurs sans GUI :** un spectator ouvre l'écran d'inventaire, mais son inventaire est vidé au vote, donc pas d'overlay pendant le vote ni pendant l'attente.

## Recette de test

- Serveur : le `server.jar` vanilla 26.3 (bundler de 62 Mo, sha1 `33680f5f2ac32864d6d7cf5e56a705fdb3e05f4c`, celui du cache mcward est le lanceur Fabric), `online-mode=false`, `white-list=false`, RCON, monde flat.
- Avant la première connexion : `setworldspawn 0 -60 0` et `gamerule keep_inventory true`. Le spawn flat par défaut place le joueur dans la terre, où il étouffe.
- Client : copier le resource pack dans `D:\advanced_desktop\ClaireChan\tools\minecraft\run\resourcepacks`, l'ajouter à `resourcePacks` dans `run/options.txt`, sauvegarder `options.txt` avant et le restaurer après.
- La touche inventaire du client de test ouvre l'écran mais ne le ferme pas : une déconnexion le ferme.
- Toute JVM du test (serveur, Gradle, client) passe en priorité Idle par PID, et un seul client tourne à la fois.

## Questions ouvertes

1. Bannière au-dessus du cadre : proposition de ne pas en mettre au départ (pour : le bandeau de 20 px au-dessus du cadre, où la planète déborde déjà, donne une identité au lobby ; contre : de la décoration sans fonction, un élément de plus à dessiner). On la décide quand l'overlay seul est visible.
2. Animation : que doit-elle montrer (reflets, particules, rotation d'un motif) et à quelle vitesse ? À fixer au lot 3, après l'overlay statique.

