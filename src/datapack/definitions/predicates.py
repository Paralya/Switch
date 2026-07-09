
# Imports
from typing import Any

from beet import Predicate
from stewbeet.core import Mem, set_json_encoder

# Random chance predicates: name -> chance value
CHANCES: dict[str, float] = {
	"0.01": 0.01, "0.05": 0.05, "0.1": 0.1, "0.2": 0.2, "0.25": 0.25,
	"0.33": 0.3333, "0.5": 0.5, "0.66": 0.6666, "0.9": 0.9,
}


def entity_properties(predicate: dict[str, Any]) -> dict[str, Any]:
	""" entity_properties predicate on 'this'. """
	return {"condition": "minecraft:entity_properties", "entity": "this", "predicate": predicate}


def block_at(block: str, offset_y: int | None = None) -> dict[str, Any]:
	""" location_check predicate matching a block (optionally with a Y offset). """
	out: dict[str, Any] = {"condition": "minecraft:location_check"}
	if offset_y is not None:
		out["offsetY"] = offset_y
	out["predicate"] = {"block": {"blocks": [block]}}
	return out


def same_score(objective: str, target: str, score: str) -> dict[str, Any]:
	""" entity_scores predicate where 'objective' equals the fixed score 'target'.'score'. """
	bound: dict[str, Any] = {"type": "minecraft:score", "target": {"type": "minecraft:fixed", "name": target}, "score": score}
	return {"condition": "minecraft:entity_scores", "entity": "this", "scores": {objective: {"min": bound, "max": bound}}}


def write_predicates() -> None:
	""" Build the shared/generic predicates explicitly under the switch namespace. """
	ns: str = Mem.ctx.project_id
	predicates = Mem.ctx.data[ns].predicates

	# Random chances
	for name, chance in CHANCES.items():
		predicates[f"chance/{name}"] = set_json_encoder(Predicate({"condition": "minecraft:random_chance", "chance": chance}))

	# Location checks
	predicates["in_air"] = set_json_encoder(Predicate(block_at("minecraft:air", offset_y=-1)))
	predicates["in_water"] = set_json_encoder(Predicate(block_at("minecraft:water")))
	predicates["in_lava"] = set_json_encoder(Predicate(block_at("minecraft:lava")))
	predicates["is_at_spawn"] = set_json_encoder(Predicate({
		"condition": "minecraft:location_check",
		"predicate": {"position": {
			"x": {"min": -10, "max": 10},
			"y": {"min": 60, "max": 80},
			"z": {"min": -10, "max": 10},
		}},
	}))

	# Entity property checks
	predicates["is_moving"] = set_json_encoder(Predicate(entity_properties({"movement": {"horizontal_speed": {"min": 0.1}}})))
	predicates["is_sneaking"] = set_json_encoder(Predicate(entity_properties({"flags": {"is_sneaking": True}})))
	predicates["has_vehicle"] = set_json_encoder(Predicate(entity_properties({"vehicle": {}})))
	predicates["has_vehicle_with_tag"] = set_json_encoder(Predicate(entity_properties({"vehicle": {"nbt": f"{{Tags:[\"{ns}.temp\"]}}"}})))
	predicates["has_passenger"] = set_json_encoder(Predicate(entity_properties({"passenger": {}})))
	predicates["has_player_passenger"] = set_json_encoder(Predicate(entity_properties({"passenger": {"entity_type": "minecraft:player"}})))
	predicates["have_temp_player_passenger"] = set_json_encoder(Predicate(entity_properties({"passenger": {"entity_type": "minecraft:player", "nbt": f"{{Tags:[\"{ns}.temp\"]}}"}})))
	predicates["nbt/enough_gravel"] = set_json_encoder(Predicate(entity_properties({"slots": {"hotbar.*": {"items": "minecraft:suspicious_gravel", "count": 42}}})))

	# Same-score checks (id / temp id / checkpoint / temp checkpoint)
	predicates["has_same_id"] = set_json_encoder(Predicate(same_score(f"{ns}.id", "#player_id", f"{ns}.id")))
	predicates["has_same_temp_id"] = set_json_encoder(Predicate(same_score(f"{ns}.temp.id", "#player_id", f"{ns}.temp.id")))
	predicates["has_same_checkpoint"] = set_json_encoder(Predicate(same_score(f"{ns}.checkpoint", "#checkpoint", f"{ns}.data")))
	predicates["has_same_temp_checkpoint"] = set_json_encoder(Predicate(same_score(f"{ns}.temp.checkpoint", "#checkpoint", f"{ns}.data")))
