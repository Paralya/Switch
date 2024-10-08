
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
		f.write(f"particle dust{{color:[0.0,1.0,0.0],scale:1.0}} ~{round(x, 5)} ~ ~{round(z, 5)} 0 0 0 0 5 force\n")
	f.write(f"""particle dust{{color:[0.0,0.75,0.0],scale:2.0}} ~ ~ ~ 2 0 2 0 10 force

# Sound & glowing
playsound block.note_block.harp ambient @a[distance=..50] ~ ~ ~ 1 1 1
effect give @a[tag=!detached,gamemode=adventure,distance=..3] glowing 1 0 true

""")

