
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
#maxY = 199
#i = 30
#j = y
#while minY <= maxY:
#    for k in c:
#        print('execute if score #regeneration_ticks switch.data matches '+str(i)+' run clone '+str(k[0])+' '+str(j)+' '+str(k[1])+' '+str(k[2])+' '+str(j)+' '+str(k[3])+' '+str(k[0])+' '+str(minY)+' '+str(k[1])+' replace force')
#    i += 3
#    j += 1
#    minY += 1

scoreboard players add #regeneration_ticks switch.data 1
execute if score #regeneration_ticks switch.data matches 1 run forceload add 33766 33717 33859 34000
execute if score #regeneration_ticks switch.data matches 1 run forceload add 33859 33717 34000 34000

execute if score #regeneration_ticks switch.data matches 30 run clone 33766 0 33717 33844 0 34000 33766 100 33717 replace force
execute if score #regeneration_ticks switch.data matches 30 run clone 33844 0 33717 33922 0 34000 33844 100 33717 replace force
execute if score #regeneration_ticks switch.data matches 30 run clone 33922 0 33717 34000 0 34000 33922 100 33717 replace force
execute if score #regeneration_ticks switch.data matches 33 run clone 33766 1 33717 33844 1 34000 33766 101 33717 replace force
execute if score #regeneration_ticks switch.data matches 33 run clone 33844 1 33717 33922 1 34000 33844 101 33717 replace force
execute if score #regeneration_ticks switch.data matches 33 run clone 33922 1 33717 34000 1 34000 33922 101 33717 replace force
execute if score #regeneration_ticks switch.data matches 36 run clone 33766 2 33717 33844 2 34000 33766 102 33717 replace force
execute if score #regeneration_ticks switch.data matches 36 run clone 33844 2 33717 33922 2 34000 33844 102 33717 replace force
execute if score #regeneration_ticks switch.data matches 36 run clone 33922 2 33717 34000 2 34000 33922 102 33717 replace force
execute if score #regeneration_ticks switch.data matches 39 run clone 33766 3 33717 33844 3 34000 33766 103 33717 replace force
execute if score #regeneration_ticks switch.data matches 39 run clone 33844 3 33717 33922 3 34000 33844 103 33717 replace force
execute if score #regeneration_ticks switch.data matches 39 run clone 33922 3 33717 34000 3 34000 33922 103 33717 replace force
execute if score #regeneration_ticks switch.data matches 42 run clone 33766 4 33717 33844 4 34000 33766 104 33717 replace force
execute if score #regeneration_ticks switch.data matches 42 run clone 33844 4 33717 33922 4 34000 33844 104 33717 replace force
execute if score #regeneration_ticks switch.data matches 42 run clone 33922 4 33717 34000 4 34000 33922 104 33717 replace force
execute if score #regeneration_ticks switch.data matches 45 run clone 33766 5 33717 33844 5 34000 33766 105 33717 replace force
execute if score #regeneration_ticks switch.data matches 45 run clone 33844 5 33717 33922 5 34000 33844 105 33717 replace force
execute if score #regeneration_ticks switch.data matches 45 run clone 33922 5 33717 34000 5 34000 33922 105 33717 replace force
execute if score #regeneration_ticks switch.data matches 48 run clone 33766 6 33717 33844 6 34000 33766 106 33717 replace force
execute if score #regeneration_ticks switch.data matches 48 run clone 33844 6 33717 33922 6 34000 33844 106 33717 replace force
execute if score #regeneration_ticks switch.data matches 48 run clone 33922 6 33717 34000 6 34000 33922 106 33717 replace force
execute if score #regeneration_ticks switch.data matches 51 run clone 33766 7 33717 33844 7 34000 33766 107 33717 replace force
execute if score #regeneration_ticks switch.data matches 51 run clone 33844 7 33717 33922 7 34000 33844 107 33717 replace force
execute if score #regeneration_ticks switch.data matches 51 run clone 33922 7 33717 34000 7 34000 33922 107 33717 replace force
execute if score #regeneration_ticks switch.data matches 54 run clone 33766 8 33717 33844 8 34000 33766 108 33717 replace force
execute if score #regeneration_ticks switch.data matches 54 run clone 33844 8 33717 33922 8 34000 33844 108 33717 replace force
execute if score #regeneration_ticks switch.data matches 54 run clone 33922 8 33717 34000 8 34000 33922 108 33717 replace force
execute if score #regeneration_ticks switch.data matches 57 run clone 33766 9 33717 33844 9 34000 33766 109 33717 replace force
execute if score #regeneration_ticks switch.data matches 57 run clone 33844 9 33717 33922 9 34000 33844 109 33717 replace force
execute if score #regeneration_ticks switch.data matches 57 run clone 33922 9 33717 34000 9 34000 33922 109 33717 replace force
execute if score #regeneration_ticks switch.data matches 60 run clone 33766 10 33717 33844 10 34000 33766 110 33717 replace force
execute if score #regeneration_ticks switch.data matches 60 run clone 33844 10 33717 33922 10 34000 33844 110 33717 replace force
execute if score #regeneration_ticks switch.data matches 60 run clone 33922 10 33717 34000 10 34000 33922 110 33717 replace force
execute if score #regeneration_ticks switch.data matches 63 run clone 33766 11 33717 33844 11 34000 33766 111 33717 replace force
execute if score #regeneration_ticks switch.data matches 63 run clone 33844 11 33717 33922 11 34000 33844 111 33717 replace force
execute if score #regeneration_ticks switch.data matches 63 run clone 33922 11 33717 34000 11 34000 33922 111 33717 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 33766 12 33717 33844 12 34000 33766 112 33717 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 33844 12 33717 33922 12 34000 33844 112 33717 replace force
execute if score #regeneration_ticks switch.data matches 66 run clone 33922 12 33717 34000 12 34000 33922 112 33717 replace force
execute if score #regeneration_ticks switch.data matches 69 run clone 33766 13 33717 33844 13 34000 33766 113 33717 replace force
execute if score #regeneration_ticks switch.data matches 69 run clone 33844 13 33717 33922 13 34000 33844 113 33717 replace force
execute if score #regeneration_ticks switch.data matches 69 run clone 33922 13 33717 34000 13 34000 33922 113 33717 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 33766 14 33717 33844 14 34000 33766 114 33717 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 33844 14 33717 33922 14 34000 33844 114 33717 replace force
execute if score #regeneration_ticks switch.data matches 72 run clone 33922 14 33717 34000 14 34000 33922 114 33717 replace force
execute if score #regeneration_ticks switch.data matches 75 run clone 33766 15 33717 33844 15 34000 33766 115 33717 replace force
execute if score #regeneration_ticks switch.data matches 75 run clone 33844 15 33717 33922 15 34000 33844 115 33717 replace force
execute if score #regeneration_ticks switch.data matches 75 run clone 33922 15 33717 34000 15 34000 33922 115 33717 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 33766 16 33717 33844 16 34000 33766 116 33717 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 33844 16 33717 33922 16 34000 33844 116 33717 replace force
execute if score #regeneration_ticks switch.data matches 78 run clone 33922 16 33717 34000 16 34000 33922 116 33717 replace force
execute if score #regeneration_ticks switch.data matches 81 run clone 33766 17 33717 33844 17 34000 33766 117 33717 replace force
execute if score #regeneration_ticks switch.data matches 81 run clone 33844 17 33717 33922 17 34000 33844 117 33717 replace force
execute if score #regeneration_ticks switch.data matches 81 run clone 33922 17 33717 34000 17 34000 33922 117 33717 replace force
execute if score #regeneration_ticks switch.data matches 84 run clone 33766 18 33717 33844 18 34000 33766 118 33717 replace force
execute if score #regeneration_ticks switch.data matches 84 run clone 33844 18 33717 33922 18 34000 33844 118 33717 replace force
execute if score #regeneration_ticks switch.data matches 84 run clone 33922 18 33717 34000 18 34000 33922 118 33717 replace force
execute if score #regeneration_ticks switch.data matches 87 run clone 33766 19 33717 33844 19 34000 33766 119 33717 replace force
execute if score #regeneration_ticks switch.data matches 87 run clone 33844 19 33717 33922 19 34000 33844 119 33717 replace force
execute if score #regeneration_ticks switch.data matches 87 run clone 33922 19 33717 34000 19 34000 33922 119 33717 replace force
execute if score #regeneration_ticks switch.data matches 90 run clone 33766 20 33717 33844 20 34000 33766 120 33717 replace force
execute if score #regeneration_ticks switch.data matches 90 run clone 33844 20 33717 33922 20 34000 33844 120 33717 replace force
execute if score #regeneration_ticks switch.data matches 90 run clone 33922 20 33717 34000 20 34000 33922 120 33717 replace force
execute if score #regeneration_ticks switch.data matches 93 run clone 33766 21 33717 33844 21 34000 33766 121 33717 replace force
execute if score #regeneration_ticks switch.data matches 93 run clone 33844 21 33717 33922 21 34000 33844 121 33717 replace force
execute if score #regeneration_ticks switch.data matches 93 run clone 33922 21 33717 34000 21 34000 33922 121 33717 replace force
execute if score #regeneration_ticks switch.data matches 96 run clone 33766 22 33717 33844 22 34000 33766 122 33717 replace force
execute if score #regeneration_ticks switch.data matches 96 run clone 33844 22 33717 33922 22 34000 33844 122 33717 replace force
execute if score #regeneration_ticks switch.data matches 96 run clone 33922 22 33717 34000 22 34000 33922 122 33717 replace force
execute if score #regeneration_ticks switch.data matches 99 run clone 33766 23 33717 33844 23 34000 33766 123 33717 replace force
execute if score #regeneration_ticks switch.data matches 99 run clone 33844 23 33717 33922 23 34000 33844 123 33717 replace force
execute if score #regeneration_ticks switch.data matches 99 run clone 33922 23 33717 34000 23 34000 33922 123 33717 replace force
execute if score #regeneration_ticks switch.data matches 102 run clone 33766 24 33717 33844 24 34000 33766 124 33717 replace force
execute if score #regeneration_ticks switch.data matches 102 run clone 33844 24 33717 33922 24 34000 33844 124 33717 replace force
execute if score #regeneration_ticks switch.data matches 102 run clone 33922 24 33717 34000 24 34000 33922 124 33717 replace force
execute if score #regeneration_ticks switch.data matches 105 run clone 33766 25 33717 33844 25 34000 33766 125 33717 replace force
execute if score #regeneration_ticks switch.data matches 105 run clone 33844 25 33717 33922 25 34000 33844 125 33717 replace force
execute if score #regeneration_ticks switch.data matches 105 run clone 33922 25 33717 34000 25 34000 33922 125 33717 replace force
execute if score #regeneration_ticks switch.data matches 108 run clone 33766 26 33717 33844 26 34000 33766 126 33717 replace force
execute if score #regeneration_ticks switch.data matches 108 run clone 33844 26 33717 33922 26 34000 33844 126 33717 replace force
execute if score #regeneration_ticks switch.data matches 108 run clone 33922 26 33717 34000 26 34000 33922 126 33717 replace force
execute if score #regeneration_ticks switch.data matches 111 run clone 33766 27 33717 33844 27 34000 33766 127 33717 replace force
execute if score #regeneration_ticks switch.data matches 111 run clone 33844 27 33717 33922 27 34000 33844 127 33717 replace force
execute if score #regeneration_ticks switch.data matches 111 run clone 33922 27 33717 34000 27 34000 33922 127 33717 replace force
execute if score #regeneration_ticks switch.data matches 114 run clone 33766 28 33717 33844 28 34000 33766 128 33717 replace force
execute if score #regeneration_ticks switch.data matches 114 run clone 33844 28 33717 33922 28 34000 33844 128 33717 replace force
execute if score #regeneration_ticks switch.data matches 114 run clone 33922 28 33717 34000 28 34000 33922 128 33717 replace force
execute if score #regeneration_ticks switch.data matches 117 run clone 33766 29 33717 33844 29 34000 33766 129 33717 replace force
execute if score #regeneration_ticks switch.data matches 117 run clone 33844 29 33717 33922 29 34000 33844 129 33717 replace force
execute if score #regeneration_ticks switch.data matches 117 run clone 33922 29 33717 34000 29 34000 33922 129 33717 replace force
execute if score #regeneration_ticks switch.data matches 120 run clone 33766 30 33717 33844 30 34000 33766 130 33717 replace force
execute if score #regeneration_ticks switch.data matches 120 run clone 33844 30 33717 33922 30 34000 33844 130 33717 replace force
execute if score #regeneration_ticks switch.data matches 120 run clone 33922 30 33717 34000 30 34000 33922 130 33717 replace force
execute if score #regeneration_ticks switch.data matches 123 run clone 33766 31 33717 33844 31 34000 33766 131 33717 replace force
execute if score #regeneration_ticks switch.data matches 123 run clone 33844 31 33717 33922 31 34000 33844 131 33717 replace force
execute if score #regeneration_ticks switch.data matches 123 run clone 33922 31 33717 34000 31 34000 33922 131 33717 replace force
execute if score #regeneration_ticks switch.data matches 126 run clone 33766 32 33717 33844 32 34000 33766 132 33717 replace force
execute if score #regeneration_ticks switch.data matches 126 run clone 33844 32 33717 33922 32 34000 33844 132 33717 replace force
execute if score #regeneration_ticks switch.data matches 126 run clone 33922 32 33717 34000 32 34000 33922 132 33717 replace force
execute if score #regeneration_ticks switch.data matches 129 run clone 33766 33 33717 33844 33 34000 33766 133 33717 replace force
execute if score #regeneration_ticks switch.data matches 129 run clone 33844 33 33717 33922 33 34000 33844 133 33717 replace force
execute if score #regeneration_ticks switch.data matches 129 run clone 33922 33 33717 34000 33 34000 33922 133 33717 replace force
execute if score #regeneration_ticks switch.data matches 132 run clone 33766 34 33717 33844 34 34000 33766 134 33717 replace force
execute if score #regeneration_ticks switch.data matches 132 run clone 33844 34 33717 33922 34 34000 33844 134 33717 replace force
execute if score #regeneration_ticks switch.data matches 132 run clone 33922 34 33717 34000 34 34000 33922 134 33717 replace force
execute if score #regeneration_ticks switch.data matches 135 run clone 33766 35 33717 33844 35 34000 33766 135 33717 replace force
execute if score #regeneration_ticks switch.data matches 135 run clone 33844 35 33717 33922 35 34000 33844 135 33717 replace force
execute if score #regeneration_ticks switch.data matches 135 run clone 33922 35 33717 34000 35 34000 33922 135 33717 replace force
execute if score #regeneration_ticks switch.data matches 138 run clone 33766 36 33717 33844 36 34000 33766 136 33717 replace force
execute if score #regeneration_ticks switch.data matches 138 run clone 33844 36 33717 33922 36 34000 33844 136 33717 replace force
execute if score #regeneration_ticks switch.data matches 138 run clone 33922 36 33717 34000 36 34000 33922 136 33717 replace force
execute if score #regeneration_ticks switch.data matches 141 run clone 33766 37 33717 33844 37 34000 33766 137 33717 replace force
execute if score #regeneration_ticks switch.data matches 141 run clone 33844 37 33717 33922 37 34000 33844 137 33717 replace force
execute if score #regeneration_ticks switch.data matches 141 run clone 33922 37 33717 34000 37 34000 33922 137 33717 replace force
execute if score #regeneration_ticks switch.data matches 144 run clone 33766 38 33717 33844 38 34000 33766 138 33717 replace force
execute if score #regeneration_ticks switch.data matches 144 run clone 33844 38 33717 33922 38 34000 33844 138 33717 replace force
execute if score #regeneration_ticks switch.data matches 144 run clone 33922 38 33717 34000 38 34000 33922 138 33717 replace force
execute if score #regeneration_ticks switch.data matches 147 run clone 33766 39 33717 33844 39 34000 33766 139 33717 replace force
execute if score #regeneration_ticks switch.data matches 147 run clone 33844 39 33717 33922 39 34000 33844 139 33717 replace force
execute if score #regeneration_ticks switch.data matches 147 run clone 33922 39 33717 34000 39 34000 33922 139 33717 replace force
execute if score #regeneration_ticks switch.data matches 150 run clone 33766 40 33717 33844 40 34000 33766 140 33717 replace force
execute if score #regeneration_ticks switch.data matches 150 run clone 33844 40 33717 33922 40 34000 33844 140 33717 replace force
execute if score #regeneration_ticks switch.data matches 150 run clone 33922 40 33717 34000 40 34000 33922 140 33717 replace force
execute if score #regeneration_ticks switch.data matches 153 run clone 33766 41 33717 33844 41 34000 33766 141 33717 replace force
execute if score #regeneration_ticks switch.data matches 153 run clone 33844 41 33717 33922 41 34000 33844 141 33717 replace force
execute if score #regeneration_ticks switch.data matches 153 run clone 33922 41 33717 34000 41 34000 33922 141 33717 replace force
execute if score #regeneration_ticks switch.data matches 156 run clone 33766 42 33717 33844 42 34000 33766 142 33717 replace force
execute if score #regeneration_ticks switch.data matches 156 run clone 33844 42 33717 33922 42 34000 33844 142 33717 replace force
execute if score #regeneration_ticks switch.data matches 156 run clone 33922 42 33717 34000 42 34000 33922 142 33717 replace force
execute if score #regeneration_ticks switch.data matches 159 run clone 33766 43 33717 33844 43 34000 33766 143 33717 replace force
execute if score #regeneration_ticks switch.data matches 159 run clone 33844 43 33717 33922 43 34000 33844 143 33717 replace force
execute if score #regeneration_ticks switch.data matches 159 run clone 33922 43 33717 34000 43 34000 33922 143 33717 replace force
execute if score #regeneration_ticks switch.data matches 162 run clone 33766 44 33717 33844 44 34000 33766 144 33717 replace force
execute if score #regeneration_ticks switch.data matches 162 run clone 33844 44 33717 33922 44 34000 33844 144 33717 replace force
execute if score #regeneration_ticks switch.data matches 162 run clone 33922 44 33717 34000 44 34000 33922 144 33717 replace force
execute if score #regeneration_ticks switch.data matches 165 run clone 33766 45 33717 33844 45 34000 33766 145 33717 replace force
execute if score #regeneration_ticks switch.data matches 165 run clone 33844 45 33717 33922 45 34000 33844 145 33717 replace force
execute if score #regeneration_ticks switch.data matches 165 run clone 33922 45 33717 34000 45 34000 33922 145 33717 replace force
execute if score #regeneration_ticks switch.data matches 168 run clone 33766 46 33717 33844 46 34000 33766 146 33717 replace force
execute if score #regeneration_ticks switch.data matches 168 run clone 33844 46 33717 33922 46 34000 33844 146 33717 replace force
execute if score #regeneration_ticks switch.data matches 168 run clone 33922 46 33717 34000 46 34000 33922 146 33717 replace force
execute if score #regeneration_ticks switch.data matches 171 run clone 33766 47 33717 33844 47 34000 33766 147 33717 replace force
execute if score #regeneration_ticks switch.data matches 171 run clone 33844 47 33717 33922 47 34000 33844 147 33717 replace force
execute if score #regeneration_ticks switch.data matches 171 run clone 33922 47 33717 34000 47 34000 33922 147 33717 replace force
execute if score #regeneration_ticks switch.data matches 174 run clone 33766 48 33717 33844 48 34000 33766 148 33717 replace force
execute if score #regeneration_ticks switch.data matches 174 run clone 33844 48 33717 33922 48 34000 33844 148 33717 replace force
execute if score #regeneration_ticks switch.data matches 174 run clone 33922 48 33717 34000 48 34000 33922 148 33717 replace force
execute if score #regeneration_ticks switch.data matches 177 run clone 33766 49 33717 33844 49 34000 33766 149 33717 replace force
execute if score #regeneration_ticks switch.data matches 177 run clone 33844 49 33717 33922 49 34000 33844 149 33717 replace force
execute if score #regeneration_ticks switch.data matches 177 run clone 33922 49 33717 34000 49 34000 33922 149 33717 replace force
execute if score #regeneration_ticks switch.data matches 180 run clone 33766 50 33717 33844 50 34000 33766 150 33717 replace force
execute if score #regeneration_ticks switch.data matches 180 run clone 33844 50 33717 33922 50 34000 33844 150 33717 replace force
execute if score #regeneration_ticks switch.data matches 180 run clone 33922 50 33717 34000 50 34000 33922 150 33717 replace force
execute if score #regeneration_ticks switch.data matches 183 run clone 33766 51 33717 33844 51 34000 33766 151 33717 replace force
execute if score #regeneration_ticks switch.data matches 183 run clone 33844 51 33717 33922 51 34000 33844 151 33717 replace force
execute if score #regeneration_ticks switch.data matches 183 run clone 33922 51 33717 34000 51 34000 33922 151 33717 replace force
execute if score #regeneration_ticks switch.data matches 186 run clone 33766 52 33717 33844 52 34000 33766 152 33717 replace force
execute if score #regeneration_ticks switch.data matches 186 run clone 33844 52 33717 33922 52 34000 33844 152 33717 replace force
execute if score #regeneration_ticks switch.data matches 186 run clone 33922 52 33717 34000 52 34000 33922 152 33717 replace force
execute if score #regeneration_ticks switch.data matches 189 run clone 33766 53 33717 33844 53 34000 33766 153 33717 replace force
execute if score #regeneration_ticks switch.data matches 189 run clone 33844 53 33717 33922 53 34000 33844 153 33717 replace force
execute if score #regeneration_ticks switch.data matches 189 run clone 33922 53 33717 34000 53 34000 33922 153 33717 replace force
execute if score #regeneration_ticks switch.data matches 192 run clone 33766 54 33717 33844 54 34000 33766 154 33717 replace force
execute if score #regeneration_ticks switch.data matches 192 run clone 33844 54 33717 33922 54 34000 33844 154 33717 replace force
execute if score #regeneration_ticks switch.data matches 192 run clone 33922 54 33717 34000 54 34000 33922 154 33717 replace force
execute if score #regeneration_ticks switch.data matches 195 run clone 33766 55 33717 33844 55 34000 33766 155 33717 replace force
execute if score #regeneration_ticks switch.data matches 195 run clone 33844 55 33717 33922 55 34000 33844 155 33717 replace force
execute if score #regeneration_ticks switch.data matches 195 run clone 33922 55 33717 34000 55 34000 33922 155 33717 replace force
execute if score #regeneration_ticks switch.data matches 198 run clone 33766 56 33717 33844 56 34000 33766 156 33717 replace force
execute if score #regeneration_ticks switch.data matches 198 run clone 33844 56 33717 33922 56 34000 33844 156 33717 replace force
execute if score #regeneration_ticks switch.data matches 198 run clone 33922 56 33717 34000 56 34000 33922 156 33717 replace force
execute if score #regeneration_ticks switch.data matches 201 run clone 33766 57 33717 33844 57 34000 33766 157 33717 replace force
execute if score #regeneration_ticks switch.data matches 201 run clone 33844 57 33717 33922 57 34000 33844 157 33717 replace force
execute if score #regeneration_ticks switch.data matches 201 run clone 33922 57 33717 34000 57 34000 33922 157 33717 replace force
execute if score #regeneration_ticks switch.data matches 204 run clone 33766 58 33717 33844 58 34000 33766 158 33717 replace force
execute if score #regeneration_ticks switch.data matches 204 run clone 33844 58 33717 33922 58 34000 33844 158 33717 replace force
execute if score #regeneration_ticks switch.data matches 204 run clone 33922 58 33717 34000 58 34000 33922 158 33717 replace force
execute if score #regeneration_ticks switch.data matches 207 run clone 33766 59 33717 33844 59 34000 33766 159 33717 replace force
execute if score #regeneration_ticks switch.data matches 207 run clone 33844 59 33717 33922 59 34000 33844 159 33717 replace force
execute if score #regeneration_ticks switch.data matches 207 run clone 33922 59 33717 34000 59 34000 33922 159 33717 replace force
execute if score #regeneration_ticks switch.data matches 210 run clone 33766 60 33717 33844 60 34000 33766 160 33717 replace force
execute if score #regeneration_ticks switch.data matches 210 run clone 33844 60 33717 33922 60 34000 33844 160 33717 replace force
execute if score #regeneration_ticks switch.data matches 210 run clone 33922 60 33717 34000 60 34000 33922 160 33717 replace force
execute if score #regeneration_ticks switch.data matches 213 run clone 33766 61 33717 33844 61 34000 33766 161 33717 replace force
execute if score #regeneration_ticks switch.data matches 213 run clone 33844 61 33717 33922 61 34000 33844 161 33717 replace force
execute if score #regeneration_ticks switch.data matches 213 run clone 33922 61 33717 34000 61 34000 33922 161 33717 replace force
execute if score #regeneration_ticks switch.data matches 216 run clone 33766 62 33717 33844 62 34000 33766 162 33717 replace force
execute if score #regeneration_ticks switch.data matches 216 run clone 33844 62 33717 33922 62 34000 33844 162 33717 replace force
execute if score #regeneration_ticks switch.data matches 216 run clone 33922 62 33717 34000 62 34000 33922 162 33717 replace force
execute if score #regeneration_ticks switch.data matches 219 run clone 33766 63 33717 33844 63 34000 33766 163 33717 replace force
execute if score #regeneration_ticks switch.data matches 219 run clone 33844 63 33717 33922 63 34000 33844 163 33717 replace force
execute if score #regeneration_ticks switch.data matches 219 run clone 33922 63 33717 34000 63 34000 33922 163 33717 replace force
execute if score #regeneration_ticks switch.data matches 222 run clone 33766 64 33717 33844 64 34000 33766 164 33717 replace force
execute if score #regeneration_ticks switch.data matches 222 run clone 33844 64 33717 33922 64 34000 33844 164 33717 replace force
execute if score #regeneration_ticks switch.data matches 222 run clone 33922 64 33717 34000 64 34000 33922 164 33717 replace force
execute if score #regeneration_ticks switch.data matches 225 run clone 33766 65 33717 33844 65 34000 33766 165 33717 replace force
execute if score #regeneration_ticks switch.data matches 225 run clone 33844 65 33717 33922 65 34000 33844 165 33717 replace force
execute if score #regeneration_ticks switch.data matches 225 run clone 33922 65 33717 34000 65 34000 33922 165 33717 replace force
execute if score #regeneration_ticks switch.data matches 228 run clone 33766 66 33717 33844 66 34000 33766 166 33717 replace force
execute if score #regeneration_ticks switch.data matches 228 run clone 33844 66 33717 33922 66 34000 33844 166 33717 replace force
execute if score #regeneration_ticks switch.data matches 228 run clone 33922 66 33717 34000 66 34000 33922 166 33717 replace force
execute if score #regeneration_ticks switch.data matches 231 run clone 33766 67 33717 33844 67 34000 33766 167 33717 replace force
execute if score #regeneration_ticks switch.data matches 231 run clone 33844 67 33717 33922 67 34000 33844 167 33717 replace force
execute if score #regeneration_ticks switch.data matches 231 run clone 33922 67 33717 34000 67 34000 33922 167 33717 replace force
execute if score #regeneration_ticks switch.data matches 234 run clone 33766 68 33717 33844 68 34000 33766 168 33717 replace force
execute if score #regeneration_ticks switch.data matches 234 run clone 33844 68 33717 33922 68 34000 33844 168 33717 replace force
execute if score #regeneration_ticks switch.data matches 234 run clone 33922 68 33717 34000 68 34000 33922 168 33717 replace force
execute if score #regeneration_ticks switch.data matches 237 run clone 33766 69 33717 33844 69 34000 33766 169 33717 replace force
execute if score #regeneration_ticks switch.data matches 237 run clone 33844 69 33717 33922 69 34000 33844 169 33717 replace force
execute if score #regeneration_ticks switch.data matches 237 run clone 33922 69 33717 34000 69 34000 33922 169 33717 replace force
execute if score #regeneration_ticks switch.data matches 240 run clone 33766 70 33717 33844 70 34000 33766 170 33717 replace force
execute if score #regeneration_ticks switch.data matches 240 run clone 33844 70 33717 33922 70 34000 33844 170 33717 replace force
execute if score #regeneration_ticks switch.data matches 240 run clone 33922 70 33717 34000 70 34000 33922 170 33717 replace force
execute if score #regeneration_ticks switch.data matches 243 run clone 33766 71 33717 33844 71 34000 33766 171 33717 replace force
execute if score #regeneration_ticks switch.data matches 243 run clone 33844 71 33717 33922 71 34000 33844 171 33717 replace force
execute if score #regeneration_ticks switch.data matches 243 run clone 33922 71 33717 34000 71 34000 33922 171 33717 replace force
execute if score #regeneration_ticks switch.data matches 246 run clone 33766 72 33717 33844 72 34000 33766 172 33717 replace force
execute if score #regeneration_ticks switch.data matches 246 run clone 33844 72 33717 33922 72 34000 33844 172 33717 replace force
execute if score #regeneration_ticks switch.data matches 246 run clone 33922 72 33717 34000 72 34000 33922 172 33717 replace force
execute if score #regeneration_ticks switch.data matches 249 run clone 33766 73 33717 33844 73 34000 33766 173 33717 replace force
execute if score #regeneration_ticks switch.data matches 249 run clone 33844 73 33717 33922 73 34000 33844 173 33717 replace force
execute if score #regeneration_ticks switch.data matches 249 run clone 33922 73 33717 34000 73 34000 33922 173 33717 replace force
execute if score #regeneration_ticks switch.data matches 252 run clone 33766 74 33717 33844 74 34000 33766 174 33717 replace force
execute if score #regeneration_ticks switch.data matches 252 run clone 33844 74 33717 33922 74 34000 33844 174 33717 replace force
execute if score #regeneration_ticks switch.data matches 252 run clone 33922 74 33717 34000 74 34000 33922 174 33717 replace force
execute if score #regeneration_ticks switch.data matches 255 run clone 33766 75 33717 33844 75 34000 33766 175 33717 replace force
execute if score #regeneration_ticks switch.data matches 255 run clone 33844 75 33717 33922 75 34000 33844 175 33717 replace force
execute if score #regeneration_ticks switch.data matches 255 run clone 33922 75 33717 34000 75 34000 33922 175 33717 replace force
execute if score #regeneration_ticks switch.data matches 258 run clone 33766 76 33717 33844 76 34000 33766 176 33717 replace force
execute if score #regeneration_ticks switch.data matches 258 run clone 33844 76 33717 33922 76 34000 33844 176 33717 replace force
execute if score #regeneration_ticks switch.data matches 258 run clone 33922 76 33717 34000 76 34000 33922 176 33717 replace force
execute if score #regeneration_ticks switch.data matches 261 run clone 33766 77 33717 33844 77 34000 33766 177 33717 replace force
execute if score #regeneration_ticks switch.data matches 261 run clone 33844 77 33717 33922 77 34000 33844 177 33717 replace force
execute if score #regeneration_ticks switch.data matches 261 run clone 33922 77 33717 34000 77 34000 33922 177 33717 replace force
execute if score #regeneration_ticks switch.data matches 264 run clone 33766 78 33717 33844 78 34000 33766 178 33717 replace force
execute if score #regeneration_ticks switch.data matches 264 run clone 33844 78 33717 33922 78 34000 33844 178 33717 replace force
execute if score #regeneration_ticks switch.data matches 264 run clone 33922 78 33717 34000 78 34000 33922 178 33717 replace force
execute if score #regeneration_ticks switch.data matches 267 run clone 33766 79 33717 33844 79 34000 33766 179 33717 replace force
execute if score #regeneration_ticks switch.data matches 267 run clone 33844 79 33717 33922 79 34000 33844 179 33717 replace force
execute if score #regeneration_ticks switch.data matches 267 run clone 33922 79 33717 34000 79 34000 33922 179 33717 replace force
execute if score #regeneration_ticks switch.data matches 270 run clone 33766 80 33717 33844 80 34000 33766 180 33717 replace force
execute if score #regeneration_ticks switch.data matches 270 run clone 33844 80 33717 33922 80 34000 33844 180 33717 replace force
execute if score #regeneration_ticks switch.data matches 270 run clone 33922 80 33717 34000 80 34000 33922 180 33717 replace force
execute if score #regeneration_ticks switch.data matches 273 run clone 33766 81 33717 33844 81 34000 33766 181 33717 replace force
execute if score #regeneration_ticks switch.data matches 273 run clone 33844 81 33717 33922 81 34000 33844 181 33717 replace force
execute if score #regeneration_ticks switch.data matches 273 run clone 33922 81 33717 34000 81 34000 33922 181 33717 replace force
execute if score #regeneration_ticks switch.data matches 276 run clone 33766 82 33717 33844 82 34000 33766 182 33717 replace force
execute if score #regeneration_ticks switch.data matches 276 run clone 33844 82 33717 33922 82 34000 33844 182 33717 replace force
execute if score #regeneration_ticks switch.data matches 276 run clone 33922 82 33717 34000 82 34000 33922 182 33717 replace force
execute if score #regeneration_ticks switch.data matches 279 run clone 33766 83 33717 33844 83 34000 33766 183 33717 replace force
execute if score #regeneration_ticks switch.data matches 279 run clone 33844 83 33717 33922 83 34000 33844 183 33717 replace force
execute if score #regeneration_ticks switch.data matches 279 run clone 33922 83 33717 34000 83 34000 33922 183 33717 replace force
execute if score #regeneration_ticks switch.data matches 282 run clone 33766 84 33717 33844 84 34000 33766 184 33717 replace force
execute if score #regeneration_ticks switch.data matches 282 run clone 33844 84 33717 33922 84 34000 33844 184 33717 replace force
execute if score #regeneration_ticks switch.data matches 282 run clone 33922 84 33717 34000 84 34000 33922 184 33717 replace force
execute if score #regeneration_ticks switch.data matches 285 run clone 33766 85 33717 33844 85 34000 33766 185 33717 replace force
execute if score #regeneration_ticks switch.data matches 285 run clone 33844 85 33717 33922 85 34000 33844 185 33717 replace force
execute if score #regeneration_ticks switch.data matches 285 run clone 33922 85 33717 34000 85 34000 33922 185 33717 replace force
execute if score #regeneration_ticks switch.data matches 288 run clone 33766 86 33717 33844 86 34000 33766 186 33717 replace force
execute if score #regeneration_ticks switch.data matches 288 run clone 33844 86 33717 33922 86 34000 33844 186 33717 replace force
execute if score #regeneration_ticks switch.data matches 288 run clone 33922 86 33717 34000 86 34000 33922 186 33717 replace force
execute if score #regeneration_ticks switch.data matches 291 run clone 33766 87 33717 33844 87 34000 33766 187 33717 replace force
execute if score #regeneration_ticks switch.data matches 291 run clone 33844 87 33717 33922 87 34000 33844 187 33717 replace force
execute if score #regeneration_ticks switch.data matches 291 run clone 33922 87 33717 34000 87 34000 33922 187 33717 replace force
execute if score #regeneration_ticks switch.data matches 294 run clone 33766 88 33717 33844 88 34000 33766 188 33717 replace force
execute if score #regeneration_ticks switch.data matches 294 run clone 33844 88 33717 33922 88 34000 33844 188 33717 replace force
execute if score #regeneration_ticks switch.data matches 294 run clone 33922 88 33717 34000 88 34000 33922 188 33717 replace force
execute if score #regeneration_ticks switch.data matches 297 run clone 33766 89 33717 33844 89 34000 33766 189 33717 replace force
execute if score #regeneration_ticks switch.data matches 297 run clone 33844 89 33717 33922 89 34000 33844 189 33717 replace force
execute if score #regeneration_ticks switch.data matches 297 run clone 33922 89 33717 34000 89 34000 33922 189 33717 replace force
execute if score #regeneration_ticks switch.data matches 300 run clone 33766 90 33717 33844 90 34000 33766 190 33717 replace force
execute if score #regeneration_ticks switch.data matches 300 run clone 33844 90 33717 33922 90 34000 33844 190 33717 replace force
execute if score #regeneration_ticks switch.data matches 300 run clone 33922 90 33717 34000 90 34000 33922 190 33717 replace force
execute if score #regeneration_ticks switch.data matches 303 run clone 33766 91 33717 33844 91 34000 33766 191 33717 replace force
execute if score #regeneration_ticks switch.data matches 303 run clone 33844 91 33717 33922 91 34000 33844 191 33717 replace force
execute if score #regeneration_ticks switch.data matches 303 run clone 33922 91 33717 34000 91 34000 33922 191 33717 replace force
execute if score #regeneration_ticks switch.data matches 306 run clone 33766 92 33717 33844 92 34000 33766 192 33717 replace force
execute if score #regeneration_ticks switch.data matches 306 run clone 33844 92 33717 33922 92 34000 33844 192 33717 replace force
execute if score #regeneration_ticks switch.data matches 306 run clone 33922 92 33717 34000 92 34000 33922 192 33717 replace force
execute if score #regeneration_ticks switch.data matches 309 run clone 33766 93 33717 33844 93 34000 33766 193 33717 replace force
execute if score #regeneration_ticks switch.data matches 309 run clone 33844 93 33717 33922 93 34000 33844 193 33717 replace force
execute if score #regeneration_ticks switch.data matches 309 run clone 33922 93 33717 34000 93 34000 33922 193 33717 replace force
execute if score #regeneration_ticks switch.data matches 312 run clone 33766 94 33717 33844 94 34000 33766 194 33717 replace force
execute if score #regeneration_ticks switch.data matches 312 run clone 33844 94 33717 33922 94 34000 33844 194 33717 replace force
execute if score #regeneration_ticks switch.data matches 312 run clone 33922 94 33717 34000 94 34000 33922 194 33717 replace force
execute if score #regeneration_ticks switch.data matches 315 run clone 33766 95 33717 33844 95 34000 33766 195 33717 replace force
execute if score #regeneration_ticks switch.data matches 315 run clone 33844 95 33717 33922 95 34000 33844 195 33717 replace force
execute if score #regeneration_ticks switch.data matches 315 run clone 33922 95 33717 34000 95 34000 33922 195 33717 replace force
execute if score #regeneration_ticks switch.data matches 318 run clone 33766 96 33717 33844 96 34000 33766 196 33717 replace force
execute if score #regeneration_ticks switch.data matches 318 run clone 33844 96 33717 33922 96 34000 33844 196 33717 replace force
execute if score #regeneration_ticks switch.data matches 318 run clone 33922 96 33717 34000 96 34000 33922 196 33717 replace force
execute if score #regeneration_ticks switch.data matches 321 run clone 33766 97 33717 33844 97 34000 33766 197 33717 replace force
execute if score #regeneration_ticks switch.data matches 321 run clone 33844 97 33717 33922 97 34000 33844 197 33717 replace force
execute if score #regeneration_ticks switch.data matches 321 run clone 33922 97 33717 34000 97 34000 33922 197 33717 replace force
execute if score #regeneration_ticks switch.data matches 324 run clone 33766 98 33717 33844 98 34000 33766 198 33717 replace force
execute if score #regeneration_ticks switch.data matches 324 run clone 33844 98 33717 33922 98 34000 33844 198 33717 replace force
execute if score #regeneration_ticks switch.data matches 324 run clone 33922 98 33717 34000 98 34000 33922 198 33717 replace force
execute if score #regeneration_ticks switch.data matches 327 run clone 33766 99 33717 33844 99 34000 33766 199 33717 replace force
execute if score #regeneration_ticks switch.data matches 327 run clone 33844 99 33717 33922 99 34000 33844 199 33717 replace force
execute if score #regeneration_ticks switch.data matches 327 run clone 33922 99 33717 34000 99 34000 33922 199 33717 replace force

execute if score #regeneration_ticks switch.data matches 327 run kill @e[type=item]
execute if score #regeneration_ticks switch.data matches 327 run forceload remove 33766 33717 33859 34000
execute if score #regeneration_ticks switch.data matches 327 run forceload remove 33859 33717 34000 34000
execute if score #regeneration_ticks switch.data matches 327 run scoreboard players reset #regeneration_ticks switch.data

execute if score #regeneration_ticks switch.data matches 1.. run schedule function switch:maps/survival/jayl_dark_forest/regenerate 1t

