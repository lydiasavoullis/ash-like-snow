
VAR you = "Cas"
VAR man = "The man"
VAR android = "Pandora"
VAR snob = "Lavender"
VAR webdev = "Tali"
VAR comic = "Kent"
VAR lovelace = "Ada"
VAR trader = "???"
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
VAR weather = "rain"//set as empty string to stop
VAR save = ""
VAR hasFile = false
#character sprites
LIST characters = lavender, ada, pandora, kent, tali, cas, stranger
LIST Ada = adalina_displeased, (adalina_neutral),adalina_pleased
LIST Kent = kent_shocked, (kent_normal), kent_amused, kent_happy, kent_side_normal, kent_side_serious, kent_upset, kent_sad
LIST Tali = tali_shocked, (tali_normal), tali_sad, tali_smirk, tali_talking_side,tali_talking_forward, tali_upset, tali_awe, tali_happy_closed, tali_exasperated, tali_happy, tali_serious
LIST Lavender = (lavender_normal), lavender_sad,lavender_thinking, lavender_angry, lavender_shocked,lavender_happy, lavender_crying, lavender_mean, lavender_serious, lavender_tears_crying
LIST Pandora = (pandora_normal), pandora_mean, pandora_normal2, pandora_happy, pandora_suggestive, pandora_sad, pandora_shocked, pandora_excited, pandora_pensive, pandora_annoyed, pandora_confused, pandora_sleeping
LIST Stranger = (shadow_amused), shadow_neutral, shadow_sad
LIST Cas = (cas_left_look), cas_right_look, cas_straight_look, cas_annoyed
LIST allbooks = Alice_in_Wonderland, Howls_Moving_Castle, t_lion_witch_wardrobe, fantasy_7, nightthunder_89, LUX_222, satin_rain_1, myths_legends, LUX_394, sentinel_105, fantasy_dragon_heart,black_goat,wildfyre_678,LUX_1076,LUX_666, hypnos_55,
LUX_360,lady_darkness_373,forest_god,t_secret_garden,LUX_uniform,x_a_235,the_glass_lab,the_wiz_oz,LUX_rain_proof,mr_therm,ring_thorns,the_hobbit,LUX_gear,bioworld,heart_lies,matilda,LUX_ppe,cybershake,queendom_heretic,alice_looking_glass,LUX_acid_rain, lord_of_dusk


VAR deliveryToday = 0
VAR effectName = ""
VAR textBoxIsActive = "true"
VAR currentSpeaker = ""
VAR extraText = ""
VAR extraTextLog = ""
VAR funds = 300.0
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
VAR snappedOut = false
VAR gaveTraderFile= true
//VAR strangerbooks = "false"
VAR worstEnding = "no"


//Books prices settings
//the base price of each book on the first day
VAR lavenderBase = 200
VAR pandoraBase = 20
VAR taliBase = 50
VAR kentBase = 100

//how much the value increases per day
VAR lavenderMargin = 50
VAR pandoraMargin = 10
VAR taliMargin = 20
VAR kentMargin = 20

//how much to add onto the price when you sell the book
VAR lavenderProfit = 200
VAR pandoraProfit = 0
VAR taliProfit = 20
VAR kentProfit = 20

//book prices
VAR lbd1 = 0
VAR lbd2 = 0
VAR lbd3 = 0
VAR lbd4 = 0
VAR lbd5 = 0
VAR lbd8 = 0
VAR lbd9 = 0
VAR lbd10 = 0
VAR lbd11 = 0

VAR tbd1 = 0
VAR tbd2 = 0
VAR tbd3 = 0
VAR tbd4 = 0
VAR tbd5 = 0
VAR tbd8 = 0
VAR tbd9 = 0
VAR tbd10 = 0
VAR tbd11 = 0

VAR kbd1 = 0
VAR kbd2 = 0
VAR kbd3 = 0
VAR kbd4 = 0
VAR kbd5 = 0
VAR kbd8 = 0
VAR kbd9 = 0
VAR kbd10 = 0
VAR kbd11 = 0


VAR pbd1 = 0
VAR pbd2 = 0
VAR pbd3 = 0
VAR pbd4 = 0
VAR pbd5 = 0
VAR pbd8 = 0
VAR pbd9 = 0
VAR pbd10 = 0
VAR pbd11 = 0




