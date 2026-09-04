==day_3==
¬
~newsPicture = "headline3"
~newsCaption = "Sad cat"
~newsAnnouncement = "Sad cat is now a viral hit. How sad cat became a cultural icon and why feline depression is a serious issue."
¬
~music="Rise and shine"
~newsAnnouncement = ""
~characters+=pandora
~currentSpeaker = android 
{ChangeSprite("Pandora", "pandora_normal")}
{PlayAnimation("Pandora", "jump")}
Good morning!
I'll sign you in.
*[Yes (save)]
~currentSpeaker = you 
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself.
~currentSpeaker = you
-Feeling better?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Yes.
~currentSpeaker = you
 Good.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 ->tea_or_coffee->day_3_cont

==day_3_cont==
~sfx = "open door"
~characters += tali
¬
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 Hi guys.
//{allbooks ? fantasy_dragon_heart: ->fantasy_dragon_heart_book->} 
->tali_book_check->
~allbooks-=fantasy_dragon_heart
~currentSpeaker = you
 So, what happened? You seem...tired.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
 Do I look that bad?
~currentSpeaker = you
 Noooo.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 I’ve been up all night.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_awe")}
 Work lost a load of data and my boss has been freaking out.
~currentSpeaker = you
What kind of data?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
Client data.
~currentSpeaker = webdev
Data we couldn't afford to lose.
~currentSpeaker = you
 Do you want to talk?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_side")}
Maybe.
But, just giving you a heads up, I'm meeting a friend here later.
~currentSpeaker = you
 Well thanks for bringing extra customers.
 We sure do need them.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 I’m glad I can help one of us out.
~currentSpeaker = you
I hope you don't mind me asking.
 What’s so bad about your job, on the whole?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 I feel they want a lot from me. 
 They have very high expectations. 
 I fear I’m not as good as they think I am. 
~currentSpeaker = you
 You’re being too hard on yourself.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 I'm trying to be realistic, not disparaging my abilities.
 I doubt any mere mortal could live up to their expectations.
 ~sfx = "open door"
~characters += lavender
¬
{ChangeSprite("Lavender", "lavender_normal")}
...
{ChangeSprite("Lavender", "lavender_angry")}
Ahem.
~currentSpeaker = you
 Sorry, Miss Blue, I'll be with you in a second.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
...
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
{ChangeSprite("Lavender", "lavender_normal")}
 Hey, Lavender!
~currentSpeaker = you
 ...
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I came as soon as I could.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_awe")}
 I guess you must have heard?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 Yes, my father says the police are investigating it.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_upset")}
 The police?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 It’s sensitive info so they’re involved.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
{PlayAnimation("Lavender", "shake")}
 TEA!
~currentSpeaker = android
 One Rose tea coming right up.
 ~characters -= pandora
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 Oh do you know each other?
~currentSpeaker = you
...
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
Yeah of couse, this is basically my bookshop.
I come here for those Lux magazines.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
You'll have to show me those sometime.
{ChangeSprite("Lavender", "lavender_happy")}
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal2")}
Eh what’s going on?
~currentSpeaker = android
 They know each other?
~currentSpeaker = you
 It seems so.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I want another tea.
~currentSpeaker = snob
 And one for Tali too.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_upset")}
 Lavender, do you think my boss will fire me?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 No, Father will speak to him.
 What I don't understand is why you had access to the server?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_side")}
 The guy managing the server left, and well, they couldn’t hire anyone else.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 That's a lot of responsibility.
 No wonder you're always tired.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_awe")}
 I don't know exactly how it happened, but I do have a theory.
 I think someone hacked my computer.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_sad")}
 I know it's bad but I kept the password for the server written down in my desk.
 I was going to transfer it, but the job was shovelled onto me so quickly I just didn't even have time to think.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 That must mean there's a spy.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_forward")}
 I don't know.
 ~currentSpeaker = snob
 Anyone looks suspicious there?
 {ChangeSprite("Lavender", "lavender_thinking")}
 Any new interns? I heard that's how they get in.
~currentSpeaker = you
 So how do you two know each other?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 Can’t you see we’re in the middle of something?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
 We went to school together.
~currentSpeaker = you
 What no way?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
Yeah we met ages ago.
And we stuck together, we've been friends ever since.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
You didn't see any contractors around?
{ChangeSprite("Lavender", "lavender_angry")}
Those 'people' are incredibly untrustworthy.
{ChangeSprite("Lavender", "lavender_sad")}
I just have to tell you about one I hired the other day.
~currentSpeaker = you
It's hard to make friends these days. Hard to keep the ones you already have.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_forward")}
Ugh, tell me about it.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 You two must be very close.
 ~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy_closed")}
The closest.
{ChangeSprite("Lavender", "lavender_angry")}
 Hmph.
 {ChangeSprite("Lavender", "lavender_thinking")}
 {webdev} are you even listening to me?
 I think these shop assistants are distracting you.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_sad")}
Oh.
{ChangeSprite("Tali", "tali_exasperated")}
My boss is calling me. 
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 I have to go.
~currentSpeaker = you
 Good luck.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 See you later Tal.
~characters -= tali
~sfx = "close door"
~currentSpeaker = you
//{allbooks ? LUX_394: -> LUX_2->} 
->lavender_book_check->
~allbooks-=LUX_394
~currentSpeaker = you
So how are things?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 They're going well.
~currentSpeaker = you
 I hope {webdev}'s ok.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
She'll make it through this. It's not that serious anyway.
~currentSpeaker = you
You recommended this place to her, right?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Correct.
~currentSpeaker = you
 She really likes those fantasy books doesn’t she?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 Oh yes. She loves all sorts of nerdy stuff.
~currentSpeaker = you
 I’ve only known her for three months, but I can vouch for that.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 Well, I’ve known her for twenty years.
 Our knowledge is not remotely comparable.
~currentSpeaker = you
I guess not.
~sfx = "open door"
~characters += kent
¬
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 You again.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 Well hello to you too.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
Ugh goodbye
~characters -= lavender
~sfx = "close door"
~currentSpeaker = you
 Can I employ you here as a bodyguard?
~currentSpeaker = you
 An anti-Lavender charm. 
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 I take that as the highest compliment.
 //{allbooks ? sentinel_105: -> the_sentinel->} 
 ->kent_book_check->
 ~allbooks-=sentinel_105
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 What happened?
{ChangeSprite("Kent", "kent_side_serious")}
 By the way I did some research, all that stuff Lavender said checks out. Turns out she really is spawn of the devil.
~currentSpeaker = you
 Benedict Blue?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Same thing.
 {ChangeSprite("Kent", "kent_side_normal")}
 This is crazy.
  {ChangeSprite("Kent", "kent_normal")}
 Anyway I better be nice to her, her father is my boss’s boss’s boss. He’s basically the chief of the arse-lickers.
~currentSpeaker = you
 You just figured that out.
~currentSpeaker = comic
 {ChangeSprite("Kent", "kent_happy")}
 My boyfriend talked some sense into me last night.
~currentSpeaker = you
 I’m glad somebody could.
~currentSpeaker = comic
 {ChangeSprite("Kent", "kent_side_normal")}
 I can be a bit reckless sometimes.
 I guess don’t have a lot of self-preservation.
 {ChangeSprite("Kent", "kent_side_serious")}
 I’m just sick of having to keep quiet and take it at work.
 {ChangeSprite("Kent", "kent_upset")}
 And then I have to be polite to that little creep too.
~currentSpeaker = android
 {ChangeSprite("Pandora", "pandora_mean")}
 That little creep pays our bills.
~currentSpeaker = comic
 {ChangeSprite("Kent", "kent_sad")}
 I know Pan. I wish it wasn’t like that though.
~currentSpeaker = you
 You can wish as much as you like.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 The good thing is that nothing too bad happened today.
 The plague outbreak didn’t even kill too many people.
 My boss asked me to draw a raunchy cartoon of an IOI nurse in a very revealing uniform sticking a needle into the health secretary's buttocks.
{ChangeSprite("Kent", "kent_amused")}
 I don’t know what kind of vaccinations he's has been getting.
{ChangeSprite("Kent", "kent_sad")}
 I’m a little concerned to be honest.
{ChangeSprite("Kent", "kent_happy")}
 Sorry, I never asked about your day.
~currentSpeaker = you
 I think it’s better like that.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Why, what happened?
~currentSpeaker = you
 Nothing much – to me at least.
 Tali came around earlier, she was a little distraught.
 Something about a data leak.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 I heard something about that. It was for a government website. Lots of sensitive information was lost.
~currentSpeaker = you
 That doesn’t sound good.
~currentSpeaker = comic
 Indeed.
~currentSpeaker = comic
 Tali wasn’t involved, was she?
 {ChangeSprite("Kent", "kent_side_normal")}
 I imagine she is just doing web design, it wouldn’t have anything to do with her.
~currentSpeaker = you
 Uh...
~currentSpeaker = comic
 {ChangeSprite("Kent", "kent_normal")}
 It wasn’t her data lost was it?
 ~currentSpeaker = you
 Uhhh. 
 NO. No, it wasn't.
 ~currentSpeaker = comic
 You're worried because I'm a journalist and I might leak this information to get ahead in my career.
 ~currentSpeaker = you
 Maybe...
 ~currentSpeaker = comic
  {ChangeSprite("Kent", "kent_side_serious")}
 I see.
 Sorry, {you}, I have to make this clear to you now but I would never use information I gathered here for a story.
 I really don't care about my job that much. I mean sure I care about keeping it, but I'm not going to go out of my way to help the fuckers.
   {ChangeSprite("Kent", "kent_normal")}
 But most importantly, I wouldn't do anything to betray your trust and our friendship.
 ~currentSpeaker = you
 Well I certainly find that comforting.
~currentSpeaker = comic
I appreciate you trying to protect the confidentiality of your clients' personal lives.
{ChangeSprite("Kent", "kent_happy")}
 I’ve got to go now. It was nice talking to you. 
 Thanks for the coffee Pan.
~currentSpeaker = android
 See you around Kent.
~currentSpeaker = you
 Bye!
 ~characters -= kent
 ~sfx = "close door"
 ~characters += pandora
 ¬
->day_3_inventory
==day_3_inventory==
~music = "shop"
->goto_shop->
->read_check->
->end_day_3
==end_day_3==
->go_to_day_4
==go_to_day_4==
~currentSpeaker = android 
I'll sign you out for the day.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker = you 
-See you tomorrow. Bye!
~currentSpeaker = ""
~scene = "Night"
~music = "night theme"
~sfx = "rain"
¬
{snappedOut=="no": ->night_03_F->|->night_03->}
¬
~scene= "ShopFront"
~music="An average day"
~sfx = "rain"
16th December, Thursday
~scene= "GenericScene"
~day+=1
->day_4