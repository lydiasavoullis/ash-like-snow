==test_shop==
->goto_shop->
->read_check->
->kent_book_check->
->lavender_book_check->
->tali_book_check->
~day+=1
+Go to day {day}
->test_shop

==goto_shop==
~currentSpeaker=""
~shop="true"
~button="book"
Remaining funds: {funds}
+ Go to children's fiction
->buy_childrens_books

*{day>=1}{funds>=200}[LUX Autumn issue 222(£200 : Sells for £400)]
~funds -= 200
~deliveryToday+=1
~allbooks+=LUX_222
->goto_shop
#kent 1
*{day>=1}{funds>=100}[Night Thunder \#89(£100 : Sells for £120)]
~funds -= 100
~deliveryToday+=1
~allbooks+=nightthunder_89
->goto_shop
#tali 1
*{day>=1}{funds>=50}[The King’s Crown: The War of the Seven Swords: Book 7 (£50 : Sells for £70)]
~funds -= 50
~deliveryToday+=1
~allbooks+=fantasy_7
->goto_shop
*{day>=2}{funds>=300}[LUX Spring issue 394(£300 : Sells for £500)]
~funds -= 300
~deliveryToday+=1
~allbooks+=LUX_394
->goto_shop
#kent 2
*{day>=2}{funds>=105}[Satin Rain \#1(£105 : Sells for £125)]
~funds -= 105
~deliveryToday+=1
~allbooks+=satin_rain_1
->goto_shop
#tali 2
*{day>=2}{funds>=67.5}[The Betrayal of the Dragon's Heart (£67.50 : Sells for £87.50)]
~funds -= 67.5
~deliveryToday+=1
~allbooks+=fantasy_dragon_heart
->goto_shop
Remaining funds: {funds}
*{day>=3}{funds>=400}[LUX Winter issue 1076(£400 : Sells for £600)]
~funds -= 400
~deliveryToday+=1
~allbooks+=LUX_1076
->goto_shop
#kent 3
*{day>=3}{funds>=140}[The Sentinel \#105(£140 : Sells for £160)]
~funds -= 140
~deliveryToday+=1
~allbooks+=sentinel_105
->goto_shop
#tali 3
*{day>=3}{funds>=90}[The Black Goat (£90: Sells for £110)]
~funds -= 90
~deliveryToday+=1
~allbooks+=black_goat
->goto_shop

*{day>=4}{funds>=920}[LUX SPECIAL issue 666(£920: Sells for £1120)]
~funds -= 920
~deliveryToday+=1
~allbooks+=LUX_666
->goto_shop
#kent 4
*{day>=4}{funds>=230}[Wildfyre \#678(£230: Sells for £250)]
~funds -= 230
~deliveryToday+=1
~allbooks+=wildfyre_678
->goto_shop
#tali 4
*{day>=4}{funds>=103.5}[The God of the Forest (£103.50: Sells for £123.50)]
~funds -= 103.5
~deliveryToday+=1
~allbooks+=forest_god
->goto_shop
*{day>=5}{funds>=1500}[LUX pet accessories issue 360(£1500: Sells for £1700)]
~funds -= 1500
~deliveryToday+=1
~allbooks+=LUX_360
->goto_shop
#kent 5
*{day>=5}{funds>=175}[Hypnos \#55(£175: Sells for £195)]
~funds -= 175
~deliveryToday+=1
~allbooks+=hypnos_55
->goto_shop
#tali 5
*{day>=5}{funds>=112.5}[The Glass Labyrinth (£112.50: Sells for £132.50)]
~funds -= 112.5
~deliveryToday+=1
~allbooks+=the_glass_lab
->goto_shop

*{day>=8}{funds>=1560}[LUX special flight attendant uniform issue (£1560: Sells for £1760)]
~funds -= 1560
~deliveryToday+=1
~allbooks+=LUX_uniform
->goto_shop
#kent
*{day>=8}{funds>=182}[Lady of Darkness \#373(£182: Sells for £202)]
~funds -= 182
~deliveryToday+=1
~allbooks+=lady_darkness_373
->goto_shop
// *{day>=8}{funds>=70}[X and A \#235(£70: Sells for £90)]
// ~funds -= 70
// ~deliveryToday+=1
// ~allbooks+=x_a_235
// ->goto_shop
#tali
*{day>=8}{funds>=117}[The Ring of Thorns(£117 Sells for £137)]
~funds -= 117
~deliveryToday+=1
~allbooks+=ring_thorns
->goto_shop

*{day>=9}{funds>=1620}[LUX acid rain proof chic (£1620: Sells for £1820)]
~funds -= 1620
~deliveryToday+=1
~allbooks+=LUX_rain_proof
->goto_shop
#kent
*{day>=9}{funds>=189}[Mr. Thermistor \#95(£189: Sells for £209)]
~funds -= 189
~deliveryToday+=1
~allbooks+=mr_therm
#tali
*{day>=9}{funds>=121.5}[The Lord of Dusk \#95(£121.50: Sells for £141.50)]
~funds -= 121.5
~deliveryToday+=1
~allbooks+=lord_of_dusk
->goto_shop

*{day>=10}{funds>=1680}[LUX protective gear issue 331 (£1680: Sells for £1880)]
~funds -= 1680
~deliveryToday+=1
~allbooks+=LUX_gear
->goto_shop
#kent
*{day>=10}{funds>=196}[Bioworld \#111(£196: Sells for £216)]
~funds -= 196
~deliveryToday+=1
~allbooks+=bioworld
->goto_shop
*{day>=10}{funds>=126}[Where the Heart Lies (£126: Sells for £146)]
~funds -= 126
~deliveryToday+=1
~allbooks+=heart_lies
->goto_shop
Remaining funds: {funds}
*{day>=11}{funds>=1800}[LUX PPE special issue (£1800: Sells for £2000)]
~funds -= 1800
~deliveryToday+=1
~allbooks+=LUX_ppe
->goto_shop
#kent
*{day>=11}{funds>=210}[Cybershake \#235(£210: Sells for £230)]
~funds -= 210
~deliveryToday+=1
~allbooks+=cybershake
->goto_shop
*{day>=11}{funds>=135}[Queendom Heretic (£135: Sells for £155)]
~funds -= 135
~deliveryToday+=1
~allbooks+=queendom_heretic
->goto_shop
+Finish shopping
~music = ""
~shop=""
~button=""
->->
==buy_childrens_books==
Maybe I could get something for {android}. I'm sure she'd love a new book.
Remaining funds: {funds}
*{day>=1}{funds>=20}[Myths and Legends (£20 : no sell price)] 
~funds -= 20
~deliveryToday+=1
~allbooks+=myths_legends
->buy_childrens_books
*{day>=2}{funds>=30}[Buy Alice in Wonderland (£30 : no sell price)]
~funds -= 30
~deliveryToday+=1
~allbooks+=Alice_in_Wonderland
->buy_childrens_books
*{day>=3}{funds>=40}[Buy The Lion the Witch and the Wardrobe (£40 : no sell price)]
~funds -= 40
~deliveryToday+=1
~allbooks+=t_lion_witch_wardrobe
->buy_childrens_books
*{day>=4}{funds>=46}[Buy Howl's Moving Castle (£46 : no sell price)]
~funds -= 46
~deliveryToday+=1
~allbooks+=Howls_Moving_Castle
->buy_childrens_books
*{day>=5}{funds>=50}[Buy The Wizard of Oz (£50 : no sell price)]
~funds -= 50
~deliveryToday+=1
~allbooks+=the_wiz_oz
->buy_childrens_books
*{day>=8}{funds>=52}[Buy The Secret Garden (£52 : no sell price)]
~funds -= 52
~deliveryToday+=1
~allbooks+=t_secret_garden
->buy_childrens_books
*{day>=9}{funds>=54}[Buy The Hobbit (£54 : no sell price)]
~funds -= 54
~deliveryToday+=1
~allbooks+=the_hobbit
->buy_childrens_books
*{day>=10}{funds>=56}[Buy Matilda (£56 : no sell price)]
~funds -= 56
~deliveryToday+=1
~allbooks+=matilda
->buy_childrens_books
*{day>=11}{funds>=60}[Buy Alice Through the Looking-Glass (£60 : no sell price)]
~funds -= 60
~deliveryToday+=1
~allbooks+=alice_looking_glass
->buy_childrens_books
+Back to main shop
->goto_shop