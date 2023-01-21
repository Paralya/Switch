
#c1 = [33813,33873,34000,34000]
#divider = 2
#d = (c1[2] - c1[0]) / divider

#c = []
#for i in range(divider):
#    c.append([ round(c1[0] + d*i), c1[1], round(c1[0] + d*(i+1)), c1[3] ])

#y = 0
#minY = 100
#maxY = 189
#i = 20
#j = y
#while minY <= maxY:
#    z = 0
#    for k in c:
#        print('execute if score #regeneration_ticks switch.data matches '+str(i+z)+' run clone '+str(k[0])+' '+str(j)+' '+str(k[1])+' '+str(k[2])+' '+str(j)+' '+str(k[3])+' '+str(k[0])+' '+str(minY)+' '+str(k[1])+' replace force')
#        z += 2
#    i += 4
#    j += 1
#    minY += 1

scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 33813 33873 34000 34000

execute if score #regeneration_ticks switch.data matches 20 run clone 33813 0 33873 33906 0 34000 33813 100 33873 replace force
execute if score #regeneration_ticks switch.data matches 22 run clone 33906 0 33873 34000 0 34000 33906 100 33873 replace force
execute if score #regeneration_ticks switch.data matches 24 run clone 33813 1 33873 33906 1 34000 33813 101 33873 replace force
execute if score #regeneration_ticks switch.data matches 26 run clone 33906 1 33873 34000 1 34000 33906 101 33873 replace force
execute if score #regeneration_ticks switch.data matches 28 run clone 33813 2 33873 33906 2 34000 33813 102 33873 replace force
execute if score #regeneration_ticks switch.data matches 30 run clone 33906 2 33873 34000 2 34000 33906 102 33873 replace force
execute if score #regeneration_ticks switch.data matches 32 run clone 33813 3 33873 33906 3 34000 33813 103 33873 replace force
execute if score #regeneration_ticks switch.data matches 34 run clone 33906 3 33873 34000 3 34000 33906 103 33873 replace force
execute if score #regeneration_ticks switch.data matches 36 run clone 33813 4 33873 33906 4 34000 33813 104 33873 replace force
execute if score #regeneration_ticks switch.data matches 38 run clone 33906 4 33873 34000 4 34000 33906 104 33873 replace force
execute if score #regeneration_ticks switch.data matches 40 run clone 33813 5 33873 33906 5 34000 33813 105 33873 replace force
execute if score #regeneration_ticks switch.data matches 42 run clone 33906 5 33873 34000 5 34000 33906 105 33873 replace force
execute if score #regeneration_ticks switch.data matches 44 run clone 33813 6 33873 33906 6 34000 33813 106 33873 replace force
execute if score #regeneration_ticks switch.data matches 46 run clone 33906 6 33873 34000 6 34000 33906 106 33873 replace force
execute if score #regeneration_ticks switch.data matches 48 run clone 33813 7 33873 33906 7 34000 33813 107 33873 replace force
execute if score #regeneration_ticks switch.data matches 50 run clone 33906 7 33873 34000 7 34000 33906 107 33873 replace force
execute if score #regeneration_ticks switch.data matches 52 run clone 33813 8 33873 33906 8 34000 33813 108 33873 replace force
execute if score #regeneration_ticks switch.data matches 54 run clone 33906 8 33873 34000 8 34000 33906 108 33873 replace force
execute if score #regeneration_ticks switch.data matches 56 run clone 33813 9 33873 33906 9 34000 33813 109 33873 replace force
execute if score #regeneration_ticks switch.data matches 58 run clone 33906 9 33873 34000 9 34000 33906 109 33873 replace force
execute if score #regeneration_ticks switch.data matches 60 run clone 33813 10 33873 33906 10 34000 33813 110 33873 replace force
execute if score #regeneration_ticks switch.data matches 62 run clone 33906 10 33873 34000 10 34000 33906 110 33873 replace force
execute if score #regeneration_ticks switch.data matches 64 run clone 33813 11 33873 33906 11 34000 33813 111 33873 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 33906 11 33873 34000 11 34000 33906 111 33873 replace force
execute if score #regeneration_ticks switch.data matches 68 run clone 33813 12 33873 33906 12 34000 33813 112 33873 replace force
execute if score #regeneration_ticks switch.data matches 70 run clone 33906 12 33873 34000 12 34000 33906 112 33873 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 33813 13 33873 33906 13 34000 33813 113 33873 replace force
execute if score #regeneration_ticks switch.data matches 74 run clone 33906 13 33873 34000 13 34000 33906 113 33873 replace force
execute if score #regeneration_ticks switch.data matches 76 run clone 33813 14 33873 33906 14 34000 33813 114 33873 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 33906 14 33873 34000 14 34000 33906 114 33873 replace force
execute if score #regeneration_ticks switch.data matches 80 run clone 33813 15 33873 33906 15 34000 33813 115 33873 replace force
execute if score #regeneration_ticks switch.data matches 82 run clone 33906 15 33873 34000 15 34000 33906 115 33873 replace force
execute if score #regeneration_ticks switch.data matches 84 run clone 33813 16 33873 33906 16 34000 33813 116 33873 replace force
execute if score #regeneration_ticks switch.data matches 86 run clone 33906 16 33873 34000 16 34000 33906 116 33873 replace force
execute if score #regeneration_ticks switch.data matches 88 run clone 33813 17 33873 33906 17 34000 33813 117 33873 replace force
execute if score #regeneration_ticks switch.data matches 90 run clone 33906 17 33873 34000 17 34000 33906 117 33873 replace force
execute if score #regeneration_ticks switch.data matches 92 run clone 33813 18 33873 33906 18 34000 33813 118 33873 replace force
execute if score #regeneration_ticks switch.data matches 94 run clone 33906 18 33873 34000 18 34000 33906 118 33873 replace force
execute if score #regeneration_ticks switch.data matches 96 run clone 33813 19 33873 33906 19 34000 33813 119 33873 replace force
execute if score #regeneration_ticks switch.data matches 98 run clone 33906 19 33873 34000 19 34000 33906 119 33873 replace force
execute if score #regeneration_ticks switch.data matches 100 run clone 33813 20 33873 33906 20 34000 33813 120 33873 replace force
execute if score #regeneration_ticks switch.data matches 102 run clone 33906 20 33873 34000 20 34000 33906 120 33873 replace force
execute if score #regeneration_ticks switch.data matches 104 run clone 33813 21 33873 33906 21 34000 33813 121 33873 replace force
execute if score #regeneration_ticks switch.data matches 106 run clone 33906 21 33873 34000 21 34000 33906 121 33873 replace force
execute if score #regeneration_ticks switch.data matches 108 run clone 33813 22 33873 33906 22 34000 33813 122 33873 replace force
execute if score #regeneration_ticks switch.data matches 110 run clone 33906 22 33873 34000 22 34000 33906 122 33873 replace force
execute if score #regeneration_ticks switch.data matches 112 run clone 33813 23 33873 33906 23 34000 33813 123 33873 replace force
execute if score #regeneration_ticks switch.data matches 114 run clone 33906 23 33873 34000 23 34000 33906 123 33873 replace force
execute if score #regeneration_ticks switch.data matches 116 run clone 33813 24 33873 33906 24 34000 33813 124 33873 replace force
execute if score #regeneration_ticks switch.data matches 118 run clone 33906 24 33873 34000 24 34000 33906 124 33873 replace force
execute if score #regeneration_ticks switch.data matches 120 run clone 33813 25 33873 33906 25 34000 33813 125 33873 replace force
execute if score #regeneration_ticks switch.data matches 122 run clone 33906 25 33873 34000 25 34000 33906 125 33873 replace force
execute if score #regeneration_ticks switch.data matches 124 run clone 33813 26 33873 33906 26 34000 33813 126 33873 replace force
execute if score #regeneration_ticks switch.data matches 126 run clone 33906 26 33873 34000 26 34000 33906 126 33873 replace force
execute if score #regeneration_ticks switch.data matches 128 run clone 33813 27 33873 33906 27 34000 33813 127 33873 replace force
execute if score #regeneration_ticks switch.data matches 130 run clone 33906 27 33873 34000 27 34000 33906 127 33873 replace force
execute if score #regeneration_ticks switch.data matches 132 run clone 33813 28 33873 33906 28 34000 33813 128 33873 replace force
execute if score #regeneration_ticks switch.data matches 134 run clone 33906 28 33873 34000 28 34000 33906 128 33873 replace force
execute if score #regeneration_ticks switch.data matches 136 run clone 33813 29 33873 33906 29 34000 33813 129 33873 replace force
execute if score #regeneration_ticks switch.data matches 138 run clone 33906 29 33873 34000 29 34000 33906 129 33873 replace force
execute if score #regeneration_ticks switch.data matches 140 run clone 33813 30 33873 33906 30 34000 33813 130 33873 replace force
execute if score #regeneration_ticks switch.data matches 142 run clone 33906 30 33873 34000 30 34000 33906 130 33873 replace force
execute if score #regeneration_ticks switch.data matches 144 run clone 33813 31 33873 33906 31 34000 33813 131 33873 replace force
execute if score #regeneration_ticks switch.data matches 146 run clone 33906 31 33873 34000 31 34000 33906 131 33873 replace force
execute if score #regeneration_ticks switch.data matches 148 run clone 33813 32 33873 33906 32 34000 33813 132 33873 replace force
execute if score #regeneration_ticks switch.data matches 150 run clone 33906 32 33873 34000 32 34000 33906 132 33873 replace force
execute if score #regeneration_ticks switch.data matches 152 run clone 33813 33 33873 33906 33 34000 33813 133 33873 replace force
execute if score #regeneration_ticks switch.data matches 154 run clone 33906 33 33873 34000 33 34000 33906 133 33873 replace force
execute if score #regeneration_ticks switch.data matches 156 run clone 33813 34 33873 33906 34 34000 33813 134 33873 replace force
execute if score #regeneration_ticks switch.data matches 158 run clone 33906 34 33873 34000 34 34000 33906 134 33873 replace force
execute if score #regeneration_ticks switch.data matches 160 run clone 33813 35 33873 33906 35 34000 33813 135 33873 replace force
execute if score #regeneration_ticks switch.data matches 162 run clone 33906 35 33873 34000 35 34000 33906 135 33873 replace force
execute if score #regeneration_ticks switch.data matches 164 run clone 33813 36 33873 33906 36 34000 33813 136 33873 replace force
execute if score #regeneration_ticks switch.data matches 166 run clone 33906 36 33873 34000 36 34000 33906 136 33873 replace force
execute if score #regeneration_ticks switch.data matches 168 run clone 33813 37 33873 33906 37 34000 33813 137 33873 replace force
execute if score #regeneration_ticks switch.data matches 170 run clone 33906 37 33873 34000 37 34000 33906 137 33873 replace force
execute if score #regeneration_ticks switch.data matches 172 run clone 33813 38 33873 33906 38 34000 33813 138 33873 replace force
execute if score #regeneration_ticks switch.data matches 174 run clone 33906 38 33873 34000 38 34000 33906 138 33873 replace force
execute if score #regeneration_ticks switch.data matches 176 run clone 33813 39 33873 33906 39 34000 33813 139 33873 replace force
execute if score #regeneration_ticks switch.data matches 178 run clone 33906 39 33873 34000 39 34000 33906 139 33873 replace force
execute if score #regeneration_ticks switch.data matches 180 run clone 33813 40 33873 33906 40 34000 33813 140 33873 replace force
execute if score #regeneration_ticks switch.data matches 182 run clone 33906 40 33873 34000 40 34000 33906 140 33873 replace force
execute if score #regeneration_ticks switch.data matches 184 run clone 33813 41 33873 33906 41 34000 33813 141 33873 replace force
execute if score #regeneration_ticks switch.data matches 186 run clone 33906 41 33873 34000 41 34000 33906 141 33873 replace force
execute if score #regeneration_ticks switch.data matches 188 run clone 33813 42 33873 33906 42 34000 33813 142 33873 replace force
execute if score #regeneration_ticks switch.data matches 190 run clone 33906 42 33873 34000 42 34000 33906 142 33873 replace force
execute if score #regeneration_ticks switch.data matches 192 run clone 33813 43 33873 33906 43 34000 33813 143 33873 replace force
execute if score #regeneration_ticks switch.data matches 194 run clone 33906 43 33873 34000 43 34000 33906 143 33873 replace force
execute if score #regeneration_ticks switch.data matches 196 run clone 33813 44 33873 33906 44 34000 33813 144 33873 replace force
execute if score #regeneration_ticks switch.data matches 198 run clone 33906 44 33873 34000 44 34000 33906 144 33873 replace force
execute if score #regeneration_ticks switch.data matches 200 run clone 33813 45 33873 33906 45 34000 33813 145 33873 replace force
execute if score #regeneration_ticks switch.data matches 202 run clone 33906 45 33873 34000 45 34000 33906 145 33873 replace force
execute if score #regeneration_ticks switch.data matches 204 run clone 33813 46 33873 33906 46 34000 33813 146 33873 replace force
execute if score #regeneration_ticks switch.data matches 206 run clone 33906 46 33873 34000 46 34000 33906 146 33873 replace force
execute if score #regeneration_ticks switch.data matches 208 run clone 33813 47 33873 33906 47 34000 33813 147 33873 replace force
execute if score #regeneration_ticks switch.data matches 210 run clone 33906 47 33873 34000 47 34000 33906 147 33873 replace force
execute if score #regeneration_ticks switch.data matches 212 run clone 33813 48 33873 33906 48 34000 33813 148 33873 replace force
execute if score #regeneration_ticks switch.data matches 214 run clone 33906 48 33873 34000 48 34000 33906 148 33873 replace force
execute if score #regeneration_ticks switch.data matches 216 run clone 33813 49 33873 33906 49 34000 33813 149 33873 replace force
execute if score #regeneration_ticks switch.data matches 218 run clone 33906 49 33873 34000 49 34000 33906 149 33873 replace force
execute if score #regeneration_ticks switch.data matches 220 run clone 33813 50 33873 33906 50 34000 33813 150 33873 replace force
execute if score #regeneration_ticks switch.data matches 222 run clone 33906 50 33873 34000 50 34000 33906 150 33873 replace force
execute if score #regeneration_ticks switch.data matches 224 run clone 33813 51 33873 33906 51 34000 33813 151 33873 replace force
execute if score #regeneration_ticks switch.data matches 226 run clone 33906 51 33873 34000 51 34000 33906 151 33873 replace force
execute if score #regeneration_ticks switch.data matches 228 run clone 33813 52 33873 33906 52 34000 33813 152 33873 replace force
execute if score #regeneration_ticks switch.data matches 230 run clone 33906 52 33873 34000 52 34000 33906 152 33873 replace force
execute if score #regeneration_ticks switch.data matches 232 run clone 33813 53 33873 33906 53 34000 33813 153 33873 replace force
execute if score #regeneration_ticks switch.data matches 234 run clone 33906 53 33873 34000 53 34000 33906 153 33873 replace force
execute if score #regeneration_ticks switch.data matches 236 run clone 33813 54 33873 33906 54 34000 33813 154 33873 replace force
execute if score #regeneration_ticks switch.data matches 238 run clone 33906 54 33873 34000 54 34000 33906 154 33873 replace force
execute if score #regeneration_ticks switch.data matches 240 run clone 33813 55 33873 33906 55 34000 33813 155 33873 replace force
execute if score #regeneration_ticks switch.data matches 242 run clone 33906 55 33873 34000 55 34000 33906 155 33873 replace force
execute if score #regeneration_ticks switch.data matches 244 run clone 33813 56 33873 33906 56 34000 33813 156 33873 replace force
execute if score #regeneration_ticks switch.data matches 246 run clone 33906 56 33873 34000 56 34000 33906 156 33873 replace force
execute if score #regeneration_ticks switch.data matches 248 run clone 33813 57 33873 33906 57 34000 33813 157 33873 replace force
execute if score #regeneration_ticks switch.data matches 250 run clone 33906 57 33873 34000 57 34000 33906 157 33873 replace force
execute if score #regeneration_ticks switch.data matches 252 run clone 33813 58 33873 33906 58 34000 33813 158 33873 replace force
execute if score #regeneration_ticks switch.data matches 254 run clone 33906 58 33873 34000 58 34000 33906 158 33873 replace force
execute if score #regeneration_ticks switch.data matches 256 run clone 33813 59 33873 33906 59 34000 33813 159 33873 replace force
execute if score #regeneration_ticks switch.data matches 258 run clone 33906 59 33873 34000 59 34000 33906 159 33873 replace force
execute if score #regeneration_ticks switch.data matches 260 run clone 33813 60 33873 33906 60 34000 33813 160 33873 replace force
execute if score #regeneration_ticks switch.data matches 262 run clone 33906 60 33873 34000 60 34000 33906 160 33873 replace force
execute if score #regeneration_ticks switch.data matches 264 run clone 33813 61 33873 33906 61 34000 33813 161 33873 replace force
execute if score #regeneration_ticks switch.data matches 266 run clone 33906 61 33873 34000 61 34000 33906 161 33873 replace force
execute if score #regeneration_ticks switch.data matches 268 run clone 33813 62 33873 33906 62 34000 33813 162 33873 replace force
execute if score #regeneration_ticks switch.data matches 270 run clone 33906 62 33873 34000 62 34000 33906 162 33873 replace force
execute if score #regeneration_ticks switch.data matches 272 run clone 33813 63 33873 33906 63 34000 33813 163 33873 replace force
execute if score #regeneration_ticks switch.data matches 274 run clone 33906 63 33873 34000 63 34000 33906 163 33873 replace force
execute if score #regeneration_ticks switch.data matches 276 run clone 33813 64 33873 33906 64 34000 33813 164 33873 replace force
execute if score #regeneration_ticks switch.data matches 278 run clone 33906 64 33873 34000 64 34000 33906 164 33873 replace force
execute if score #regeneration_ticks switch.data matches 280 run clone 33813 65 33873 33906 65 34000 33813 165 33873 replace force
execute if score #regeneration_ticks switch.data matches 282 run clone 33906 65 33873 34000 65 34000 33906 165 33873 replace force
execute if score #regeneration_ticks switch.data matches 284 run clone 33813 66 33873 33906 66 34000 33813 166 33873 replace force
execute if score #regeneration_ticks switch.data matches 286 run clone 33906 66 33873 34000 66 34000 33906 166 33873 replace force
execute if score #regeneration_ticks switch.data matches 288 run clone 33813 67 33873 33906 67 34000 33813 167 33873 replace force
execute if score #regeneration_ticks switch.data matches 290 run clone 33906 67 33873 34000 67 34000 33906 167 33873 replace force
execute if score #regeneration_ticks switch.data matches 292 run clone 33813 68 33873 33906 68 34000 33813 168 33873 replace force
execute if score #regeneration_ticks switch.data matches 294 run clone 33906 68 33873 34000 68 34000 33906 168 33873 replace force
execute if score #regeneration_ticks switch.data matches 296 run clone 33813 69 33873 33906 69 34000 33813 169 33873 replace force
execute if score #regeneration_ticks switch.data matches 298 run clone 33906 69 33873 34000 69 34000 33906 169 33873 replace force
execute if score #regeneration_ticks switch.data matches 300 run clone 33813 70 33873 33906 70 34000 33813 170 33873 replace force
execute if score #regeneration_ticks switch.data matches 302 run clone 33906 70 33873 34000 70 34000 33906 170 33873 replace force
execute if score #regeneration_ticks switch.data matches 304 run clone 33813 71 33873 33906 71 34000 33813 171 33873 replace force
execute if score #regeneration_ticks switch.data matches 306 run clone 33906 71 33873 34000 71 34000 33906 171 33873 replace force
execute if score #regeneration_ticks switch.data matches 308 run clone 33813 72 33873 33906 72 34000 33813 172 33873 replace force
execute if score #regeneration_ticks switch.data matches 310 run clone 33906 72 33873 34000 72 34000 33906 172 33873 replace force
execute if score #regeneration_ticks switch.data matches 312 run clone 33813 73 33873 33906 73 34000 33813 173 33873 replace force
execute if score #regeneration_ticks switch.data matches 314 run clone 33906 73 33873 34000 73 34000 33906 173 33873 replace force
execute if score #regeneration_ticks switch.data matches 316 run clone 33813 74 33873 33906 74 34000 33813 174 33873 replace force
execute if score #regeneration_ticks switch.data matches 318 run clone 33906 74 33873 34000 74 34000 33906 174 33873 replace force
execute if score #regeneration_ticks switch.data matches 320 run clone 33813 75 33873 33906 75 34000 33813 175 33873 replace force
execute if score #regeneration_ticks switch.data matches 322 run clone 33906 75 33873 34000 75 34000 33906 175 33873 replace force
execute if score #regeneration_ticks switch.data matches 324 run clone 33813 76 33873 33906 76 34000 33813 176 33873 replace force
execute if score #regeneration_ticks switch.data matches 326 run clone 33906 76 33873 34000 76 34000 33906 176 33873 replace force
execute if score #regeneration_ticks switch.data matches 328 run clone 33813 77 33873 33906 77 34000 33813 177 33873 replace force
execute if score #regeneration_ticks switch.data matches 330 run clone 33906 77 33873 34000 77 34000 33906 177 33873 replace force
execute if score #regeneration_ticks switch.data matches 332 run clone 33813 78 33873 33906 78 34000 33813 178 33873 replace force
execute if score #regeneration_ticks switch.data matches 334 run clone 33906 78 33873 34000 78 34000 33906 178 33873 replace force
execute if score #regeneration_ticks switch.data matches 336 run clone 33813 79 33873 33906 79 34000 33813 179 33873 replace force
execute if score #regeneration_ticks switch.data matches 338 run clone 33906 79 33873 34000 79 34000 33906 179 33873 replace force
execute if score #regeneration_ticks switch.data matches 340 run clone 33813 80 33873 33906 80 34000 33813 180 33873 replace force
execute if score #regeneration_ticks switch.data matches 342 run clone 33906 80 33873 34000 80 34000 33906 180 33873 replace force
execute if score #regeneration_ticks switch.data matches 344 run clone 33813 81 33873 33906 81 34000 33813 181 33873 replace force
execute if score #regeneration_ticks switch.data matches 346 run clone 33906 81 33873 34000 81 34000 33906 181 33873 replace force
execute if score #regeneration_ticks switch.data matches 348 run clone 33813 82 33873 33906 82 34000 33813 182 33873 replace force
execute if score #regeneration_ticks switch.data matches 350 run clone 33906 82 33873 34000 82 34000 33906 182 33873 replace force
execute if score #regeneration_ticks switch.data matches 352 run clone 33813 83 33873 33906 83 34000 33813 183 33873 replace force
execute if score #regeneration_ticks switch.data matches 354 run clone 33906 83 33873 34000 83 34000 33906 183 33873 replace force
execute if score #regeneration_ticks switch.data matches 356 run clone 33813 84 33873 33906 84 34000 33813 184 33873 replace force
execute if score #regeneration_ticks switch.data matches 358 run clone 33906 84 33873 34000 84 34000 33906 184 33873 replace force
execute if score #regeneration_ticks switch.data matches 360 run clone 33813 85 33873 33906 85 34000 33813 185 33873 replace force
execute if score #regeneration_ticks switch.data matches 362 run clone 33906 85 33873 34000 85 34000 33906 185 33873 replace force
execute if score #regeneration_ticks switch.data matches 364 run clone 33813 86 33873 33906 86 34000 33813 186 33873 replace force
execute if score #regeneration_ticks switch.data matches 366 run clone 33906 86 33873 34000 86 34000 33906 186 33873 replace force
execute if score #regeneration_ticks switch.data matches 368 run clone 33813 87 33873 33906 87 34000 33813 187 33873 replace force
execute if score #regeneration_ticks switch.data matches 370 run clone 33906 87 33873 34000 87 34000 33906 187 33873 replace force
execute if score #regeneration_ticks switch.data matches 372 run clone 33813 88 33873 33906 88 34000 33813 188 33873 replace force
execute if score #regeneration_ticks switch.data matches 374 run clone 33906 88 33873 34000 88 34000 33906 188 33873 replace force
execute if score #regeneration_ticks switch.data matches 376 run clone 33813 89 33873 33906 89 34000 33813 189 33873 replace force
execute if score #regeneration_ticks switch.data matches 378 run clone 33906 89 33873 34000 89 34000 33906 189 33873 replace force

execute if score #regeneration_ticks switch.data matches 378 run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 378 run forceload remove 33813 33873 34000 34000
execute if score #regeneration_ticks switch.data matches 378 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/regenerate 1t

