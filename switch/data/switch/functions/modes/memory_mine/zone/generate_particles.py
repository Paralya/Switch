
## Python program that generates a circle of particles in Minecraft in Plan (x,z)
# Imports
import math

# Constants
radius = 3
N_points = 100

# On file
with open("particles.mcfunction", "w") as f:
	f.write("\n")
	f.write("# Particles\n")
	for i in range(N_points):
		theta = i * 2 * math.pi / N_points
		x = radius * math.cos(theta)
		z = radius * math.sin(theta)
		f.write(f"particle dust 0 1 0 1 ~{round(x, 5)} ~ ~{round(z, 5)} 0 0 0 0 1 force @a[distance=..50]\n")
	f.write("\n")

