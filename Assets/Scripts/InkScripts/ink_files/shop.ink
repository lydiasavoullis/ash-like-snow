==goto_shop==
~button="book"
Remaining funds: {funds}
+ Go to children's fiction
->buy_childrens_books

*{day==1}{funds>=200}[Togue Autumn issue 222(£200)]
~funds -= 200
~deliveryToday+=1
~allbooks+=togue_222
->goto_shop
*{day==1}{funds>=100}[Zebra man \#89(£100)]
~funds -= 100
~deliveryToday+=1
~allbooks+=zebraman_89
->goto_shop
*{day==1}{funds>=80}[Giraffe woman \#1(£80)]
~funds -= 80
~deliveryToday+=1
~allbooks+=giraffe_1
->goto_shop
*{day==1}{funds>=50}[The King’s Crown: The War of the Seven Swords: Book 7 (£50)]
~funds -= 50
~deliveryToday+=1
~allbooks+=fantasy_7
->goto_shop
*{day==2}{funds>=200}[Togue Spring issue 394(£200)]
~funds -= 200
~deliveryToday+=1
~allbooks+=togue_394
->goto_shop
*{day==2}{funds>=100}[The Sentinel \#105(£70)]
~funds -= 70
~deliveryToday+=1
~allbooks+=sentinel_105
->goto_shop
*{day==2}{funds>=50}[The Betrayal of the Dragon's Heart (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=fantasy_dragon_heart
->goto_shop
Remaining funds: {funds}
*{day==3}{funds>=200}[Togue Winter issue 1076(£200]
~funds -= 250
~deliveryToday+=1
~allbooks+=togue_1076
->goto_shop
*{day==3}{funds>=100}[Wildfyre \#678(£100)]
~funds -= 70
~deliveryToday+=1
~allbooks+=wildfyre_678
->goto_shop
*{day==3}{funds>=50}[The Black Goat (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=black_goat
->goto_shop
*{day==4}{funds>=200}[Togue SPECIAL issue 666(£400)]
~funds -= 400
~deliveryToday+=1
~allbooks+=togue_666
->goto_shop
+{day==4}{funds>=100}[Hypnos \#55(£100)]
~funds -= 70
~deliveryToday+=1
~allbooks+=hypnos_55
->goto_shop
*{day==4}{funds>=50}[The Lord of Dusk (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=lord_dusk
->goto_shop
*{day==5}{funds>=200}[Togue pet accessories issue 360(£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=togue_360
->goto_shop
*{day==5}{funds>=100}[Lady of Darkness \#373(£100)]
~funds -= 70
~deliveryToday+=1
~allbooks+=lady_darkness_373
->goto_shop
*{day==5}{funds>=50}[The God of the Forest (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=forest_god
->goto_shop
->goto_shop
*{day==8}{funds>=200}[Togue special flight attendant uniform issue (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=togue_uniform
->goto_shop
*{day==8}{funds>=100}[X and A \#235(£100)]
~funds -= 70
~deliveryToday+=1
~allbooks+=x_a_235
->goto_shop
*{day==8}{funds>=50}[The Glass Labyrinth (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=the_glass_lab
->goto_shop
*{day==9}{funds>=200}[Togue acid rain proof chic (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=togue_rain_proof
->goto_shop
*{day==9}{funds>=100}[Mr. Thermistor \#95(£100)]
~funds -= 70
~deliveryToday+=1
~allbooks+=mr_therm
->goto_shop
*{day==9}{funds>=50}[The Ring of Thorns(£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=ring_thorns
->goto_shop
*{day==10}{funds>=200}[Togue protective gear issue 331 (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=togue_gear
->goto_shop
+{day==10}{funds>=100}[Bioworld \#111(£100)]
~funds -= 70
~deliveryToday+=1
~allbooks+=bioworld
->goto_shop
*{day==10}{funds>=50}[Where the Heart Lies (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=heart_lies
->goto_shop
Remaining funds: {funds}
*{day==11}{funds>=200}[Togue PPE special issue (£600)]
~funds -= 600
~deliveryToday+=1
~allbooks+=togue_ppe
->goto_shop
*{day==11}{funds>=100}[Cybershake \#235(£100)]
~funds -= 70
~deliveryToday+=1
~allbooks+=cybershake
->goto_shop
*{day==11}{funds>=50}[Queendom Heretic (£45)]
~funds -= 45
~deliveryToday+=1
~allbooks+=queendom_heretic
->goto_shop
+Finish shopping
->->
==buy_childrens_books==
Remaining funds: {funds}
*{day>=1}[Greek Myths and Legends (£20)] 
~funds -= 20
~deliveryToday+=1
~allbooks+=myths_legends
->buy_childrens_books
*{day>=2}{funds>=20}[Buy Alice in Wonderland (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=Alice_in_Wonderland
->buy_childrens_books
*{day>=3}[Buy The Lion the Witch and the Wardrobe (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=t_lion_witch_wardrobe
->buy_childrens_books
*{day>=4}[Buy Howl's Moving Castle (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=Howls_Moving_Castle
->buy_childrens_books
*{day>=5}[Buy The Wizard of Oz (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=the_wiz_oz
->buy_childrens_books
*{day>=8}[Buy The Secret Garden (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=t_secret_garden
->buy_childrens_books
*{day>=9}[Buy The Hobbit (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=the_hobbit
->buy_childrens_books
*{day>=10}[Buy Matilda (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=matilda
->buy_childrens_books
*{day>=11}[Buy Matilda (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=matilda
->buy_childrens_books
*{day>=11}[Buy Alice Through the Looking-Glass (£20)]
~funds -= 20
~deliveryToday+=1
~allbooks+=alice_looking_glass
->buy_childrens_books
+Back to main shop
->goto_shop