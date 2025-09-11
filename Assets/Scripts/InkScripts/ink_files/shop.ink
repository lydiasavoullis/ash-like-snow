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
*{day>=2}{funds>=340}[LUX Spring issue 394(£340 : Sells for £540)]
~funds -= 340
~deliveryToday+=1
~allbooks+=LUX_394
->goto_shop
#kent 2
*{day>=2}{funds>=119}[Satin Rain \#1(£119 : Sells for £139)]
~funds -= 119
~deliveryToday+=1
~allbooks+=satin_rain_1
->goto_shop
#tali 2
*{day>=2}{funds>=76.5}[The Betrayal of the Dragon's Heart (£76.50 : Sells for £96.50)]
~funds -= 76.5
~deliveryToday+=1
~allbooks+=fantasy_dragon_heart
->goto_shop
Remaining funds: {funds}
*{day>=3}{funds>=460}[LUX Winter issue 1076(£460 : Sells for £660)]
~funds -= 460
~deliveryToday+=1
~allbooks+=LUX_1076
->goto_shop
#kent 3
*{day>=3}{funds>=161}[The Sentinel \#105(£161 : Sells for £181)]
~funds -= 161
~deliveryToday+=1
~allbooks+=sentinel_105
->goto_shop
#tali 3
*{day>=3}{funds>=103.5}[The Black Goat (£103.50: Sells for £123.50)]
~funds -= 103.5
~deliveryToday+=1
~allbooks+=black_goat
->goto_shop

*{day>=4}{funds>=840}[LUX SPECIAL issue 666(£840: Sells for £1040)]
~funds -= 840
~deliveryToday+=1
~allbooks+=LUX_666
->goto_shop
#kent 4
*{day>=4}{funds>=210}[Wildfyre \#678(£210: Sells for £230)]
~funds -= 161
~deliveryToday+=1
~allbooks+=wildfyre_678
->goto_shop
#tali 4
*{day>=4}{funds>=94.50}[The God of the Forest (£94.50: Sells for £114.50)]
~funds -= 94.50
~deliveryToday+=1
~allbooks+=forest_god
->goto_shop
*{day>=5}{funds>=1200}[LUX pet accessories issue 360(£1200: Sells for £1400)]
~funds -= 1200
~deliveryToday+=1
~allbooks+=LUX_360
->goto_shop
#kent 5
*{day>=5}{funds>=210}[Hypnos \#55(£210: Sells for £230)]
~funds -= 210
~deliveryToday+=1
~allbooks+=hypnos_55
->goto_shop
#tali 5
*{day>=5}{funds>=90}[The Glass Labyrinth (£90: Sells for £110)]
~funds -= 90
~deliveryToday+=1
~allbooks+=the_glass_lab
->goto_shop
*{day>=8}{funds>=600}[LUX special flight attendant uniform issue (£600: Sells for £800)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_uniform
->goto_shop
#kent
*{day>=8}{funds>=140}[Lady of Darkness \#373(£140: Sells for £160)]
~funds -= 140
~deliveryToday+=1
~allbooks+=lady_darkness_373
->goto_shop
// *{day>=8}{funds>=70}[X and A \#235(£70: Sells for £90)]
// ~funds -= 70
// ~deliveryToday+=1
// ~allbooks+=x_a_235
// ->goto_shop
#tali

*{day>=9}{funds>=600}[LUX acid rain proof chic (£600: Sells for £800)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_rain_proof
->goto_shop
#kent
*{day>=9}{funds>=70}[Mr. Thermistor \#95(£70: Sells for £90)]
~funds -= 70
~deliveryToday+=1
~allbooks+=mr_therm
#tali
*{day>=9}{funds>=45}[The Lord of Dusk \#95(£45: Sells for £65)]
~funds -= 45
~deliveryToday+=1
~allbooks+=lord_of_dusk
->goto_shop
#tali
*{day>=9}{funds>=45}[The Ring of Thorns(£45: Sells for £65)]
~funds -= 45
~deliveryToday+=1
~allbooks+=ring_thorns
->goto_shop
*{day>=10}{funds>=600}[LUX protective gear issue 331 (£600: Sells for £800)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_gear
->goto_shop
#kent
*{day>=10}{funds>=70}[Bioworld \#111(£70: £90)]
~funds -= 70
~deliveryToday+=1
~allbooks+=bioworld
->goto_shop
*{day>=10}{funds>=45}[Where the Heart Lies (£45: Sells for £65)]
~funds -= 45
~deliveryToday+=1
~allbooks+=heart_lies
->goto_shop
Remaining funds: {funds}
*{day>=11}{funds>=600}[LUX PPE special issue (£600: Sells for £800)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_ppe
->goto_shop
#kent
*{day>=11}{funds>=70}[Cybershake \#235(£70: Sells for £90)]
~funds -= 70
~deliveryToday+=1
~allbooks+=cybershake
->goto_shop
*{day>=11}{funds>=45}[Queendom Heretic (£45: Sells for £65)]
~funds -= 45
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
*{day>=2}{funds>=20}[Buy Alice in Wonderland (£34 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=Alice_in_Wonderland
->buy_childrens_books
*{day>=3}{funds>=20}[Buy The Lion the Witch and the Wardrobe (£46 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=t_lion_witch_wardrobe
->buy_childrens_books
*{day>=4}{funds>=20}[Buy Howl's Moving Castle (£42 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=Howls_Moving_Castle
->buy_childrens_books
*{day>=5}[Buy The Wizard of Oz (£40 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=the_wiz_oz
->buy_childrens_books
*{day>=8}{funds>=20}[Buy The Secret Garden (£20 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=t_secret_garden
->buy_childrens_books
*{day>=9}{funds>=20}[Buy The Hobbit (£20 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=the_hobbit
->buy_childrens_books
*{day>=10}{funds>=20}[Buy Matilda (£20 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=matilda
->buy_childrens_books
*{day>=11}{funds>=20}[Buy Alice Through the Looking-Glass (£20 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=alice_looking_glass
->buy_childrens_books
+Back to main shop
->goto_shop