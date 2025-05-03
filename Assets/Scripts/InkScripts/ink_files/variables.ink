VAR you = "Cas"
VAR android = "Pandora"
VAR snob = "Lavender"
VAR webdev = "Tali"
VAR comic = "Kent"
VAR lovelace = "Ada"
VAR trader = "Stranger"
VAR scene = "ShopFront"
VAR button = "normal"
VAR newsPicture = ""
VAR newsCaption = ""
VAR ad1 = ""
VAR ad2 = ""
VAR ad3 = ""
VAR ad4 = ""
VAR sfx = ""
VAR music = ""
VAR chapter = "Chapter 1"
VAR drunk = 0
#character sprites
LIST characters = lavender, ada, pandora, kent, tali,cas, stranger
LIST Ada = adalina_displeased, (adalina_neutral),adalina_pleased
LIST Kent = kent_shocked, (kent_normal), kent_amused, kent_happy, kent_side_normal, kent_side_serious, kent_upset, kent_sad
LIST Tali = tali_shocked, (tali_normal), tali_sad, tali_smirk, tali_talking_side,tali_talking_forward, tali_upset, tali_awe, tali_happy_closed, tali_exasperated, tali_happy, tali_serious
LIST Lavender = (lavender_normal), lavender_sad,lavender_thinking, lavender_angry, lavender_shocked,lavender_happy, lavender_crying, lavender_mean, lavender_serious, lavender_tears_crying
LIST Pandora = (pandora_normal), pandora_mean, pandora_normal2, pandora_happy, pandora_suggestive, pandora_sad, pandora_shocked, pandora_excited, pandora_pensive, pandora_annoyed, pandora_confused
LIST Stranger = (shadow_amused), shadow_neutral, shadow_sad

LIST allbooks = Alice_in_Wonderland, Howls_Moving_Castle, t_lion_witch_wardrobe, fantasy_7, zebraman_89, togue_222, giraffe_1, myths_legends, togue_394, sentinel_105, fantasy_dragon_heart,black_goat,wildfyre_678,togue_1076,togue_666, hypnos_55,lord_dusk,togue_360,lady_darkness_373,forest_god,t_secret_garden,togue_uniform,x_a_235,the_glass_lab,the_wiz_oz,togue_rain_proof,mr_therm,ring_thorns,the_hobbit,togue_gear,bioworld,heart_lies,matilda,togue_ppe,cybershake,queendom_heretic,alice_looking_glass,togue_acid_rain


VAR deliveryToday = 0
VAR effectName = ""
VAR textBoxIsActive = "true"
VAR currentSpeaker = ""
VAR extraText = ""
VAR extraTextLog = ""
VAR funds = 500
VAR newsAnnouncement = ""
VAR shop = ""
VAR booksSold = 0
VAR day = 1

#friendship points
VAR kentPoints = 0
VAR taliPoints = 0
VAR lavenderPoints = 0
VAR pandoraPoints = 0

#check at point you need £500 and either to snap out, or to collect the right books
#Otherwise Ada will fire you
#if you kept taking Fate, but you managed to get money for the trader, snapped out will be set to yes
VAR snappedOut = "no"
VAR gaveTraderMoney = "no"
//LIST strangerbooks = castle, wardrobe, rabbithole
VAR strangerbooks = "false"
VAR worstEnding = "no"