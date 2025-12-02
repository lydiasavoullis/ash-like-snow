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
+ [Go to children's fiction]
{~I bet {android} would love a new book.| Maybe a new book for {android}?| Let's see if there's anything I can get {android}.}
//this logic is true when you are 'in the know' but you haven't gotten all the books you need yet
{(!hasFile && snappedOut && allbooks !? Alice_in_Wonderland && allbooks !? Howls_Moving_Castle && allbooks !? t_lion_witch_wardrobe): And I still need some of those books Ada asked for: Alice in Wonderland, Howl's Moving Castle and The Lion the Witch and the Wardrobe.}//|Otherwise this is written
{(!hasFile && day>7 && snappedOut && allbooks !? Alice_in_Wonderland && allbooks !? Howls_Moving_Castle && allbooks !? t_lion_witch_wardrobe): And that weird guy said I need: The rabbithole, the castle and the wardrobe. Why am I thinking about this now?}
->buy_childrens_books
//!(allbooks ? LUX_222)
+{day>=1}{allbooks !? LUX_222}[LUX Autumn issue 222(£{lbd1} : Sells for £{(lbd1+lavenderProfit)})]
{buy_book(LUX_222, lbd1)}
->goto_shop
#kent 1
+{day>=1}{allbooks !? nightthunder_89}[Night Thunder \#89(£{kbd1} : Sells for £{kbd1+kentProfit})]
{buy_book(nightthunder_89, kbd1)}
->goto_shop
#tali 1
+{day>=1}{allbooks !? fantasy_7}[The King’s Crown: The War of the Seven Swords: Book 7 (£{tbd1} : Sells for £{tbd1+taliProfit})]
{buy_book(fantasy_7, tbd1)}
->goto_shop
+{day>=2}{allbooks !? LUX_394}[LUX Spring issue 394(£{lbd2} : Sells for £{(lbd2+lavenderProfit)})]
{buy_book(LUX_394, lbd2)}
->goto_shop
#kent 2
+{day>=2}{allbooks !? satin_rain_1}[Satin Rain \#1(£{kbd2} : Sells for £{kbd2+kentProfit})]
{buy_book(satin_rain_1, kbd2)}
->goto_shop
#tali 2
+{day>=2}{allbooks !? fantasy_dragon_heart}[The Betrayal of the Dragon's Heart (£{tbd2} : Sells for £{tbd2+taliProfit})]
{buy_book(fantasy_dragon_heart, tbd2)}
->goto_shop
Remaining funds: {funds}
+{day>=3}{allbooks !? LUX_1076}[LUX Winter issue 1076(£{lbd3} : Sells for £{(lbd3+lavenderProfit)})]
{buy_book(LUX_1076, lbd3)}
->goto_shop
#kent 3
+{day>=3}{allbooks !? sentinel_105}[The Sentinel \#105(£{kbd3} : Sells for £{(kbd3+kentProfit)})]
{buy_book(sentinel_105, kbd3)}
->goto_shop
#tali 3
+{day>=3}{allbooks !? black_goat}[The Black Goat (£{tbd3}: Sells for £{(tbd3+taliProfit)})]
{buy_book(black_goat, tbd3)}
->goto_shop

+{day>=4}{allbooks !? LUX_666}[LUX SPECIAL issue 666(£{lbd4}: Sells for £{(lbd4+lavenderProfit)})]
{buy_book(LUX_666, lbd4)}
->goto_shop
#kent 4
+{day>=4}{allbooks !? wildfyre_678}[Wildfyre \#678(£{kbd4}: Sells for £{(kbd4+kentProfit)})]
{buy_book(wildfyre_678, kbd4)}
->goto_shop
#tali 4
+{day>=4}{allbooks !? forest_god}[The God of the Forest (£{tbd4}: Sells for £{(tbd4+taliProfit)})]
{buy_book(forest_god, tbd4)}
->goto_shop
+{day>=5}{allbooks !? LUX_360}[LUX pet accessories issue 360(£{lbd5}: Sells for £{(lbd5+lavenderProfit)})]
{buy_book(LUX_360, lbd5)}
->goto_shop
#kent 5
+{day>=5}{allbooks !? hypnos_55}[Hypnos \#55(£{kbd5}: Sells for £{(kbd5+kentProfit)})]
{buy_book(hypnos_55, kbd5)}
->goto_shop
#tali 5
+{day>=5}{allbooks !? the_glass_lab}[The Glass Labyrinth (£{tbd5}: Sells for £{(tbd5+taliProfit)})]
{buy_book(the_glass_lab, tbd5)}
->goto_shop

+{day>=8}{allbooks !? LUX_uniform}[LUX special flight attendant uniform issue (£{lbd8}: Sells for £{(lbd8+lavenderProfit)})]
{buy_book(LUX_uniform, lbd8)}
->goto_shop
#kent
+{day>=8}{allbooks !? lady_darkness_373}[Lady of Darkness \#373(£{kbd8}: Sells for £{(kbd8+kentProfit)})]
{buy_book(lady_darkness_373, kbd8)}
->goto_shop
// +{day>=8}{funds>=70}[X and A \#235(£70: Sells for £90)]
// ~funds -= 70
// ~deliveryToday+=1
// ~allbooks+=x_a_235
// ->goto_shop
#tali
+{day>=8}{allbooks !? ring_thorns}[The Ring of Thorns(£{tbd8} Sells for £{(tbd8+taliProfit)})]
{buy_book(ring_thorns, tbd8)}
->goto_shop

+{day>=9}{allbooks !? LUX_rain_proof}[LUX acid rain proof chic (£{lbd9}: Sells for £{(lbd9+lavenderProfit)})]
{buy_book(LUX_rain_proof, lbd9)}
->goto_shop
#kent
+{day>=9}{allbooks !? mr_therm}[Mr. Thermistor \#95(£{kbd9}: Sells for £{(kbd9+kentProfit)})]
{buy_book(mr_therm, kbd9)}
->goto_shop

#tali
+{day>=9}{allbooks !? lord_of_dusk}[The Lord of Dusk \#95(£{tbd9}: Sells for £{(tbd9+taliProfit)})]
{buy_book(lord_of_dusk, tbd9)}
->goto_shop

+{day>=10}{allbooks !? LUX_gear}[LUX protective gear issue 331 (£{lbd10}: Sells for £{(lbd10+lavenderProfit)})]
{buy_book(LUX_gear, lbd10)}
->goto_shop
#kent
+{day>=10}{allbooks !? bioworld}[Bioworld \#111(£{kbd10}: Sells for £{(kbd10+kentProfit)})]
{buy_book(bioworld, kbd10)}
->goto_shop
+{day>=10}{allbooks !? heart_lies}[Where the Heart Lies (£{tbd10}: Sells for £{(tbd10+taliProfit)})]
{buy_book(heart_lies, tbd10)}
->goto_shop
Remaining funds: {funds}
+{day>=11}{allbooks !? LUX_ppe}[LUX PPE special issue (£{lbd11}: Sells for £{(lbd11+lavenderProfit)})]
{buy_book(LUX_ppe, lbd11)}
->goto_shop
#kent
+{day>=11}{allbooks !? cybershake}[Cybershake \#235(£{kbd11}: Sells for £{(kbd11+kentProfit)})]
{buy_book(cybershake, kbd11)}
->goto_shop
+{day>=11}{allbooks !? queendom_heretic}[Queendom Heretic (£{tbd11}: Sells for £{(tbd11+taliProfit)})]
{buy_book(queendom_heretic, tbd11)}
->goto_shop
+[Finish shopping]
~music = ""
~shop=""
~button=""
->->
==buy_childrens_books==
Remaining funds: {funds}
+{day>=1}{allbooks !? myths_legends}[Myths and Legends (£{pbd1} : no sell price)] 
{buy_book(myths_legends, pbd1)}
->buy_childrens_books
+{day>=2}{allbooks !? Alice_in_Wonderland}[Buy Alice in Wonderland (£{pbd2} : no sell price)]
{buy_book(Alice_in_Wonderland, pbd2)}
{(allbooks ? Alice_in_Wonderland) && (allbooks ? Howls_Moving_Castle) && (allbooks ? t_lion_witch_wardrobe): -> receive_file}
->buy_childrens_books
+{day>=3}{allbooks !? t_lion_witch_wardrobe}[Buy The Lion the Witch and the Wardrobe (£{pbd3} : no sell price)]
{buy_book(t_lion_witch_wardrobe, pbd3)}
{(allbooks ? Alice_in_Wonderland) && (allbooks ? Howls_Moving_Castle) && (allbooks ? t_lion_witch_wardrobe): -> receive_file}
->buy_childrens_books
+{day>=4}{allbooks !? Howls_Moving_Castle}[Buy Howl's Moving Castle (£{pbd4} : no sell price)]
{buy_book(Howls_Moving_Castle, pbd4)}
{(allbooks ? Alice_in_Wonderland) && (allbooks ? Howls_Moving_Castle) && (allbooks ? t_lion_witch_wardrobe): -> receive_file}
->buy_childrens_books
+{day>=5}{allbooks !? the_wiz_oz}[Buy The Wizard of Oz (£{pbd5} : no sell price)]
{buy_book(the_wiz_oz, pbd5)}
->buy_childrens_books
+{day>=8}{allbooks !? t_secret_garden}[Buy The Secret Garden (£{pbd8} : no sell price)]
{buy_book(t_secret_garden, pbd8)}
->buy_childrens_books
+{day>=9}{allbooks !? the_hobbit}[Buy The Hobbit (£{pbd9} : no sell price)]
{buy_book(the_hobbit, pbd9)}
->buy_childrens_books
+{day>=10}{allbooks !? matilda}[Buy Matilda (£{pbd10} : no sell price)]
{buy_book(matilda, pbd10)}
->buy_childrens_books
+{day>=11}{allbooks !? alice_looking_glass}[Buy Alice Through the Looking-Glass (£{pbd11} : no sell price)]
{buy_book(alice_looking_glass, pbd11)}
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

===receive_file===
When you purchase the children's e-book, you receive an email.
The email has instructions to save this file to a USB.
When you open the file, it's unreadable.
It appears to be encrypted.
You copy it onto a USB.
~hasFile=true
->buy_childrens_books
