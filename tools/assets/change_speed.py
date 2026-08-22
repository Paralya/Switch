
# Imports
import sys

import stouputils as stp
from mido import Message, MidiFile, MidiTrack

# Constants
ROOT: str = stp.get_root_path(__file__)
MIDI_FOLDER: str = f"{ROOT}/midi_files"


# Main function
def main(input_path: str, speed_factor: float) -> None:
	""" Process a MIDI file to change its speed.

	Args:
		input_path (str): Path to the input MIDI file
		speed_factor (float): Factor to slow down or speed up the MIDI file

	Returns:
		None
	"""
	# Load MIDI file
	mid: MidiFile = MidiFile(f"{MIDI_FOLDER}/{input_path}")
	new_mid: MidiFile = MidiFile(ticks_per_beat=mid.ticks_per_beat)

	# Scale delta times
	for track in mid.tracks:
		new_track: MidiTrack = MidiTrack()
		for msg in track:
			msg: Message
			new_msg: Message = msg.copy(time=int(msg.time / speed_factor))
			new_track.append(new_msg)
		new_mid.tracks.append(new_track)

	# Output path
	output_path: str = input_path.replace(".mid", f"_x{speed_factor}.mid")

	# Save the slowed down version
	new_mid.save(f"{MIDI_FOLDER}/{output_path}")


# Main entry point
if __name__ == "__main__":
	if len(sys.argv) > 2:
		input_path: str = sys.argv[1]
		speed_factor: float = float(sys.argv[2])
	else:
		stp.warning("Usage: python change_speed.py <input_midi_file> <speed_factor>")
		sys.exit(1)
	main(input_path, speed_factor)

