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
~shop="true"
~button="book"
Remaining funds: {funds}
+ Go to children's fiction
->buy_childrens_books

*{day>=1}{funds>=200}[LUX Autumn issue 222(£200)]
~funds -= 200
~deliveryToday+=1
~allbooks+=LUX_222
->goto_shop
*{day>=1}{funds>=100}[Night Thunder \#89(£100)]
~funds -= 100
~deliveryToday+=1
~allbooks+=nightthunder_89
->goto_shop
*{day>=1}{funds>=80}[Satin Rain \#1(£80)]
~funds -= 80
~deliveryToday+=1
~allbooks+=satin_rain_1
->goto_shop
*{day>=1}{funds>=50}[The King’s Crown: The War of the Seven Swords: Book 7 (£50)]
~funds -= 50
~deliveryToday+=1
~allbooks+=fantasy_7
->goto_shop
*{day>=2}{funds>=200}[LUX Spring issue 394(£200)]
~funds -= 200
~deliveryToday+=1
~allbooks+=LUX_394
->goto_shop
*{day>=2}{funds>=70}[The Sentinel \#105(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=sentinel_105
->goto_shop
*{day>=2}{funds>=50}[The Betrayal of the Dragon's Heart (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=fantasy_dragon_heart
->goto_shop
Remaining funds: {funds}
*{day>=3}{funds>=200}[LUX Winter issue 1076(£200)]
~funds -= 200
~deliveryToday+=1
~allbooks+=LUX_1076
->goto_shop
*{day>=3}{funds>=70}[Wildfyre \#678(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=wildfyre_678
->goto_shop
*{day>=3}{funds>=45}[The Black Goat (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=black_goat
->goto_shop
*{day>=4}{funds>=400}[LUX SPECIAL issue 666(£400)]
~funds -= 400
~deliveryToday+=1
~allbooks+=LUX_666
->goto_shop
*{day>=4}{funds>=100}[Hypnos \#55(£100)]
~funds -= 100
~deliveryToday+=1
~allbooks+=hypnos_55
->goto_shop
*{day>=4}{funds>=45}[The Lord of Dusk (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=lord_dusk
->goto_shop
*{day>=5}{funds>=600}[LUX pet accessories issue 360(£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_360
->goto_shop
*{day>=5}{funds>=70}[Lady of Darkness \#373(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=lady_darkness_373
->goto_shop
*{day>=5}{funds>=45}[The God of the Forest (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=forest_god
->goto_shop
->goto_shop
*{day>=8}{funds>=600}[LUX special flight attendant uniform issue (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_uniform
->goto_shop
*{day>=8}{funds>=70}[X and A \#235(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=x_a_235
->goto_shop
*{day>=8}{funds>=45}[The Glass Labyrinth (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=the_glass_lab
->goto_shop
*{day>=9}{funds>=600}[LUX acid rain proof chic (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_rain_proof
->goto_shop
*{day>=9}{funds>=70}[Mr. Thermistor \#95(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=mr_therm
->goto_shop
*{day>=9}{funds>=45}[The Ring of Thorns(£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=ring_thorns
->goto_shop
*{day>=10}{funds>=600}[LUX protective gear issue 331 (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_gear
->goto_shop
+{day>=10}{funds>=70}[Bioworld \#111(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=bioworld
->goto_shop
*{day>=10}{funds>=45}[Where the Heart Lies (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=heart_lies
->goto_shop
Remaining funds: {funds}
*{day>=11}{funds>=600}[LUX PPE special issue (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=LUX_ppe
->goto_shop
*{day>=11}{funds>=70}[Cybershake \#235(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=cybershake
->goto_shop
*{day>=11}{funds>=45}[Queendom Heretic (£45)]
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
*{day>=2}{funds>=20}[Buy Alice in Wonderland (£20 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=Alice_in_Wonderland
->buy_childrens_books
*{day>=3}{funds>=20}[Buy The Lion the Witch and the Wardrobe (£20 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=t_lion_witch_wardrobe
->buy_childrens_books
*{day>=4}{funds>=20}[Buy Howl's Moving Castle (£20 : no sell price)]
~funds -= 20
~deliveryToday+=1
~allbooks+=Howls_Moving_Castle
->buy_childrens_books
*{day>=5}[Buy The Wizard of Oz (£20 : no sell price)]
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