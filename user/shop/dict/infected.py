
# Infected shop
INFECTED: dict = {
	"sword": {
		"ok_messages": {
			"fr": "Votre achat pour améliorer votre épée a été effectué !",
			"en": "Your purchase for upgrading your sword has been completed!"
		},
		"error_messages": {
			"fr": "Vous n'avez pas assez d'argent pour améliorer votre épée !",
			"en": "You don't have enough money to upgrade your sword!"
		},
		"upgrade_name": {"fr": "Épée", "en": "Sword"},
		"upgrades": [
			{"price": 50,	"hover_text": {"fr": "Épée en bois -> Épée en pierre", "en": "Wooden sword -> Stone sword"}},
			{"price": 100,	"hover_text": {"fr": "Épée en pierre -> Épée en fer", "en": "Stone sword -> Iron sword"}},
			{"price": 150,	"hover_text": {"fr": "Épée en fer -> Épée en diamant", "en": "Iron sword -> Diamond sword"}},
			{"price": 200,	"hover_text": {"fr": "Épée en diamant -> Épée en émeraude", "en": "Diamond sword -> Emerald sword"}},
			{"price": 250,	"hover_text": {"fr": "Épée en émeraude -> Épée en obsidienne", "en": "Emerald sword -> Obsidian sword"}},
			{"price": 300,	"hover_text": {"fr": "Épée en obsidienne -> Épée en topaz", "en": "Obsidian sword -> Topaz sword"}},
			{"price": 350,	"hover_text": {"fr": "Épée en topaz -> Épée en rubis", "en": "Topaz sword -> Ruby sword"}},
			{"price": 400,	"hover_text": {"fr": "Épée en rubis -> Épée en saphir", "en": "Ruby sword -> Sapphire sword"}},
			{"price": 450,	"hover_text": {"fr": "Épée en saphir -> Épée en adamantium", "en": "Sapphire sword -> Adamantium sword"}},
		]
	},
	"armor": {
		"ok_messages": {
			"fr": "Votre achat pour améliorer votre armure a été effectué !",
			"en": "Your purchase for upgrading your armor has been completed!"
		},
		"error_messages": {
			"fr": "Vous n'avez pas assez d'argent pour améliorer votre armure !",
			"en": "You don't have enough money to upgrade your armor!"
		},
		"upgrade_name": {"fr": "Armure", "en": "Armor"},
		"upgrades": [
			{"price": 50,	"hover_text": {"fr": "Armure en cuir -> Armure en maille", "en": "Leather armor -> Chainmail armor"}},
			{"price": 100,	"hover_text": {"fr": "Armure en maille -> Armure en or", "en": "Chainmail armor -> Gold armor"}},
			{"price": 150,	"hover_text": {"fr": "Armure en or -> Armure en fer", "en": "Gold armor -> Iron armor"}},
			{"price": 200,	"hover_text": {"fr": "Armure en fer -> Armure en diamant", "en": "Iron armor -> Diamond armor"}},
			{"price": 250,	"hover_text": {"fr": "Armure en diamant -> Armure en émeraude", "en": "Diamond armor -> Emerald armor"}},
			{"price": 300,	"hover_text": {"fr": "Armure en émeraude -> Armure en obsidienne", "en": "Emerald armor -> Obsidian armor"}},
			{"price": 350,	"hover_text": {"fr": "Armure en obsidienne -> Armure en topaz", "en": "Obsidian armor -> Topaz armor"}},
			{"price": 400,	"hover_text": {"fr": "Armure en topaz -> Armure en rubis", "en": "Topaz armor -> Ruby armor"}},
			{"price": 450,	"hover_text": {"fr": "Armure en rubis -> Armure en saphir", "en": "Ruby armor -> Sapphire armor"}},
			{"price": 500,	"hover_text": {"fr": "Armure en saphir -> Armure en adamantium", "en": "Sapphire armor -> Adamantium armor"}},
		]
	},
	"zombie_speed": {
		"ok_messages": {
			"fr": "Votre achat pour augmenter votre vitesse en zombie a été effectué !",
			"en": "Your purchase for increasing your zombie speed has been completed!"
		},
		"error_messages": {
			"fr": "Vous n'avez pas assez d'argent pour augmenter votre vitesse en zombie !",
			"en": "You don't have enough money to increase your zombie speed!"
		},
		"upgrade_name": {"fr": "Vitesse en zombie", "en": "Zombie speed"},
		"upgrades": [
			{"price": 50,	"hover_text": {"fr": "20% de vitesse -> 21% de vitesse", "en": "20% speed -> 21% speed"}},
			{"price": 100,	"hover_text": {"fr": "21% de vitesse -> 22% de vitesse", "en": "21% speed -> 22% speed"}},
			{"price": 150,	"hover_text": {"fr": "22% de vitesse -> 23% de vitesse", "en": "22% speed -> 23% speed"}},
			{"price": 200,	"hover_text": {"fr": "23% de vitesse -> 24% de vitesse", "en": "23% speed -> 24% speed"}},
			{"price": 250,	"hover_text": {"fr": "24% de vitesse -> 25% de vitesse", "en": "24% speed -> 25% speed"}},
			{"price": 300,	"hover_text": {"fr": "25% de vitesse -> 26% de vitesse", "en": "25% speed -> 26% speed"}},
			{"price": 350,	"hover_text": {"fr": "26% de vitesse -> 27% de vitesse", "en": "26% speed -> 27% speed"}},
			{"price": 400,	"hover_text": {"fr": "27% de vitesse -> 28% de vitesse", "en": "27% speed -> 28% speed"}},
			{"price": 450,	"hover_text": {"fr": "28% de vitesse -> 29% de vitesse", "en": "28% speed -> 29% speed"}},
			{"price": 500,	"hover_text": {"fr": "29% de vitesse -> 30% de vitesse", "en": "29% speed -> 30% speed"}},
		]
	},
	"zombie_strength": {
		"ok_messages": {
			"fr": "Votre achat pour augmenter votre force en zombie a été effectué !",
			"en": "Your purchase for increasing your zombie strength has been completed!"
		},
		"error_messages": {
			"fr": "Vous n'avez pas assez d'argent pour augmenter votre force en zombie !",
			"en": "You don't have enough money to increase your zombie strength!"
		},
		"upgrade_name": {"fr": "Force en zombie", "en": "Zombie strength"},
		"upgrades": [
			{"price": 50,	"hover_text": {"fr": "2.80 -> 2.85 dégâts par coup", "en": "2.80 -> 2.85 damage per hit"}},
			{"price": 100,	"hover_text": {"fr": "2.85 -> 2.90 dégâts par coup", "en": "2.85 -> 2.90 damage per hit"}},
			{"price": 150,	"hover_text": {"fr": "2.90 -> 2.95 dégâts par coup", "en": "2.90 -> 2.95 damage per hit"}},
			{"price": 200,	"hover_text": {"fr": "2.95 -> 3.00 dégâts par coup", "en": "2.95 -> 3.00 damage per hit"}},
			{"price": 250,	"hover_text": {"fr": "3.00 -> 3.05 dégâts par coup", "en": "3.00 -> 3.05 damage per hit"}},
			{"price": 300,	"hover_text": {"fr": "3.05 -> 3.10 dégâts par coup", "en": "3.05 -> 3.10 damage per hit"}},
			{"price": 350,	"hover_text": {"fr": "3.10 -> 3.15 dégâts par coup", "en": "3.10 -> 3.15 damage per hit"}},
			{"price": 400,	"hover_text": {"fr": "3.15 -> 3.20 dégâts par coup", "en": "3.15 -> 3.20 damage per hit"}},
		]
	},
	"zombie_jump": {
		"ok_messages": {
			"fr": "Votre achat pour augmenter votre hauteur de saut en zombie a été effectué !",
			"en": "Your purchase for increasing your zombie jump height has been completed!"
		},
		"error_messages": {
			"fr": "Vous n'avez pas assez d'argent pour augmenter votre hauteur de saut en zombie !",
			"en": "You don't have enough money to increase your zombie jump height!"
		},
		"upgrade_name": {"fr": "Hauteur de saut en zombie", "en": "Zombie jump height"},
		"upgrades": [
			{"price": 200,	"hover_text": {"en": "jump boost 1 -> jump boost 2"}},
		]
	},
}

