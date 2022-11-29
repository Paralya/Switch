
#c1 = [33766,33717,34000,34000]
#divider = 3
#d = (c1[2] - c1[0]) / divider
#
#c = []
#for i in range(divider):
#    c.append([ round(c1[0] + d*i), c1[1], round(c1[0] + d*(i+1)), c1[3] ])
#
#y = 0
#minY = 100
#maxY = 195
#i = 30
#j = y
#while minY <= maxY:
#
#    for k in c:
#        print('execute if score #regeneration_ticks switch.data matches '+str(i)+' run clone '+str(k[0])+' '+str(j)+' '+str(k[1])+' '+str(k[2])+' '+str(j)+' '+str(k[3])+' '+str(k[0])+' '+str(minY)+' '+str(k[1])+' replace force')
#    i += 3
#    j += 1
#    minY += 1

scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 33766 33717 33859 34000
execute if score #regeneration_ticks switch.data matches 1 run forceload add 33859 33717 34000 34000

execute if score #regeneration_ticks switch.data matches 60 run clone 33766 0 33717 33844 0 34000 33766 100 33717 replace force
execute if score #regeneration_ticks switch.data matches 62 run clone 33844 0 33717 33922 0 34000 33844 100 33717 replace force
execute if score #regeneration_ticks switch.data matches 64 run clone 33922 0 33717 34000 0 34000 33922 100 33717 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 33766 1 33717 33844 1 34000 33766 101 33717 replace force
execute if score #regeneration_ticks switch.data matches 68 run clone 33844 1 33717 33922 1 34000 33844 101 33717 replace force
execute if score #regeneration_ticks switch.data matches 70 run clone 33922 1 33717 34000 1 34000 33922 101 33717 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 33766 2 33717 33844 2 34000 33766 102 33717 replace force
execute if score #regeneration_ticks switch.data matches 74 run clone 33844 2 33717 33922 2 34000 33844 102 33717 replace force
execute if score #regeneration_ticks switch.data matches 76 run clone 33922 2 33717 34000 2 34000 33922 102 33717 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 33766 3 33717 33844 3 34000 33766 103 33717 replace force
execute if score #regeneration_ticks switch.data matches 80 run clone 33844 3 33717 33922 3 34000 33844 103 33717 replace force
execute if score #regeneration_ticks switch.data matches 82 run clone 33922 3 33717 34000 3 34000 33922 103 33717 replace force
execute if score #regeneration_ticks switch.data matches 84 run clone 33766 4 33717 33844 4 34000 33766 104 33717 replace force
execute if score #regeneration_ticks switch.data matches 86 run clone 33844 4 33717 33922 4 34000 33844 104 33717 replace force
execute if score #regeneration_ticks switch.data matches 88 run clone 33922 4 33717 34000 4 34000 33922 104 33717 replace force
execute if score #regeneration_ticks switch.data matches 90 run clone 33766 5 33717 33844 5 34000 33766 105 33717 replace force
execute if score #regeneration_ticks switch.data matches 92 run clone 33844 5 33717 33922 5 34000 33844 105 33717 replace force
execute if score #regeneration_ticks switch.data matches 94 run clone 33922 5 33717 34000 5 34000 33922 105 33717 replace force
execute if score #regeneration_ticks switch.data matches 96 run clone 33766 6 33717 33844 6 34000 33766 106 33717 replace force
execute if score #regeneration_ticks switch.data matches 98 run clone 33844 6 33717 33922 6 34000 33844 106 33717 replace force
execute if score #regeneration_ticks switch.data matches 100 run clone 33922 6 33717 34000 6 34000 33922 106 33717 replace force
execute if score #regeneration_ticks switch.data matches 102 run clone 33766 7 33717 33844 7 34000 33766 107 33717 replace force
execute if score #regeneration_ticks switch.data matches 104 run clone 33844 7 33717 33922 7 34000 33844 107 33717 replace force
execute if score #regeneration_ticks switch.data matches 106 run clone 33922 7 33717 34000 7 34000 33922 107 33717 replace force
execute if score #regeneration_ticks switch.data matches 108 run clone 33766 8 33717 33844 8 34000 33766 108 33717 replace force
execute if score #regeneration_ticks switch.data matches 110 run clone 33844 8 33717 33922 8 34000 33844 108 33717 replace force
execute if score #regeneration_ticks switch.data matches 112 run clone 33922 8 33717 34000 8 34000 33922 108 33717 replace force
execute if score #regeneration_ticks switch.data matches 114 run clone 33766 9 33717 33844 9 34000 33766 109 33717 replace force
execute if score #regeneration_ticks switch.data matches 116 run clone 33844 9 33717 33922 9 34000 33844 109 33717 replace force
execute if score #regeneration_ticks switch.data matches 118 run clone 33922 9 33717 34000 9 34000 33922 109 33717 replace force
execute if score #regeneration_ticks switch.data matches 120 run clone 33766 10 33717 33844 10 34000 33766 110 33717 replace force
execute if score #regeneration_ticks switch.data matches 122 run clone 33844 10 33717 33922 10 34000 33844 110 33717 replace force
execute if score #regeneration_ticks switch.data matches 124 run clone 33922 10 33717 34000 10 34000 33922 110 33717 replace force
execute if score #regeneration_ticks switch.data matches 126 run clone 33766 11 33717 33844 11 34000 33766 111 33717 replace force
execute if score #regeneration_ticks switch.data matches 128 run clone 33844 11 33717 33922 11 34000 33844 111 33717 replace force
execute if score #regeneration_ticks switch.data matches 130 run clone 33922 11 33717 34000 11 34000 33922 111 33717 replace force
execute if score #regeneration_ticks switch.data matches 132 run clone 33766 12 33717 33844 12 34000 33766 112 33717 replace force
execute if score #regeneration_ticks switch.data matches 134 run clone 33844 12 33717 33922 12 34000 33844 112 33717 replace force
execute if score #regeneration_ticks switch.data matches 136 run clone 33922 12 33717 34000 12 34000 33922 112 33717 replace force
execute if score #regeneration_ticks switch.data matches 138 run clone 33766 13 33717 33844 13 34000 33766 113 33717 replace force
execute if score #regeneration_ticks switch.data matches 140 run clone 33844 13 33717 33922 13 34000 33844 113 33717 replace force
execute if score #regeneration_ticks switch.data matches 142 run clone 33922 13 33717 34000 13 34000 33922 113 33717 replace force
execute if score #regeneration_ticks switch.data matches 144 run clone 33766 14 33717 33844 14 34000 33766 114 33717 replace force
execute if score #regeneration_ticks switch.data matches 146 run clone 33844 14 33717 33922 14 34000 33844 114 33717 replace force
execute if score #regeneration_ticks switch.data matches 148 run clone 33922 14 33717 34000 14 34000 33922 114 33717 replace force
execute if score #regeneration_ticks switch.data matches 150 run clone 33766 15 33717 33844 15 34000 33766 115 33717 replace force
execute if score #regeneration_ticks switch.data matches 152 run clone 33844 15 33717 33922 15 34000 33844 115 33717 replace force
execute if score #regeneration_ticks switch.data matches 154 run clone 33922 15 33717 34000 15 34000 33922 115 33717 replace force
execute if score #regeneration_ticks switch.data matches 156 run clone 33766 16 33717 33844 16 34000 33766 116 33717 replace force
execute if score #regeneration_ticks switch.data matches 158 run clone 33844 16 33717 33922 16 34000 33844 116 33717 replace force
execute if score #regeneration_ticks switch.data matches 160 run clone 33922 16 33717 34000 16 34000 33922 116 33717 replace force
execute if score #regeneration_ticks switch.data matches 162 run clone 33766 17 33717 33844 17 34000 33766 117 33717 replace force
execute if score #regeneration_ticks switch.data matches 164 run clone 33844 17 33717 33922 17 34000 33844 117 33717 replace force
execute if score #regeneration_ticks switch.data matches 166 run clone 33922 17 33717 34000 17 34000 33922 117 33717 replace force
execute if score #regeneration_ticks switch.data matches 168 run clone 33766 18 33717 33844 18 34000 33766 118 33717 replace force
execute if score #regeneration_ticks switch.data matches 170 run clone 33844 18 33717 33922 18 34000 33844 118 33717 replace force
execute if score #regeneration_ticks switch.data matches 172 run clone 33922 18 33717 34000 18 34000 33922 118 33717 replace force
execute if score #regeneration_ticks switch.data matches 174 run clone 33766 19 33717 33844 19 34000 33766 119 33717 replace force
execute if score #regeneration_ticks switch.data matches 176 run clone 33844 19 33717 33922 19 34000 33844 119 33717 replace force
execute if score #regeneration_ticks switch.data matches 178 run clone 33922 19 33717 34000 19 34000 33922 119 33717 replace force
execute if score #regeneration_ticks switch.data matches 180 run clone 33766 20 33717 33844 20 34000 33766 120 33717 replace force
execute if score #regeneration_ticks switch.data matches 182 run clone 33844 20 33717 33922 20 34000 33844 120 33717 replace force
execute if score #regeneration_ticks switch.data matches 184 run clone 33922 20 33717 34000 20 34000 33922 120 33717 replace force
execute if score #regeneration_ticks switch.data matches 186 run clone 33766 21 33717 33844 21 34000 33766 121 33717 replace force
execute if score #regeneration_ticks switch.data matches 188 run clone 33844 21 33717 33922 21 34000 33844 121 33717 replace force
execute if score #regeneration_ticks switch.data matches 190 run clone 33922 21 33717 34000 21 34000 33922 121 33717 replace force
execute if score #regeneration_ticks switch.data matches 192 run clone 33766 22 33717 33844 22 34000 33766 122 33717 replace force
execute if score #regeneration_ticks switch.data matches 194 run clone 33844 22 33717 33922 22 34000 33844 122 33717 replace force
execute if score #regeneration_ticks switch.data matches 196 run clone 33922 22 33717 34000 22 34000 33922 122 33717 replace force
execute if score #regeneration_ticks switch.data matches 198 run clone 33766 23 33717 33844 23 34000 33766 123 33717 replace force
execute if score #regeneration_ticks switch.data matches 200 run clone 33844 23 33717 33922 23 34000 33844 123 33717 replace force
execute if score #regeneration_ticks switch.data matches 202 run clone 33922 23 33717 34000 23 34000 33922 123 33717 replace force
execute if score #regeneration_ticks switch.data matches 204 run clone 33766 24 33717 33844 24 34000 33766 124 33717 replace force
execute if score #regeneration_ticks switch.data matches 206 run clone 33844 24 33717 33922 24 34000 33844 124 33717 replace force
execute if score #regeneration_ticks switch.data matches 208 run clone 33922 24 33717 34000 24 34000 33922 124 33717 replace force
execute if score #regeneration_ticks switch.data matches 210 run clone 33766 25 33717 33844 25 34000 33766 125 33717 replace force
execute if score #regeneration_ticks switch.data matches 212 run clone 33844 25 33717 33922 25 34000 33844 125 33717 replace force
execute if score #regeneration_ticks switch.data matches 214 run clone 33922 25 33717 34000 25 34000 33922 125 33717 replace force
execute if score #regeneration_ticks switch.data matches 216 run clone 33766 26 33717 33844 26 34000 33766 126 33717 replace force
execute if score #regeneration_ticks switch.data matches 218 run clone 33844 26 33717 33922 26 34000 33844 126 33717 replace force
execute if score #regeneration_ticks switch.data matches 220 run clone 33922 26 33717 34000 26 34000 33922 126 33717 replace force
execute if score #regeneration_ticks switch.data matches 222 run clone 33766 27 33717 33844 27 34000 33766 127 33717 replace force
execute if score #regeneration_ticks switch.data matches 224 run clone 33844 27 33717 33922 27 34000 33844 127 33717 replace force
execute if score #regeneration_ticks switch.data matches 226 run clone 33922 27 33717 34000 27 34000 33922 127 33717 replace force
execute if score #regeneration_ticks switch.data matches 228 run clone 33766 28 33717 33844 28 34000 33766 128 33717 replace force
execute if score #regeneration_ticks switch.data matches 230 run clone 33844 28 33717 33922 28 34000 33844 128 33717 replace force
execute if score #regeneration_ticks switch.data matches 232 run clone 33922 28 33717 34000 28 34000 33922 128 33717 replace force
execute if score #regeneration_ticks switch.data matches 234 run clone 33766 29 33717 33844 29 34000 33766 129 33717 replace force
execute if score #regeneration_ticks switch.data matches 236 run clone 33844 29 33717 33922 29 34000 33844 129 33717 replace force
execute if score #regeneration_ticks switch.data matches 238 run clone 33922 29 33717 34000 29 34000 33922 129 33717 replace force
execute if score #regeneration_ticks switch.data matches 240 run clone 33766 30 33717 33844 30 34000 33766 130 33717 replace force
execute if score #regeneration_ticks switch.data matches 242 run clone 33844 30 33717 33922 30 34000 33844 130 33717 replace force
execute if score #regeneration_ticks switch.data matches 244 run clone 33922 30 33717 34000 30 34000 33922 130 33717 replace force
execute if score #regeneration_ticks switch.data matches 246 run clone 33766 31 33717 33844 31 34000 33766 131 33717 replace force
execute if score #regeneration_ticks switch.data matches 248 run clone 33844 31 33717 33922 31 34000 33844 131 33717 replace force
execute if score #regeneration_ticks switch.data matches 250 run clone 33922 31 33717 34000 31 34000 33922 131 33717 replace force
execute if score #regeneration_ticks switch.data matches 252 run clone 33766 32 33717 33844 32 34000 33766 132 33717 replace force
execute if score #regeneration_ticks switch.data matches 254 run clone 33844 32 33717 33922 32 34000 33844 132 33717 replace force
execute if score #regeneration_ticks switch.data matches 256 run clone 33922 32 33717 34000 32 34000 33922 132 33717 replace force
execute if score #regeneration_ticks switch.data matches 258 run clone 33766 33 33717 33844 33 34000 33766 133 33717 replace force
execute if score #regeneration_ticks switch.data matches 260 run clone 33844 33 33717 33922 33 34000 33844 133 33717 replace force
execute if score #regeneration_ticks switch.data matches 262 run clone 33922 33 33717 34000 33 34000 33922 133 33717 replace force
execute if score #regeneration_ticks switch.data matches 264 run clone 33766 34 33717 33844 34 34000 33766 134 33717 replace force
execute if score #regeneration_ticks switch.data matches 266 run clone 33844 34 33717 33922 34 34000 33844 134 33717 replace force
execute if score #regeneration_ticks switch.data matches 268 run clone 33922 34 33717 34000 34 34000 33922 134 33717 replace force
execute if score #regeneration_ticks switch.data matches 270 run clone 33766 35 33717 33844 35 34000 33766 135 33717 replace force
execute if score #regeneration_ticks switch.data matches 272 run clone 33844 35 33717 33922 35 34000 33844 135 33717 replace force
execute if score #regeneration_ticks switch.data matches 274 run clone 33922 35 33717 34000 35 34000 33922 135 33717 replace force
execute if score #regeneration_ticks switch.data matches 276 run clone 33766 36 33717 33844 36 34000 33766 136 33717 replace force
execute if score #regeneration_ticks switch.data matches 278 run clone 33844 36 33717 33922 36 34000 33844 136 33717 replace force
execute if score #regeneration_ticks switch.data matches 280 run clone 33922 36 33717 34000 36 34000 33922 136 33717 replace force
execute if score #regeneration_ticks switch.data matches 282 run clone 33766 37 33717 33844 37 34000 33766 137 33717 replace force
execute if score #regeneration_ticks switch.data matches 284 run clone 33844 37 33717 33922 37 34000 33844 137 33717 replace force
execute if score #regeneration_ticks switch.data matches 286 run clone 33922 37 33717 34000 37 34000 33922 137 33717 replace force
execute if score #regeneration_ticks switch.data matches 288 run clone 33766 38 33717 33844 38 34000 33766 138 33717 replace force
execute if score #regeneration_ticks switch.data matches 290 run clone 33844 38 33717 33922 38 34000 33844 138 33717 replace force
execute if score #regeneration_ticks switch.data matches 292 run clone 33922 38 33717 34000 38 34000 33922 138 33717 replace force
execute if score #regeneration_ticks switch.data matches 294 run clone 33766 39 33717 33844 39 34000 33766 139 33717 replace force
execute if score #regeneration_ticks switch.data matches 296 run clone 33844 39 33717 33922 39 34000 33844 139 33717 replace force
execute if score #regeneration_ticks switch.data matches 298 run clone 33922 39 33717 34000 39 34000 33922 139 33717 replace force
execute if score #regeneration_ticks switch.data matches 300 run clone 33766 40 33717 33844 40 34000 33766 140 33717 replace force
execute if score #regeneration_ticks switch.data matches 302 run clone 33844 40 33717 33922 40 34000 33844 140 33717 replace force
execute if score #regeneration_ticks switch.data matches 304 run clone 33922 40 33717 34000 40 34000 33922 140 33717 replace force
execute if score #regeneration_ticks switch.data matches 306 run clone 33766 41 33717 33844 41 34000 33766 141 33717 replace force
execute if score #regeneration_ticks switch.data matches 308 run clone 33844 41 33717 33922 41 34000 33844 141 33717 replace force
execute if score #regeneration_ticks switch.data matches 310 run clone 33922 41 33717 34000 41 34000 33922 141 33717 replace force
execute if score #regeneration_ticks switch.data matches 312 run clone 33766 42 33717 33844 42 34000 33766 142 33717 replace force
execute if score #regeneration_ticks switch.data matches 314 run clone 33844 42 33717 33922 42 34000 33844 142 33717 replace force
execute if score #regeneration_ticks switch.data matches 316 run clone 33922 42 33717 34000 42 34000 33922 142 33717 replace force
execute if score #regeneration_ticks switch.data matches 318 run clone 33766 43 33717 33844 43 34000 33766 143 33717 replace force
execute if score #regeneration_ticks switch.data matches 320 run clone 33844 43 33717 33922 43 34000 33844 143 33717 replace force
execute if score #regeneration_ticks switch.data matches 322 run clone 33922 43 33717 34000 43 34000 33922 143 33717 replace force
execute if score #regeneration_ticks switch.data matches 324 run clone 33766 44 33717 33844 44 34000 33766 144 33717 replace force
execute if score #regeneration_ticks switch.data matches 326 run clone 33844 44 33717 33922 44 34000 33844 144 33717 replace force
execute if score #regeneration_ticks switch.data matches 328 run clone 33922 44 33717 34000 44 34000 33922 144 33717 replace force
execute if score #regeneration_ticks switch.data matches 330 run clone 33766 45 33717 33844 45 34000 33766 145 33717 replace force
execute if score #regeneration_ticks switch.data matches 332 run clone 33844 45 33717 33922 45 34000 33844 145 33717 replace force
execute if score #regeneration_ticks switch.data matches 334 run clone 33922 45 33717 34000 45 34000 33922 145 33717 replace force
execute if score #regeneration_ticks switch.data matches 336 run clone 33766 46 33717 33844 46 34000 33766 146 33717 replace force
execute if score #regeneration_ticks switch.data matches 338 run clone 33844 46 33717 33922 46 34000 33844 146 33717 replace force
execute if score #regeneration_ticks switch.data matches 340 run clone 33922 46 33717 34000 46 34000 33922 146 33717 replace force
execute if score #regeneration_ticks switch.data matches 342 run clone 33766 47 33717 33844 47 34000 33766 147 33717 replace force
execute if score #regeneration_ticks switch.data matches 344 run clone 33844 47 33717 33922 47 34000 33844 147 33717 replace force
execute if score #regeneration_ticks switch.data matches 346 run clone 33922 47 33717 34000 47 34000 33922 147 33717 replace force
execute if score #regeneration_ticks switch.data matches 348 run clone 33766 48 33717 33844 48 34000 33766 148 33717 replace force
execute if score #regeneration_ticks switch.data matches 350 run clone 33844 48 33717 33922 48 34000 33844 148 33717 replace force
execute if score #regeneration_ticks switch.data matches 352 run clone 33922 48 33717 34000 48 34000 33922 148 33717 replace force
execute if score #regeneration_ticks switch.data matches 354 run clone 33766 49 33717 33844 49 34000 33766 149 33717 replace force
execute if score #regeneration_ticks switch.data matches 356 run clone 33844 49 33717 33922 49 34000 33844 149 33717 replace force
execute if score #regeneration_ticks switch.data matches 358 run clone 33922 49 33717 34000 49 34000 33922 149 33717 replace force
execute if score #regeneration_ticks switch.data matches 360 run clone 33766 50 33717 33844 50 34000 33766 150 33717 replace force
execute if score #regeneration_ticks switch.data matches 362 run clone 33844 50 33717 33922 50 34000 33844 150 33717 replace force
execute if score #regeneration_ticks switch.data matches 364 run clone 33922 50 33717 34000 50 34000 33922 150 33717 replace force
execute if score #regeneration_ticks switch.data matches 366 run clone 33766 51 33717 33844 51 34000 33766 151 33717 replace force
execute if score #regeneration_ticks switch.data matches 368 run clone 33844 51 33717 33922 51 34000 33844 151 33717 replace force
execute if score #regeneration_ticks switch.data matches 370 run clone 33922 51 33717 34000 51 34000 33922 151 33717 replace force
execute if score #regeneration_ticks switch.data matches 372 run clone 33766 52 33717 33844 52 34000 33766 152 33717 replace force
execute if score #regeneration_ticks switch.data matches 374 run clone 33844 52 33717 33922 52 34000 33844 152 33717 replace force
execute if score #regeneration_ticks switch.data matches 376 run clone 33922 52 33717 34000 52 34000 33922 152 33717 replace force
execute if score #regeneration_ticks switch.data matches 378 run clone 33766 53 33717 33844 53 34000 33766 153 33717 replace force
execute if score #regeneration_ticks switch.data matches 380 run clone 33844 53 33717 33922 53 34000 33844 153 33717 replace force
execute if score #regeneration_ticks switch.data matches 382 run clone 33922 53 33717 34000 53 34000 33922 153 33717 replace force
execute if score #regeneration_ticks switch.data matches 384 run clone 33766 54 33717 33844 54 34000 33766 154 33717 replace force
execute if score #regeneration_ticks switch.data matches 386 run clone 33844 54 33717 33922 54 34000 33844 154 33717 replace force
execute if score #regeneration_ticks switch.data matches 388 run clone 33922 54 33717 34000 54 34000 33922 154 33717 replace force
execute if score #regeneration_ticks switch.data matches 390 run clone 33766 55 33717 33844 55 34000 33766 155 33717 replace force
execute if score #regeneration_ticks switch.data matches 392 run clone 33844 55 33717 33922 55 34000 33844 155 33717 replace force
execute if score #regeneration_ticks switch.data matches 394 run clone 33922 55 33717 34000 55 34000 33922 155 33717 replace force
execute if score #regeneration_ticks switch.data matches 396 run clone 33766 56 33717 33844 56 34000 33766 156 33717 replace force
execute if score #regeneration_ticks switch.data matches 398 run clone 33844 56 33717 33922 56 34000 33844 156 33717 replace force
execute if score #regeneration_ticks switch.data matches 400 run clone 33922 56 33717 34000 56 34000 33922 156 33717 replace force
execute if score #regeneration_ticks switch.data matches 402 run clone 33766 57 33717 33844 57 34000 33766 157 33717 replace force
execute if score #regeneration_ticks switch.data matches 404 run clone 33844 57 33717 33922 57 34000 33844 157 33717 replace force
execute if score #regeneration_ticks switch.data matches 406 run clone 33922 57 33717 34000 57 34000 33922 157 33717 replace force
execute if score #regeneration_ticks switch.data matches 408 run clone 33766 58 33717 33844 58 34000 33766 158 33717 replace force
execute if score #regeneration_ticks switch.data matches 410 run clone 33844 58 33717 33922 58 34000 33844 158 33717 replace force
execute if score #regeneration_ticks switch.data matches 412 run clone 33922 58 33717 34000 58 34000 33922 158 33717 replace force
execute if score #regeneration_ticks switch.data matches 414 run clone 33766 59 33717 33844 59 34000 33766 159 33717 replace force
execute if score #regeneration_ticks switch.data matches 416 run clone 33844 59 33717 33922 59 34000 33844 159 33717 replace force
execute if score #regeneration_ticks switch.data matches 418 run clone 33922 59 33717 34000 59 34000 33922 159 33717 replace force
execute if score #regeneration_ticks switch.data matches 420 run clone 33766 60 33717 33844 60 34000 33766 160 33717 replace force
execute if score #regeneration_ticks switch.data matches 422 run clone 33844 60 33717 33922 60 34000 33844 160 33717 replace force
execute if score #regeneration_ticks switch.data matches 424 run clone 33922 60 33717 34000 60 34000 33922 160 33717 replace force
execute if score #regeneration_ticks switch.data matches 426 run clone 33766 61 33717 33844 61 34000 33766 161 33717 replace force
execute if score #regeneration_ticks switch.data matches 428 run clone 33844 61 33717 33922 61 34000 33844 161 33717 replace force
execute if score #regeneration_ticks switch.data matches 430 run clone 33922 61 33717 34000 61 34000 33922 161 33717 replace force
execute if score #regeneration_ticks switch.data matches 432 run clone 33766 62 33717 33844 62 34000 33766 162 33717 replace force
execute if score #regeneration_ticks switch.data matches 434 run clone 33844 62 33717 33922 62 34000 33844 162 33717 replace force
execute if score #regeneration_ticks switch.data matches 436 run clone 33922 62 33717 34000 62 34000 33922 162 33717 replace force
execute if score #regeneration_ticks switch.data matches 438 run clone 33766 63 33717 33844 63 34000 33766 163 33717 replace force
execute if score #regeneration_ticks switch.data matches 440 run clone 33844 63 33717 33922 63 34000 33844 163 33717 replace force
execute if score #regeneration_ticks switch.data matches 442 run clone 33922 63 33717 34000 63 34000 33922 163 33717 replace force
execute if score #regeneration_ticks switch.data matches 444 run clone 33766 64 33717 33844 64 34000 33766 164 33717 replace force
execute if score #regeneration_ticks switch.data matches 446 run clone 33844 64 33717 33922 64 34000 33844 164 33717 replace force
execute if score #regeneration_ticks switch.data matches 448 run clone 33922 64 33717 34000 64 34000 33922 164 33717 replace force
execute if score #regeneration_ticks switch.data matches 450 run clone 33766 65 33717 33844 65 34000 33766 165 33717 replace force
execute if score #regeneration_ticks switch.data matches 452 run clone 33844 65 33717 33922 65 34000 33844 165 33717 replace force
execute if score #regeneration_ticks switch.data matches 454 run clone 33922 65 33717 34000 65 34000 33922 165 33717 replace force
execute if score #regeneration_ticks switch.data matches 456 run clone 33766 66 33717 33844 66 34000 33766 166 33717 replace force
execute if score #regeneration_ticks switch.data matches 458 run clone 33844 66 33717 33922 66 34000 33844 166 33717 replace force
execute if score #regeneration_ticks switch.data matches 460 run clone 33922 66 33717 34000 66 34000 33922 166 33717 replace force
execute if score #regeneration_ticks switch.data matches 462 run clone 33766 67 33717 33844 67 34000 33766 167 33717 replace force
execute if score #regeneration_ticks switch.data matches 464 run clone 33844 67 33717 33922 67 34000 33844 167 33717 replace force
execute if score #regeneration_ticks switch.data matches 466 run clone 33922 67 33717 34000 67 34000 33922 167 33717 replace force
execute if score #regeneration_ticks switch.data matches 468 run clone 33766 68 33717 33844 68 34000 33766 168 33717 replace force
execute if score #regeneration_ticks switch.data matches 470 run clone 33844 68 33717 33922 68 34000 33844 168 33717 replace force
execute if score #regeneration_ticks switch.data matches 472 run clone 33922 68 33717 34000 68 34000 33922 168 33717 replace force
execute if score #regeneration_ticks switch.data matches 474 run clone 33766 69 33717 33844 69 34000 33766 169 33717 replace force
execute if score #regeneration_ticks switch.data matches 476 run clone 33844 69 33717 33922 69 34000 33844 169 33717 replace force
execute if score #regeneration_ticks switch.data matches 478 run clone 33922 69 33717 34000 69 34000 33922 169 33717 replace force
execute if score #regeneration_ticks switch.data matches 480 run clone 33766 70 33717 33844 70 34000 33766 170 33717 replace force
execute if score #regeneration_ticks switch.data matches 482 run clone 33844 70 33717 33922 70 34000 33844 170 33717 replace force
execute if score #regeneration_ticks switch.data matches 484 run clone 33922 70 33717 34000 70 34000 33922 170 33717 replace force
execute if score #regeneration_ticks switch.data matches 486 run clone 33766 71 33717 33844 71 34000 33766 171 33717 replace force
execute if score #regeneration_ticks switch.data matches 488 run clone 33844 71 33717 33922 71 34000 33844 171 33717 replace force
execute if score #regeneration_ticks switch.data matches 490 run clone 33922 71 33717 34000 71 34000 33922 171 33717 replace force
execute if score #regeneration_ticks switch.data matches 492 run clone 33766 72 33717 33844 72 34000 33766 172 33717 replace force
execute if score #regeneration_ticks switch.data matches 494 run clone 33844 72 33717 33922 72 34000 33844 172 33717 replace force
execute if score #regeneration_ticks switch.data matches 496 run clone 33922 72 33717 34000 72 34000 33922 172 33717 replace force
execute if score #regeneration_ticks switch.data matches 498 run clone 33766 73 33717 33844 73 34000 33766 173 33717 replace force
execute if score #regeneration_ticks switch.data matches 500 run clone 33844 73 33717 33922 73 34000 33844 173 33717 replace force
execute if score #regeneration_ticks switch.data matches 502 run clone 33922 73 33717 34000 73 34000 33922 173 33717 replace force
execute if score #regeneration_ticks switch.data matches 504 run clone 33766 74 33717 33844 74 34000 33766 174 33717 replace force
execute if score #regeneration_ticks switch.data matches 506 run clone 33844 74 33717 33922 74 34000 33844 174 33717 replace force
execute if score #regeneration_ticks switch.data matches 508 run clone 33922 74 33717 34000 74 34000 33922 174 33717 replace force
execute if score #regeneration_ticks switch.data matches 510 run clone 33766 75 33717 33844 75 34000 33766 175 33717 replace force
execute if score #regeneration_ticks switch.data matches 512 run clone 33844 75 33717 33922 75 34000 33844 175 33717 replace force
execute if score #regeneration_ticks switch.data matches 514 run clone 33922 75 33717 34000 75 34000 33922 175 33717 replace force
execute if score #regeneration_ticks switch.data matches 516 run clone 33766 76 33717 33844 76 34000 33766 176 33717 replace force
execute if score #regeneration_ticks switch.data matches 518 run clone 33844 76 33717 33922 76 34000 33844 176 33717 replace force
execute if score #regeneration_ticks switch.data matches 520 run clone 33922 76 33717 34000 76 34000 33922 176 33717 replace force
execute if score #regeneration_ticks switch.data matches 522 run clone 33766 77 33717 33844 77 34000 33766 177 33717 replace force
execute if score #regeneration_ticks switch.data matches 524 run clone 33844 77 33717 33922 77 34000 33844 177 33717 replace force
execute if score #regeneration_ticks switch.data matches 526 run clone 33922 77 33717 34000 77 34000 33922 177 33717 replace force
execute if score #regeneration_ticks switch.data matches 528 run clone 33766 78 33717 33844 78 34000 33766 178 33717 replace force
execute if score #regeneration_ticks switch.data matches 530 run clone 33844 78 33717 33922 78 34000 33844 178 33717 replace force
execute if score #regeneration_ticks switch.data matches 532 run clone 33922 78 33717 34000 78 34000 33922 178 33717 replace force
execute if score #regeneration_ticks switch.data matches 534 run clone 33766 79 33717 33844 79 34000 33766 179 33717 replace force
execute if score #regeneration_ticks switch.data matches 536 run clone 33844 79 33717 33922 79 34000 33844 179 33717 replace force
execute if score #regeneration_ticks switch.data matches 538 run clone 33922 79 33717 34000 79 34000 33922 179 33717 replace force
execute if score #regeneration_ticks switch.data matches 540 run clone 33766 80 33717 33844 80 34000 33766 180 33717 replace force
execute if score #regeneration_ticks switch.data matches 542 run clone 33844 80 33717 33922 80 34000 33844 180 33717 replace force
execute if score #regeneration_ticks switch.data matches 544 run clone 33922 80 33717 34000 80 34000 33922 180 33717 replace force
execute if score #regeneration_ticks switch.data matches 546 run clone 33766 81 33717 33844 81 34000 33766 181 33717 replace force
execute if score #regeneration_ticks switch.data matches 548 run clone 33844 81 33717 33922 81 34000 33844 181 33717 replace force
execute if score #regeneration_ticks switch.data matches 550 run clone 33922 81 33717 34000 81 34000 33922 181 33717 replace force
execute if score #regeneration_ticks switch.data matches 552 run clone 33766 82 33717 33844 82 34000 33766 182 33717 replace force
execute if score #regeneration_ticks switch.data matches 554 run clone 33844 82 33717 33922 82 34000 33844 182 33717 replace force
execute if score #regeneration_ticks switch.data matches 556 run clone 33922 82 33717 34000 82 34000 33922 182 33717 replace force
execute if score #regeneration_ticks switch.data matches 558 run clone 33766 83 33717 33844 83 34000 33766 183 33717 replace force
execute if score #regeneration_ticks switch.data matches 560 run clone 33844 83 33717 33922 83 34000 33844 183 33717 replace force
execute if score #regeneration_ticks switch.data matches 562 run clone 33922 83 33717 34000 83 34000 33922 183 33717 replace force
execute if score #regeneration_ticks switch.data matches 564 run clone 33766 84 33717 33844 84 34000 33766 184 33717 replace force
execute if score #regeneration_ticks switch.data matches 566 run clone 33844 84 33717 33922 84 34000 33844 184 33717 replace force
execute if score #regeneration_ticks switch.data matches 568 run clone 33922 84 33717 34000 84 34000 33922 184 33717 replace force
execute if score #regeneration_ticks switch.data matches 570 run clone 33766 85 33717 33844 85 34000 33766 185 33717 replace force
execute if score #regeneration_ticks switch.data matches 572 run clone 33844 85 33717 33922 85 34000 33844 185 33717 replace force
execute if score #regeneration_ticks switch.data matches 574 run clone 33922 85 33717 34000 85 34000 33922 185 33717 replace force
execute if score #regeneration_ticks switch.data matches 576 run clone 33766 86 33717 33844 86 34000 33766 186 33717 replace force
execute if score #regeneration_ticks switch.data matches 578 run clone 33844 86 33717 33922 86 34000 33844 186 33717 replace force
execute if score #regeneration_ticks switch.data matches 580 run clone 33922 86 33717 34000 86 34000 33922 186 33717 replace force
execute if score #regeneration_ticks switch.data matches 582 run clone 33766 87 33717 33844 87 34000 33766 187 33717 replace force
execute if score #regeneration_ticks switch.data matches 584 run clone 33844 87 33717 33922 87 34000 33844 187 33717 replace force
execute if score #regeneration_ticks switch.data matches 586 run clone 33922 87 33717 34000 87 34000 33922 187 33717 replace force
execute if score #regeneration_ticks switch.data matches 588 run clone 33766 88 33717 33844 88 34000 33766 188 33717 replace force
execute if score #regeneration_ticks switch.data matches 590 run clone 33844 88 33717 33922 88 34000 33844 188 33717 replace force
execute if score #regeneration_ticks switch.data matches 592 run clone 33922 88 33717 34000 88 34000 33922 188 33717 replace force
execute if score #regeneration_ticks switch.data matches 594 run clone 33766 89 33717 33844 89 34000 33766 189 33717 replace force
execute if score #regeneration_ticks switch.data matches 596 run clone 33844 89 33717 33922 89 34000 33844 189 33717 replace force
execute if score #regeneration_ticks switch.data matches 598 run clone 33922 89 33717 34000 89 34000 33922 189 33717 replace force
execute if score #regeneration_ticks switch.data matches 600 run clone 33766 90 33717 33844 90 34000 33766 190 33717 replace force
execute if score #regeneration_ticks switch.data matches 602 run clone 33844 90 33717 33922 90 34000 33844 190 33717 replace force
execute if score #regeneration_ticks switch.data matches 604 run clone 33922 90 33717 34000 90 34000 33922 190 33717 replace force
execute if score #regeneration_ticks switch.data matches 606 run clone 33766 91 33717 33844 91 34000 33766 191 33717 replace force
execute if score #regeneration_ticks switch.data matches 608 run clone 33844 91 33717 33922 91 34000 33844 191 33717 replace force
execute if score #regeneration_ticks switch.data matches 610 run clone 33922 91 33717 34000 91 34000 33922 191 33717 replace force
execute if score #regeneration_ticks switch.data matches 612 run clone 33766 92 33717 33844 92 34000 33766 192 33717 replace force
execute if score #regeneration_ticks switch.data matches 614 run clone 33844 92 33717 33922 92 34000 33844 192 33717 replace force
execute if score #regeneration_ticks switch.data matches 616 run clone 33922 92 33717 34000 92 34000 33922 192 33717 replace force
execute if score #regeneration_ticks switch.data matches 618 run clone 33766 93 33717 33844 93 34000 33766 193 33717 replace force
execute if score #regeneration_ticks switch.data matches 620 run clone 33844 93 33717 33922 93 34000 33844 193 33717 replace force
execute if score #regeneration_ticks switch.data matches 622 run clone 33922 93 33717 34000 93 34000 33922 193 33717 replace force
execute if score #regeneration_ticks switch.data matches 624 run clone 33766 94 33717 33844 94 34000 33766 194 33717 replace force
execute if score #regeneration_ticks switch.data matches 626 run clone 33844 94 33717 33922 94 34000 33844 194 33717 replace force
execute if score #regeneration_ticks switch.data matches 628 run clone 33922 94 33717 34000 94 34000 33922 194 33717 replace force
execute if score #regeneration_ticks switch.data matches 630 run clone 33766 95 33717 33844 95 34000 33766 195 33717 replace force
execute if score #regeneration_ticks switch.data matches 632 run clone 33844 95 33717 33922 95 34000 33844 195 33717 replace force
execute if score #regeneration_ticks switch.data matches 634 run clone 33922 95 33717 34000 95 34000 33922 195 33717 replace force

execute if score #regeneration_ticks switch.data matches 634 run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 634 run forceload remove 33766 33717 33859 34000
execute if score #regeneration_ticks switch.data matches 634 run forceload remove 33859 33717 34000 34000
execute if score #regeneration_ticks switch.data matches 634 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/regenerate 1t

