
# ruff: noqa: E501
# Imports
from stewbeet import Mem

from ..common import write_server_announce


def write_translations():
	""" Write the feed_fast translation functions at switch:modes/feed_fast/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/feed_fast/translations"

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Feed Fast dans 5 secondes, mangez les nourritures les plus rassasiantes pour marquer le maximum de points !", "Feed Fast game starts in 5 seconds, eat the most satiating foods to score maximum points!")
