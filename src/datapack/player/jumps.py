JUMPS: list[tuple[int, str, str, str, tuple[int, int, int], tuple[int, int, int, int]]] = [
	(1, "green", "Green Jump", "green", (-5, 71, -10), (-8, 81, -22, 2)),
	(2, "white", "White Jump", "white", (6, 71, -10), (22, 88, 0, 2)),
	(3, "blue", "Blue Jump", "blue", (0, 76, -28), (0, 82, -39, 2)),
	(4, "yellow", "Yellow Jump", "yellow", (11, 75, 23), (63, 88, 10, 2)),
	(5, "red", "Red Jump", "red", (-14, 74, 13), (-26, 91, 15, 2)),
	(6, "brown", "Brown Jump", "#8B4513", (-36, 72, -14), (-20, 75, -78, 2)),
	(7, "purple", "Purple Jump", "dark_purple", (-12, 74, 36), (-42, 94, 32, 2)),
	(8, "dripstone", "Dripstone Jump", "gold", (13, 73, 48), (34, 82, 47, 1)),
	(9, "pink", "Pink Jump", "light_purple", (-47, 76, 15), (-44, 93, 27, 2)),
	(10, "bricks", "Bricks Jump", "#BC4A3C", (-87, 70, 0), (-123, 79, -11, 2)),
	(11, "obsidian", "Obsidian Jump", "dark_gray", (51, 75, -14), (36, 84, -73, 2)),
	(12, "duality", "Duality Jump", "#B87333", (12, 75, 112), (44, 86, 84, 2)),  # end also requires the two pressure plates (special-cased in tick_detach)
	(13, "graviglitch", "GraviGlitch Jump", "#676767", (-12, 74, 91), (-83, 100, 71, 2)),
]
""" Lobby jumps: (timer id, key, display name, color, start line block, end (x, y, z, max_distance)).

The timer ids match the {ns}.lobby_respawn scores, the names and colors match the lobby inventory items,
and the start line blocks sit 1 block in front of the jump tp points (see tick_detach respawn coords).
"""

