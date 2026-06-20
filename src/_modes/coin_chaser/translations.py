
# Imports
from stewbeet import Mem
from ..common import write_server_announce


def write_translations():
	""" Write the coin_chaser translation functions at switch:modes/coin_chaser/translations/* """
	path: str = f"{Mem.ctx.project_id}:modes/coin_chaser/translations"

	# /start
	write_server_announce(f"{path}/start", "Lancement de la partie de Coin Chaser dans 10 secondes, collectez le plus d'or dans le temps imparti grâce à vos ailes et votre équipement tridimensionnel !", "Coin Chaser game starts in 10 seconds, collect the most gold in the allotted time with your wings and three-dimensional maneuver gear!")
