
execute if score #blue_points switch.data matches ..99 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"}]
execute if score #blue_points switch.data matches 100..199 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"1","color":"yellow"}]
execute if score #blue_points switch.data matches 200..299 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"2","color":"yellow"}]
execute if score #blue_points switch.data matches 300..399 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"3","color":"yellow"}]
execute if score #blue_points switch.data matches 400..499 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"4","color":"yellow"}]
execute if score #blue_points switch.data matches 500..599 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"5","color":"yellow"}]
execute if score #blue_points switch.data matches 600..699 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"6","color":"yellow"}]
execute if score #blue_points switch.data matches 700..799 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"7","color":"yellow"}]
execute if score #blue_points switch.data matches 800..899 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"8","color":"yellow"}]
execute if score #blue_points switch.data matches 900..999 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"9","color":"yellow"}]
execute if score #blue_points switch.data matches 1000..1099 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"10","color":"yellow"}]
execute if score #blue_points switch.data matches 1100..1199 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"11","color":"yellow"}]
execute if score #blue_points switch.data matches 1200..1299 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"12","color":"yellow"}]
execute if score #blue_points switch.data matches 1300..1399 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"13","color":"yellow"}]
execute if score #blue_points switch.data matches 1400..1499 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"14","color":"yellow"}]
execute if score #blue_points switch.data matches 1500..1599 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"15","color":"yellow"}]
execute if score #blue_points switch.data matches 1600..1699 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"16","color":"yellow"}]
execute if score #blue_points switch.data matches 1700..1799 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"17","color":"yellow"}]
execute if score #blue_points switch.data matches 1800..1899 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"18","color":"yellow"}]
execute if score #blue_points switch.data matches 1900..1999 run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"19","color":"yellow"}]
execute if score #blue_points switch.data matches 2000.. run team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"},{"text":"20","color":"yellow"}]

scoreboard players operation #score_for_suffix switch.data = #blue_points switch.data
scoreboard players operation #score_for_suffix switch.data %= #100 switch.data

execute if score #score_for_suffix switch.data matches 0 run team modify switch.temp.sidebar.2 suffix [{"text":"00","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 1 run team modify switch.temp.sidebar.2 suffix [{"text":"01","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 2 run team modify switch.temp.sidebar.2 suffix [{"text":"02","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 3 run team modify switch.temp.sidebar.2 suffix [{"text":"03","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 4 run team modify switch.temp.sidebar.2 suffix [{"text":"04","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 5 run team modify switch.temp.sidebar.2 suffix [{"text":"05","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 6 run team modify switch.temp.sidebar.2 suffix [{"text":"06","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 7 run team modify switch.temp.sidebar.2 suffix [{"text":"07","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 8 run team modify switch.temp.sidebar.2 suffix [{"text":"08","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 9 run team modify switch.temp.sidebar.2 suffix [{"text":"09","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 10 run team modify switch.temp.sidebar.2 suffix [{"text":"10","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 11 run team modify switch.temp.sidebar.2 suffix [{"text":"11","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 12 run team modify switch.temp.sidebar.2 suffix [{"text":"12","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 13 run team modify switch.temp.sidebar.2 suffix [{"text":"13","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 14 run team modify switch.temp.sidebar.2 suffix [{"text":"14","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 15 run team modify switch.temp.sidebar.2 suffix [{"text":"15","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 16 run team modify switch.temp.sidebar.2 suffix [{"text":"16","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 17 run team modify switch.temp.sidebar.2 suffix [{"text":"17","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 18 run team modify switch.temp.sidebar.2 suffix [{"text":"18","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 19 run team modify switch.temp.sidebar.2 suffix [{"text":"19","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 20 run team modify switch.temp.sidebar.2 suffix [{"text":"20","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 21 run team modify switch.temp.sidebar.2 suffix [{"text":"21","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 22 run team modify switch.temp.sidebar.2 suffix [{"text":"22","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 23 run team modify switch.temp.sidebar.2 suffix [{"text":"23","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 24 run team modify switch.temp.sidebar.2 suffix [{"text":"24","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 25 run team modify switch.temp.sidebar.2 suffix [{"text":"25","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 26 run team modify switch.temp.sidebar.2 suffix [{"text":"26","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 27 run team modify switch.temp.sidebar.2 suffix [{"text":"27","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 28 run team modify switch.temp.sidebar.2 suffix [{"text":"28","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 29 run team modify switch.temp.sidebar.2 suffix [{"text":"29","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 30 run team modify switch.temp.sidebar.2 suffix [{"text":"30","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 31 run team modify switch.temp.sidebar.2 suffix [{"text":"31","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 32 run team modify switch.temp.sidebar.2 suffix [{"text":"32","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 33 run team modify switch.temp.sidebar.2 suffix [{"text":"33","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 34 run team modify switch.temp.sidebar.2 suffix [{"text":"34","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 35 run team modify switch.temp.sidebar.2 suffix [{"text":"35","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 36 run team modify switch.temp.sidebar.2 suffix [{"text":"36","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 37 run team modify switch.temp.sidebar.2 suffix [{"text":"37","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 38 run team modify switch.temp.sidebar.2 suffix [{"text":"38","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 39 run team modify switch.temp.sidebar.2 suffix [{"text":"39","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 40 run team modify switch.temp.sidebar.2 suffix [{"text":"40","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 41 run team modify switch.temp.sidebar.2 suffix [{"text":"41","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 42 run team modify switch.temp.sidebar.2 suffix [{"text":"42","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 43 run team modify switch.temp.sidebar.2 suffix [{"text":"43","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 44 run team modify switch.temp.sidebar.2 suffix [{"text":"44","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 45 run team modify switch.temp.sidebar.2 suffix [{"text":"45","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 46 run team modify switch.temp.sidebar.2 suffix [{"text":"46","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 47 run team modify switch.temp.sidebar.2 suffix [{"text":"47","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 48 run team modify switch.temp.sidebar.2 suffix [{"text":"48","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 49 run team modify switch.temp.sidebar.2 suffix [{"text":"49","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 50 run team modify switch.temp.sidebar.2 suffix [{"text":"50","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 51 run team modify switch.temp.sidebar.2 suffix [{"text":"51","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 52 run team modify switch.temp.sidebar.2 suffix [{"text":"52","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 53 run team modify switch.temp.sidebar.2 suffix [{"text":"53","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 54 run team modify switch.temp.sidebar.2 suffix [{"text":"54","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 55 run team modify switch.temp.sidebar.2 suffix [{"text":"55","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 56 run team modify switch.temp.sidebar.2 suffix [{"text":"56","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 57 run team modify switch.temp.sidebar.2 suffix [{"text":"57","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 58 run team modify switch.temp.sidebar.2 suffix [{"text":"58","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 59 run team modify switch.temp.sidebar.2 suffix [{"text":"59","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 60 run team modify switch.temp.sidebar.2 suffix [{"text":"60","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 61 run team modify switch.temp.sidebar.2 suffix [{"text":"61","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 62 run team modify switch.temp.sidebar.2 suffix [{"text":"62","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 63 run team modify switch.temp.sidebar.2 suffix [{"text":"63","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 64 run team modify switch.temp.sidebar.2 suffix [{"text":"64","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 65 run team modify switch.temp.sidebar.2 suffix [{"text":"65","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 66 run team modify switch.temp.sidebar.2 suffix [{"text":"66","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 67 run team modify switch.temp.sidebar.2 suffix [{"text":"67","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 68 run team modify switch.temp.sidebar.2 suffix [{"text":"68","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 69 run team modify switch.temp.sidebar.2 suffix [{"text":"69","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 70 run team modify switch.temp.sidebar.2 suffix [{"text":"70","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 71 run team modify switch.temp.sidebar.2 suffix [{"text":"71","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 72 run team modify switch.temp.sidebar.2 suffix [{"text":"72","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 73 run team modify switch.temp.sidebar.2 suffix [{"text":"73","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 74 run team modify switch.temp.sidebar.2 suffix [{"text":"74","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 75 run team modify switch.temp.sidebar.2 suffix [{"text":"75","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 76 run team modify switch.temp.sidebar.2 suffix [{"text":"76","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 77 run team modify switch.temp.sidebar.2 suffix [{"text":"77","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 78 run team modify switch.temp.sidebar.2 suffix [{"text":"78","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 79 run team modify switch.temp.sidebar.2 suffix [{"text":"79","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 80 run team modify switch.temp.sidebar.2 suffix [{"text":"80","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 81 run team modify switch.temp.sidebar.2 suffix [{"text":"81","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 82 run team modify switch.temp.sidebar.2 suffix [{"text":"82","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 83 run team modify switch.temp.sidebar.2 suffix [{"text":"83","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 84 run team modify switch.temp.sidebar.2 suffix [{"text":"84","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 85 run team modify switch.temp.sidebar.2 suffix [{"text":"85","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 86 run team modify switch.temp.sidebar.2 suffix [{"text":"86","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 87 run team modify switch.temp.sidebar.2 suffix [{"text":"87","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 88 run team modify switch.temp.sidebar.2 suffix [{"text":"88","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 89 run team modify switch.temp.sidebar.2 suffix [{"text":"89","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 90 run team modify switch.temp.sidebar.2 suffix [{"text":"90","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 91 run team modify switch.temp.sidebar.2 suffix [{"text":"91","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 92 run team modify switch.temp.sidebar.2 suffix [{"text":"92","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 93 run team modify switch.temp.sidebar.2 suffix [{"text":"93","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 94 run team modify switch.temp.sidebar.2 suffix [{"text":"94","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 95 run team modify switch.temp.sidebar.2 suffix [{"text":"95","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 96 run team modify switch.temp.sidebar.2 suffix [{"text":"96","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 97 run team modify switch.temp.sidebar.2 suffix [{"text":"97","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 98 run team modify switch.temp.sidebar.2 suffix [{"text":"98","color":"yellow"}]
execute if score #score_for_suffix switch.data matches 99 run team modify switch.temp.sidebar.2 suffix [{"text":"99","color":"yellow"}]

