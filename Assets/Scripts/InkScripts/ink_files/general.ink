//LIST allbooks = Alice_in_Wonderland, Howls_Moving_Castle, t_lion_witch_wardrobe, fantasy_7, nightthunder_89, LUX_222, satin_rain_1, myths_legends, LUX_394, sentinel_105, fantasy_dragon_heart,black_goat,wildfyre_678,LUX_1076,LUX_666, hypnos_55,lord_dusk,LUX_360,lady_darkness_373,forest_god,t_secret_garden,LUX_uniform,x_a_235,the_glass_lab,the_wiz_oz,LUX_rain_proof,mr_therm,ring_thorns,the_hobbit,LUX_gear,bioworld,heart_lies,matilda,LUX_ppe,cybershake,queendom_heretic,alice_looking_glass,LUX_acid_rain

==kent_book_check==
~button = "book"
*{allbooks ? satin_rain_1}[Give Satin Rain \#1]->satin_rain->kent_book_check
*{allbooks ? nightthunder_89}[Give Night Thunder \#89]->night_thunder->kent_book_check
*{allbooks ? sentinel_105}[Give The Sentinel \#105]->the_sentinel->kent_book_check
*{allbooks ? wildfyre_678}[Give Wildfyre \#678]->wildfyre->kent_book_check
*{allbooks ? hypnos_55}[Give Hypnos \#55]->hypnos->kent_book_check
*{allbooks ? lady_darkness_373}[Give Lady Darkness \#373]->lady_darkness->kent_book_check
*{allbooks ? x_a_235}[Give X and A \#235]->X_and_A->kent_book_check
*{allbooks ? mr_therm}[Give Mr. Thermistor]->mr_thermistor->kent_book_check
*{allbooks ? bioworld}[Give Bioworld]->bworld->kent_book_check
*{allbooks ? cybershake}[Give Cybershake]->cybershake_comic->kent_book_check
+ [Continue]
->->
==tali_book_check==
~button = "book"
*{allbooks ? fantasy_7}[Give The King’s Crown: The War of the Seven Swords: Book 7]->fantasy_7_book->tali_book_check
*{allbooks ? fantasy_dragon_heart}[Give The Betrayal of the Dragon's Heart]->fantasy_dragon_heart_book->tali_book_check
*{allbooks ? black_goat}[Give The Black Goat]->blackgoat->tali_book_check
*{allbooks ? forest_god}[Give The God of the Forest]->god_of_the_forest->tali_book_check
*{allbooks ? the_glass_lab}[Give The Glass Labyrinth]->the_glass_labyrinth->tali_book_check
*{allbooks ? ring_thorns}[Give The Ring of Thorns]->the_ring_thorns->tali_book_check
*{allbooks ? heart_lies}[Give Where the Heart Lies]->where_the_heart_lies->tali_book_check
*{allbooks ? queendom_heretic}[Give Queendom Heretic]->queen_h->tali_book_check
*{allbooks ? lord_of_dusk}[Give The Lord of Dusk]->lord_dusk->tali_book_check
+ [Continue]
->->
==lavender_book_check==
~button = "book"
*{allbooks ? LUX_222}[Give LUX Autumn issue 222]->LUX_1->lavender_book_check
*{allbooks ? LUX_394}[Give LUX Spring issue 394]->LUX_2->lavender_book_check
*{allbooks ? LUX_1076}[Give LUX Winter issue 1076]->LUX_winter->lavender_book_check
*{allbooks ? LUX_666}[Give LUX SPECIAL issue 666]->LUX_special->lavender_book_check
*{allbooks ? LUX_360}[Give LUX pet accessories issue 360]->LUX_pets->lavender_book_check
*{allbooks ? LUX_uniform}[Give LUX special flight attendant uniform issue]->LUX_flight_uniform->lavender_book_check
*{allbooks ? LUX_rain_proof}[Give LUX acid rain proof chic]->LUX_acid_rain_issue->lavender_book_check
*{allbooks ? LUX_gear}[Give LUX protective gear issue 331]->LUX_protective_gear->lavender_book_check
*{allbooks ? LUX_ppe}[Give LUX PPE special issue]->LUX_ppe_special->lavender_book_check
+ [Continue]
->->

//for pandora
==read_check==
~button = "book"
~music ="Pandora's theme"
//can read on 8 days
//can't read on first day
//Pandora will tell you about how she loves childrens stories
*{allbooks ? myths_legends}[Read myths and legends]
 -> read_greek_myths ->read_check
* {allbooks ? Alice_in_Wonderland} [Read Alice in Wonderland]
->read_alice_in_wonderland->read_check
* {allbooks ? Howls_Moving_Castle} [Read Howl's Moving Castle]
->read_howls_moving_castle->read_check
* {allbooks ? t_lion_witch_wardrobe} [Read The Lion the Witch and the Wardrobe]
->read_lion_witch_wardrobe->read_check
* {allbooks ? the_wiz_oz} [Read The Wizard of Oz]
->read_the_wizard_of_oz->read_check
* {allbooks ? the_hobbit}[Read The Hobbit]
->read_the_hobbit->read_check
* {allbooks ? t_secret_garden}[Read The Secret Garden]
->read_the_secret_garden->read_check
* {allbooks ? alice_looking_glass} [Read Alice Through the Looking-Glass]
->read_through_the_looking_glass->read_check
* {allbooks ? matilda} [Read Matilda]
->read_matilda->read_check
+->->
~music =""
VAR timesRejected = 0
==tea_or_coffee==
{snappedOut == "yes": ->snapped_out}
~button = "cup"
~currentSpeaker = android  
Tea or coffee?
->tea_or_coffee_choices
==tea_or_coffee_choices
+[Tea]
->->
+[Coffee]
->->
+[No thanks]
~timesRejected +=1
->drink_rejected

==snapped_out
~currentSpeaker = android
{~Do you want a—| Tea or cof— | Maybe a drink?}
~currentSpeaker = you
{~I'm good thanks!| Nope! | Brought my own drink thanks.}
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
...
->->
==drink_rejected==
~currentSpeaker = android  
{timesRejected == 1: {PlayAnimation("Pandora", "shake")} Haha. A joke right? }
{timesRejected == 2: {PlayAnimation("Pandora", "shake")} {ChangeSprite("Pandora", "pandora_mean")} C'mon you don't want a little drink?}
{timesRejected == 3: {PlayAnimation("Pandora", "shake")} {ChangeSprite("Pandora", "pandora_annoyed")} {you} it's for your own good!}
{timesRejected == 4: ->snap_out_trigger}
->tea_or_coffee_choices
==snap_out_trigger
~snappedOut = "yes"
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
Why are you being like this?
...ok.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = ""
<i>That was strange...</i>
<i>I should keep an eye on her.</i>
->->
==read_alice_in_wonderland==
~pandoraPoints+=1
~currentSpeaker = you 
I bought you something.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android  
Hehe, you shouldn't have.
~currentSpeaker = you 
It's just a book.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android  
So will you read it to me?
~currentSpeaker = "" 
Ok, just a little bit
\*You read to Pandora\*
\*For a moment you feel at peace\*
...
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android  
Well, you shouldn't really just drink or eat random things you find in strange places.
~currentSpeaker = you 
Common sense dictates
But you know, what if it's like a really tasty piece of cake, or a really nice drink?
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android  
{you}! How could you?
~currentSpeaker = you 
I like to live dangerously.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android 
I can't be poisoned, so I don't have to worry.
But you should be more careful.
~currentSpeaker = you 
I'm joking, I don't go around eating abandoned food.
But kids do that kind of thing.
I used to eat crayons.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android 
I will continue this tonight, I want to see what happens
Perhaps she will have to have her stomach pumped later on
~currentSpeaker = you 
Don't you sleep?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android 
I reacharge, I only need to do so for about four hours though
~currentSpeaker = you 
So you've got the rest of the night to enjoy yourself
I'm jealous
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android 
It's true, I have it good
~allbooks-= Alice_in_Wonderland
->->
==read_greek_myths==
~pandoraPoints+=1
~currentSpeaker = you 
I bought something you might like.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android  
What?!
~currentSpeaker = you 
It's just a book.
~currentSpeaker = android  
Read me the first chapter.
Please!
~currentSpeaker = you 
Hmmm, ok.
~currentSpeaker = "" 
\*You read to Pandora\*
\*As you do so a sense of calm fills the room\*
...
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android  
Woah, that was sad.
~currentSpeaker = you 
Yeah.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android 
If he'd just did as his father said he wouldn't have fallen to his death.
~currentSpeaker = you 
Well, yes.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android 
So we should all do as we're told.
~currentSpeaker = you 
Uh no, I think the story is more about the dangers of pride.
It's not suggesting we never question authority.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android 
But if he'd just listened to his father.
{ChangeSprite("Pandora", "pandora_sad")}
...
sorry
~currentSpeaker = you 
No worries, I promise there are better stories in there.
I mean, less depressing.
And some more depressing.
Maybe like 90% depressing.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android 
It's OK I can handle depressing.
~currentSpeaker = you 
Well, you'll enjoy it then.
~allbooks-= myths_legends
->->
==read_howls_moving_castle==
~pandoraPoints+=1
~currentSpeaker = you 
I bought you something.
It's called Howl's Moving Castle.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
How can a castle move?
~currentSpeaker = you
Magic.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android  
Nice! Please read to me. 
~currentSpeaker = you 
OK.
~currentSpeaker = ""
\*You read to Pandora\*
\*You feel tranquility fill your very being\*
...
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android  
Do you worry about getting old?
~currentSpeaker = you 
All the time.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android 
I don't think I like the thought of you getting old.
~currentSpeaker = you 
Neither do I.
I guess you're lucky in that way.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android 
I am incredibly lucky.
{ChangeSprite("Pandora", "pandora_sad")}
But I do feel quite lonely, I'll see everyone I know die. And I will keep on living.
Presumably forever.
~currentSpeaker = you 
Well I guess, when people die you'll just meet new ones.
And the cycle continues.
~currentSpeaker = android 
Is there not something sad about that.
~currentSpeaker = you 
Do not try to make me feel sorry for you.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
Alright. I think I'll leave things there.
{ChangeSprite("Pandora", "pandora_excited")}
I can't wait to finish this tonight.
~allbooks-= Howls_Moving_Castle
->->
==read_lion_witch_wardrobe==
~pandoraPoints+=1
~currentSpeaker = you 
Pandora I've got something for you.
It's a book by C.S. Lewis
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Is that a name I should know?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = you 
I would hope so.
Well now you know.
\*You read to Pandora\*
\*Briefly you think you feel content. Almost.\*
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
What's a Turkish delight?
~currentSpeaker = you
It's a kind of sweet. It has kind of a gummy texture, and it's usually rose flavoured.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Is it very tasty?
~currentSpeaker = you
Yes, I suppose so.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
I wish I could taste it!
~currentSpeaker = you
Eh? Really?
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
It does feel frustrating to read about people eating things.
{ChangeSprite("Pandora", "pandora_sad")}
I have no idea what anything tastes like.
~currentSpeaker = you
It must be strange to read about such rudimentary experiences that you will never have.
~currentSpeaker = android
Perhaps.
{ChangeSprite("Pandora", "pandora_pensive")}
Although, in someways that's why I read. I can experience many things I will never be able to do.
~currentSpeaker = you
Honestly, I think that's why a lot of people read.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
I'm looking forward to reading the rest of it!
~allbooks-=t_lion_witch_wardrobe
->->
==read_the_wizard_of_oz==
~pandoraPoints+=1
~currentSpeaker = you
I've got another book for you.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Great! I'm looking forward to this.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = you
\*You read to Pandora\*
\*You feel your heartbeat slow for a couple of minutes.\*
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
What's your favourite colour?
~currentSpeaker = you
Eh? That's a bit out of the blue.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Well, this book seems to be full of different colours with different symbolism, it was just making me wonder what kind of colours you like.
~currentSpeaker = you
I don't know. 
I like silver.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Silver!
~currentSpeaker = you
Does that say something about me?
~currentSpeaker = android
No.
I don't know.
{ChangeSprite("Pandora", "pandora_mean")}
Silver? Why silver?
~currentSpeaker = you
It's like the colour of metal and the colour of the sky on a cloudy day and the colour of the stars. 
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Hmm.
I like blue.
~currentSpeaker = you
Why blue?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
It's a calming colour, it decreases anxiety and stress.
~currentSpeaker = you
Is that something you have a lot of.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
No, but it's helpful to know, for humans.
~currentSpeaker = you
You can wave blue flags around to calm us down.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Ha! They'd probably think I was protesting against something.
~currentSpeaker = you
Just say you're protesting against bad mental health.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
I'm looking forward to finishing this book.
~allbooks-=the_wiz_oz
->->
==read_the_hobbit==
~pandoraPoints+=1
~currentSpeaker = you
I have another book.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
We are in a bookshop.
~currentSpeaker = you
Yes, but this one is for you.
It's called The Hobbit. 
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
I love the name.
Hobbit.
~currentSpeaker = you
It is a nice word.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
It sounds like a combination of hobble and rabbit.
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = you
\*You read to Pandora\*
\*Everything feels so much quieter now.\*
~currentSpeaker = android
That was so interesting.
~currentSpeaker = you
Really?
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
I can't wait to read about the dragon. I love dragons.
~currentSpeaker = you
They are pretty cool.
Isn't Cobalt Dragons your favourite band?
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
That is true, but unrelated to my love of dragons.
~currentSpeaker = you
Why do you love dragons?
{ChangeSprite("Pandora", "pandora_suggestive")}
~currentSpeaker = android
They're like dinosaurs but sexy.
~currentSpeaker = you
I'm sorry...what?
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Dinosaurs are ok, but they're for kids and kind of dorky.
{ChangeSprite("Pandora", "pandora_happy")}
Dragons are like cool dinosaurs.
They can breathe fire and have massive mounds of gold and are super clever.
And they have much better designs.
~currentSpeaker = you
I mean, dinosaurs weren't exactly designed. They evolved.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
That's no excuse!
Lots of cool looking things evolved.
~currentSpeaker = you
You don't think dinosaurs look cool?
{ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = android
No. T-rexes have those tiny arms and giant legs. They're just like big creepy chickens.
Whereas dragons look like big badass lizards.
~currentSpeaker = you
Imaginary stuff is just cooler I guess.
{ChangeSprite("Pandora", "pandora_pensive")}
~currentSpeaker = android
Some imaginary things are cooler.
->->
==read_matilda==
~pandoraPoints+=1
~currentSpeaker = you
Hey so I have this book you might like.
It's called Matilda, it's about this girl who likes reading.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Who doesn't?
~currentSpeaker = you
I've heard some people don't.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
Shame on them!
~currentSpeaker = you
Yes, I think you will like this a lot.
{ChangeSprite("Pandora", "pandora_normal")}
\*You read to Pandora\*
\*Shivers run down your spine\*
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
That was quite horrible...
{ChangeSprite("Pandora", "pandora_excited")}
I can't wait to read the rest of it.
~currentSpeaker = you
I thought so.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
Why are people so...narrow minded?
~currentSpeaker = you
Some people just see life as the sum of its parts.
Everything is a means to an end.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
That's sad.
~currentSpeaker = you
That's the reality...for some people.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Wait, who are these people?
~currentSpeaker = you
I wouldn't know.
~currentSpeaker = android
Some people? Which people?
~currentSpeaker = you
You know.
People.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
I know some people.
I don't know the one's you're talking about.
~currentSpeaker = you
...
Sometimes it felt like no one understood me.
So in my head it would be me against the whole world.
{ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
Ah I see.
Everyone else is narrow minded, and you're the only one who sees everything clearly.
~currentSpeaker = you
It's stupid.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Of course.
But can you be blamed?
~currentSpeaker = you
Yes. I definitely can.
~currentSpeaker = android
I'm sure it's not uncommon amongst those experiencing some form of ostracisation.
~currentSpeaker = you
No therapising me!
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
Not even a little?
~currentSpeaker = you
NO.
->->
==read_through_the_looking_glass==
~pandoraPoints+=1
~currentSpeaker = you
I have something for you.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Let's see.
Didn't we already read this.
~currentSpeaker = you
It's the sequel.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
Let's read it!
\*You read to Pandora\*
\*For a moment you don't exist\*
~currentSpeaker = android
We should get a cat.
~currentSpeaker = you
Ada doesn't like cats.
{ChangeSprite("Pandora", "pandora_confused")}
~currentSpeaker = android
Do you like cats?
~currentSpeaker = you
I certainly don't mind them.
But this isn't my shop.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
We can convince her.
Animals are good for anxiety.
~currentSpeaker = you
They can also induce anxiety.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
Can they?
~currentSpeaker = you
It depends on the animal.
->->
==read_the_secret_garden==
~pandoraPoints+=1
~currentSpeaker = you
I bought another kids book.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
What is it?
~currentSpeaker = you
It's called The Secret Garden.
And that is pretty much what it is about.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
I love gardens.
\*You read to Pandora\*
\*The world around you stops moving.\*
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
That's pretty horrible.
~currentSpeaker = you
Yeah, she's a bit of a brat. But she does get better.
{ChangeSprite("Pandora", "pandora_annoyed")}
~currentSpeaker = android
No.
I mean it's horrible for her.
Losing her parents so young.
And being neglected by them on top of that.
~currentSpeaker = you
They gave her everything she wanted.
{ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = android
That's not love, and that's not how you treat a child.
They ignored her, treated her like a pet. 
{ChangeSprite("Pandora", "pandora_mean")}
A child needs attention, mental stimulation and most of all emotional support from their caregivers.
~currentSpeaker = you
Oh.
I didn't know that.
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Well now you do.
I can't wait to continue reading this.
->->