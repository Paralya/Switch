
# ruff: noqa: E501
# Imports
from stewbeet import Mem

from ..common import write_server_announce


def write_translations():
	""" Write the snowball_painter translation functions at switch:modes/snowball_painter/translations/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/snowball_painter/translations"

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Snowball Painter dans 5 secondes, un tableau est présent et vous devez être le joueur ayant peint le plus à la fin du temps imparti !", "Snowball Painter game starts in 5 seconds, there is a painting and you must be the player who has painted the most by the end of the time limit!")
