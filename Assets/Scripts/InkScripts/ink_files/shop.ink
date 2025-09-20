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
//!(allbooks ? LUX_222)
+{day>=1}{allbooks !? LUX_222}[LUX Autumn issue 222(£200 : Sells for £400)]
{buy_book(LUX_222, 200)}
->goto_shop
#kent 1
+{day>=1}{allbooks !? nightthunder_89}[Night Thunder \#89(£100 : Sells for £120)]
{buy_book(nightthunder_89, 100)}
->goto_shop
#tali 1
+{day>=1}{allbooks !? fantasy_7}[The King’s Crown: The War of the Seven Swords: Book 7 (£50 : Sells for £70)]
{buy_book(fantasy_7, 50)}
->goto_shop
+{day>=2}{allbooks !? LUX_394}[LUX Spring issue 394(£300 : Sells for £500)]
{buy_book(LUX_394, 300)}
->goto_shop
#kent 2
+{day>=2}{allbooks !? satin_rain_1}[Satin Rain \#1(£105 : Sells for £125)]
{buy_book(satin_rain_1, 105)}
->goto_shop
#tali 2
+{day>=2}{allbooks !? fantasy_dragon_heart}[The Betrayal of the Dragon's Heart (£67.50 : Sells for £87.50)]
{buy_book(fantasy_dragon_heart, 67.5)}
->goto_shop
Remaining funds: {funds}
+{day>=3}{allbooks !? LUX_1076}[LUX Winter issue 1076(£400 : Sells for £600)]
{buy_book(LUX_1076, 400)}
->goto_shop
#kent 3
+{day>=3}{allbooks !? sentinel_105}[The Sentinel \#105(£140 : Sells for £160)]
{buy_book(sentinel_105, 140)}
->goto_shop
#tali 3
+{day>=3}{allbooks !? black_goat}[The Black Goat (£90: Sells for £110)]
{buy_book(black_goat, 90)}
->goto_shop

+{day>=4}{allbooks !? LUX_666}[LUX SPECIAL issue 666(£920: Sells for £1120)]
{buy_book(LUX_666, 920)}
->goto_shop
#kent 4
+{day>=4}{allbooks !? wildfyre_678}[Wildfyre \#678(£230: Sells for £250)]
{buy_book(wildfyre_678, 230)}
->goto_shop
#tali 4
+{day>=4}{allbooks !? forest_god}[The God of the Forest (£103.50: Sells for £123.50)]
{buy_book(forest_god, 103.50)}
->goto_shop
+{day>=5}{allbooks !? LUX_360}[LUX pet accessories issue 360(£1500: Sells for £1700)]
{buy_book(LUX_360, 1500)}
->goto_shop
#kent 5
+{day>=5}{allbooks !? hypnos_55}[Hypnos \#55(£175: Sells for £195)]
{buy_book(hypnos_55, 175)}
->goto_shop
#tali 5
+{day>=5}{allbooks !? the_glass_lab}[The Glass Labyrinth (£112.50: Sells for £132.50)]
{buy_book(the_glass_lab, 112.50)}
->goto_shop

+{day>=8}{allbooks !? LUX_uniform}[LUX special flight attendant uniform issue (£1560: Sells for £1760)]
{buy_book(LUX_uniform, 1560)}
->goto_shop
#kent
+{day>=8}{allbooks !? lady_darkness_373}[Lady of Darkness \#373(£182: Sells for £202)]
{buy_book(lady_darkness_373, 182)}
->goto_shop
// +{day>=8}{funds>=70}[X and A \#235(£70: Sells for £90)]
// ~funds -= 70
// ~deliveryToday+=1
// ~allbooks+=x_a_235
// ->goto_shop
#tali
+{day>=8}{allbooks !? ring_thorns}[The Ring of Thorns(£117 Sells for £137)]
{buy_book(ring_thorns, 117)}
->goto_shop

+{day>=9}{allbooks !? LUX_rain_proof}[LUX acid rain proof chic (£1620: Sells for £1820)]
{buy_book(LUX_rain_proof, 1620)}
->goto_shop
#kent
+{day>=9}{allbooks !? mr_therm}[Mr. Thermistor \#95(£189: Sells for £209)]
{buy_book(mr_therm, 189)}
->goto_shop

#tali
+{day>=9}{allbooks !? lord_of_dusk}[The Lord of Dusk \#95(£121.50: Sells for £141.50)]
{buy_book(lord_of_dusk, 121.50)}
->goto_shop

+{day>=10}{allbooks !? LUX_gear}[LUX protective gear issue 331 (£1680: Sells for £1880)]
{buy_book(LUX_gear, 1680)}
->goto_shop
#kent
+{day>=10}{allbooks !? bioworld}[Bioworld \#111(£196: Sells for £216)]
{buy_book(bioworld, 196)}
->goto_shop
+{day>=10}{allbooks !? heart_lies}[Where the Heart Lies (£126: Sells for £146)]
{buy_book(heart_lies, 126)}
->goto_shop
Remaining funds: {funds}
+{day>=11}{allbooks !? LUX_ppe}[LUX PPE special issue (£1800: Sells for £2000)]
{buy_book(LUX_ppe, 1800)}
->goto_shop
#kent
+{day>=11}{allbooks !? cybershake}[Cybershake \#235(£210: Sells for £230)]
{buy_book(cybershake, 210)}
->goto_shop
+{day>=11}{allbooks !? queendom_heretic}[Queendom Heretic (£135: Sells for £155)]
{buy_book(queendom_heretic, 135)}
->goto_shop
+[Finish shopping]
~music = ""
~shop=""
~button=""
->->
==buy_childrens_books==
Remaining funds: {funds}
+{day>=1}{allbooks !? myths_legends}[Myths and Legends (£20 : no sell price)] 
{buy_book(myths_legends, 20)}
->buy_childrens_books
+{day>=2}{allbooks !? Alice_in_Wonderland}[Buy Alice in Wonderland (£30 : no sell price)]
{buy_book(Alice_in_Wonderland, 30)}
->buy_childrens_books
+{day>=3}{allbooks !? t_lion_witch_wardrobe}[Buy The Lion the Witch and the Wardrobe (£40 : no sell price)]
{buy_book(t_lion_witch_wardrobe, 40)}
->buy_childrens_books
+{day>=4}{allbooks !? Howls_Moving_Castle}[Buy Howl's Moving Castle (£46 : no sell price)]
{buy_book(Howls_Moving_Castle, 46)}
->buy_childrens_books
+{day>=5}{allbooks !? the_wiz_oz}[Buy The Wizard of Oz (£50 : no sell price)]
{buy_book(the_wiz_oz, 50)}
->buy_childrens_books
+{day>=8}{allbooks !? t_secret_garden}[Buy The Secret Garden (£52 : no sell price)]
{buy_book(t_secret_garden, 52)}
->buy_childrens_books
+{day>=9}{allbooks !? the_hobbit}[Buy The Hobbit (£54 : no sell price)]
{buy_book(the_hobbit, 54)}
->buy_childrens_books
+{day>=10}{allbooks !? matilda}[Buy Matilda (£56 : no sell price)]
{buy_book(matilda, 56)}
->buy_childrens_books
+{day>=11}{allbooks !? alice_looking_glass}[Buy Alice Through the Looking-Glass (£60 : no sell price)]
{buy_book(alice_looking_glass, 60)}
->buy_childrens_books
+Back to main shop
->goto_shop

->goto_shop
=== function buy_book(bookName, bookPrice) === 
{(funds>=bookPrice):
    ~funds -= bookPrice
    ~deliveryToday+=1
    ~allbooks+=bookName
  - else:
    You don't have enough money.
}