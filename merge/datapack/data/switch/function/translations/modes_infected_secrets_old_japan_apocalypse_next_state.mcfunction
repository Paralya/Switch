
# French
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Une porte s'est ouverte...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 run tellraw @a[scores={switch.lang=0},team=switch.temp.human,tag=!detached] [{"text":"Un joueur vient d'activer la radio, cliquez [ici] pour l'écouter","color":"gray","italic":true,"click_event":{"action":"run_command","command":"/trigger switch.temp.radio_trigger set 1"}}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Sirènes d'urgence* - Flash spécial ! Je suis Sarah Connor en direct de Radio Info. Une pluie de météorites d'origine inconnue s'abat actuellement sur toute la planète ! La situation est critique !","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] Nos experts du CNRS rapportent que ces météorites émettent des radiations jamais observées auparavant. Le minerai qui les compose défie toutes nos connaissances scientifiques...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Voix tremblante* Je répète l'avis des autorités : Barricadez-vous chez vous, n'approchez surtout pas des zones d'impact. Les forces spéciales sont en route vers les zones touchées.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interférences* Pshhhhhhhhhh *Grésillements* ...situation critique... Pshhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 6 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] On me communique à l'instant... *Papiers froissés* Mon dieu... Ce sont les mêmes météorites qui ont frappé l'Ukraine il y a quelques décennies. L'incident avait été camouflé...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 7 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interférences violentes* ...signal faible... tentative de maintenir... Pshhhhhhh...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 8 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Voix paniquée* L'équipe de scientifiques du... en Égypte... Ils avaient découvert quelque chose... Toute l'équipe... disparue en quelques heures...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] Le site est devenu... une sorte de volcan vivant... Les équipes de secours qui s'en approchent ne reviennent jamais... *Respiration difficile*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 10 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interférences massives* PSHHHHHH... DANGER... PSHHHHHH... ÉVACUATION... PSHHHHHH","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 11 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Voix différente* Les services secrets ukrainiens ont classifié toute l'affaire... La zone est en quarantaine totale... Les témoins parlent de... mutations...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 12 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Bruits de chaos en arrière-plan* - Mme Connor ! Les portes cèdent ! Il y a des... des choses qui entrent ! Ce ne sont plus des humains !","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 13 run tellraw @a[scores={switch.lang=0,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Cris en arrière-plan* Mme Connor ?! Oh mon dieu, ses yeux... SES YEUX ! COUPEZ LA TRANS--- *Hurlement strident* ---pshhhhhhhhhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Putain, c'est quoi ce bordel ?! Le studio de radio est pourtant à des kilomètres d'ici !"}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> On ne peut pas rester ici à attendre la mort ! Il doit bien y avoir un moyen de s'en sortir vivants !"}]
execute if score #infected_secret switch.data matches 15 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Attendez ! J'ai une idée ! Ce village contient des pièces rares - on pourrait construire une balise de détresse ! Les militaires la repéreront forcément !"}]
execute if score #infected_secret switch.data matches 16 as @p[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Ça y est ! La balise émet son signal ! Avec un peu de chance, quelqu'un l'interceptera !"}]
execute if score #infected_secret switch.data matches 16 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Maintenant, il faut tenir bon jusqu'à l'arrivée des secours. On ne peut pas abandonner, pas maintenant !"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Les hélicoptères ! Je les entends ! Les renforts sont enfin là !"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Cette menace est plus grande que nous tous... Les recherches des égyptiens sont notre seul espoir de comprendre ce qui se passe. Il faut les retrouver, coûte que coûte !"}]
execute if score #infected_secret switch.data matches 17 run tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

# English
execute if score #infected_secret switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"A door has opened...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 1 run tellraw @a[scores={switch.lang=1},team=switch.temp.human,tag=!detached] [{"text":"A player just turned on the radio, click [here] to listen to it","color":"gray","italic":true,"click_event":{"action":"run_command","command":"/trigger switch.temp.radio_trigger set 1"}}]
execute if score #infected_secret switch.data matches 2 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Emergency sirens* - Breaking news! This is Sarah Connor live from Radio Info. A shower of meteorites of unknown origin is currently falling all over the planet! The situation is critical!","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 3 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] Our research experts report that these meteorites are emitting never-before-seen radiation. The mineral composing them defies all our scientific knowledge...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 4 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Trembling voice* I repeat the authorities' warning: Barricade yourselves at home, do not approach impact zones. Special forces are en route to affected areas.","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 5 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Interference* Pshhhhhhhhhh *Static* ...critical situation... Pshhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 6 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] I'm just being informed... *Papers rustling* Dear God... These are the same meteorites that hit Ukraine decades ago. The incident was covered up...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 7 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Heavy interference* ...weak signal... attempting to maintain... Pshhhhhhh...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 8 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Panicked voice* The science team from Cairo... They had discovered something... The entire team... vanished within hours...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 9 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] The site has become... some kind of living volcano... Rescue teams that approach never return... *Labored breathing*","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 10 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Massive interference* PSHHHHHH... DANGER... PSHHHHHH... EVACUATION... PSHHHHHH","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 11 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Different voice* Ukrainian secret services have classified the whole affair... The area is under total quarantine... Witnesses speak of... mutations...","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 12 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Chaos sounds in background* - Mrs. Connor! The doors are giving way! There are... things coming in! They're not human anymore!","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 13 run tellraw @a[scores={switch.lang=1,switch.temp.radio_trigger=1},tag=!detached] [{"text":"[Radio] *Screams in background* Mrs. Connor?! Oh God, her eyes... HER EYES! CUT THE TRANS--- *Piercing scream* ---pshhhhhhhhhhhhhhhhh","color":"gray","italic":true}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> What the fuck?! The radio studio is miles away!"}]
execute if score #infected_secret switch.data matches 14 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> We can't just sit here waiting for death! There must be a way to survive this nightmare!"}]
execute if score #infected_secret switch.data matches 15 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Wait! I have an idea! The village has rare components - we could build a distress beacon! The military will surely spot it!"}]
execute if score #infected_secret switch.data matches 16 as @p[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> There! The beacon is broadcasting! With any luck, someone will pick up our signal!"}]
execute if score #infected_secret switch.data matches 16 as @r[tag=!detached,team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> Now we just need to hold out until help arrives. We can't give up, not when we've come this far!"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> The helicopters! I can hear them! The reinforcements are finally here!"}]
execute if score #infected_secret switch.data matches 17 as @r[team=switch.temp.human] run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"<","color":"gray","italic":true},{"selector":"@s","color":"gray","italic":true},{"text":"> This threat is bigger than all of us... The Egyptians' research is our only hope of understanding what's happening. We must find it, no matter the cost!"}]
execute if score #infected_secret switch.data matches 17 run tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"To be continued...","color":"dark_gray","italic":true}]

