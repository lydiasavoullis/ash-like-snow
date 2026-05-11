
INCLUDE Day_1.ink
INCLUDE Day_2.ink
INCLUDE Day_3.ink
INCLUDE Day_4.ink
INCLUDE Day_5.ink
INCLUDE Day_6.ink
INCLUDE Day_7.ink
INCLUDE Day_8.ink
INCLUDE Day_9.ink
INCLUDE Day_10.ink
INCLUDE Day_11.ink
INCLUDE Day_12.ink
INCLUDE Day_13.ink
INCLUDE Day_14.ink
INCLUDE general.ink
INCLUDE extra_dialogues.ink
INCLUDE truth_or_dare.ink
INCLUDE endings.ink
INCLUDE shop.ink
INCLUDE night.ink
//->day_1
// *[ending test]
// ->ending_check
*[Playtest (start from day 1)]
{set_all_book_prices()}
->day_1
*[Simulate shop (only play shop and book giving scenes)]
{set_all_book_prices()}
~scene="GenericScene"
¬
->next_day
==next_day
~funds=50000
{day<6 || day>7: Start day {day}|->skip_day}
->goto_shop->
#->read_check->
->tali_book_check->
->kent_book_check->
->lavender_book_check->
~day+=1
->next_day

==skip_day
It's weekend day {day}.
~day+=1
->next_day

// *day 1
// ->day_1
// *day 12
// ->start_incident
==night_rain==
~scene= "Night"
~textBoxIsActive="false"
->END
==night_fire==
~scene= "Fire"
->END
~scene= "ShopFront"
~textBoxIsActive="false"
1
2
3
~scene= "GenericScene"
1
2
3
~scene= "Xmas"
1
2
3
~scene= "AirVent"
1
2
3
~scene= "Basement"
1
2
3
~scene= "Cityscape"
1
2
3
~scene= "Fire"
1
2
3
~scene= "Night"
1
2
3
~scene= "GenericScene"
->END
//*[day 1]
// ->day_1
// *[day 2]
// ->day_2
// *[day 3]
// ->day_3
// *[day 4]
// ->day_4
// *[day 5]
// ->day_5
// *[day 6]
// ->day_6
// *[day 7]
// ->day_7
// *[day 8]
// ->day_8
// *[day 9]
// ->day_9
// *[day 10]
// ->day_10
// *[day 11]
// ->day_11
// *[day 12]
// ->day_12
// *[day 13]
// ->day_13
// *[day 14]
// ->day_14
// *[Epilogue]
// ->Epilogue
