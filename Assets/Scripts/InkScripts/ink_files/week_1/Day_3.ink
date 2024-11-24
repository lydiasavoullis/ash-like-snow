==day_3==
~characters += pandora
~currentSpeaker = you
 Hey Pandora
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
{PlayAnimation("Pandora", "jump")}
 Hey!
~currentSpeaker = you
 Feeling better?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Yes
~currentSpeaker = you
 Good
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 ->tea_or_coffee->day_3_cont

==day_3_cont==
 ~characters += tali
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 Hi guys
{allbooks ? fantasy_dragon_heart: ->fantasy_dragon_heart_book->} 
~allbooks-=fantasy_dragon_heart
~currentSpeaker = you
 So, what happened? You seem...tired.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
 Do I look that bad?
~currentSpeaker = you
 Noooo
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 I’ve been up all night.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_awe")}
 Work lost a load of data and my boss has been freaking out.
~currentSpeaker = you
 Like important data?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
 Client data.
~currentSpeaker = webdev
 So critical.
~currentSpeaker = you
 Do you want to talk?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_side")}
 Yeah, I’ve got a friend coming later too.
~currentSpeaker = you
 Well thanks for bringing extra customers.
 We sure do need them.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 I’m glad I can help one of us out.
~currentSpeaker = you
 What’s so bad about your job, on the whole?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 It’s not the worst, but I just feel like they want a lot from me. They have very high expectations. I’m not as good as they think I am. They think I’m holding back, that I’m being lazy. But I’m not, I’m just not that good. I can’t do what they want me to do.
~currentSpeaker = you
 You’re being too hard on yourself.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 No you don’t understand.
~characters += lavender
{ChangeSprite("Lavender", "lavender_normal")}
~currentSpeaker = you
 Oh God.
~currentSpeaker = you
 Sorry, Miss Blue, I'll be with you in a second.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
...
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
{ChangeSprite("Lavender", "lavender_normal")}
 Lav you’re here!
~currentSpeaker = you
 Lav?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I came as soon as I could.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_awe")}
 Did you hear?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
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
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_tears_crying")}
 <i>sniffs</i>
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 Hmm OK.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 Oh do you know each other?
~currentSpeaker = you
...
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Yes, this is the place I come for my vintage fashion magazines.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
 Those things are so cool, I love the old designs.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I know, fashion these days is so ugly. I look back at those magazines to clear my mind. 
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal2")}
Eh what’s going on?
~currentSpeaker = you
 They know each other?
~currentSpeaker = android
 Tali knows the loli nightmare creature.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I want another tea.
~currentSpeaker = snob
 One for Tali too, she’s been through it.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_upset")}
 Do you think my boss will fire me?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 No, Dad will speak to him. It wasn’t your fault anyway.
~currentSpeaker = webdev
 It might have been my fault.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 What do you mean?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_awe")}
 I think someone hacked my computer.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_side")}
 I didn’t store the password for the server so securely.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 You had access to the server?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_forward")}
 My boss wanted me to take on extra responsibilities.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_side")}
 The guy managing the server left, and well, they couldn’t hire anyone else.
~currentSpeaker = snob
 They were paying you for the extra responsibility right?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
 What do you think?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 If they weren’t paying you, they can’t hold you responsible.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 That’s not how it works darling.
~currentSpeaker = you
 So how do you two know each other?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 Can’t you see we’re in the middle of something?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
 We went to secondary school together.
~currentSpeaker = you
 What no way?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 Yeah I got in on a scholarship, I had a hard time fitting in.
 So did Lavender.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 Everyone loved me.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy_closed")}
 Haha, very funny.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_forward")}
 I remember once these boys were being rude to me.
 I didn’t know who Lavender was but she saw me getting bullied and she shouted at them.
 {ChangeSprite("Tali", "tali_talking_side")}
 I can’t even remember what she said but they ran so fast.
 Lavender didn’t even look at me after that.
 {ChangeSprite("Tali", "tali_awe")}
 But I made sure to be nice to her.
 She was super cold at first. But eventually she gave in.
 {ChangeSprite("Tali", "tali_happy_closed")}
 And we were friends.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 Hmph.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 Awww.
~currentSpeaker = snob
 Grrr.
~currentSpeaker = you
 Well that’s a nice story.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
 And we’ve been friends ever since.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
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
~currentSpeaker = you
{allbooks ? togue_394: -> togue_2->} 
~allbooks-=togue_394
~currentSpeaker = you
So, are you OK?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Yeah I’m fine.
~currentSpeaker = you
 Will Tali be OK?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 There isn’t a single doubt in my mind.
 That she won’t make it through this.
~currentSpeaker = you
 You recommended this place to her, right?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Correct.
~currentSpeaker = you
 She really likes those fantasy books doesn’t she?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 Oh yes. I suppose it makes sense if you know her.
 She loves elves and dwarves and all sorts of nerdy stuff.
{ChangeSprite("Lavender", "lavender_happy")}
 Quite adorable really.
~currentSpeaker = you
 I’ve only known her for three months, but I can vouch for that.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 You’ve known her for three months.
 I’ve known her for twenty years.
 Our knowledge is not even comparable.
~currentSpeaker = you
 Okay...insecure much?
~currentSpeaker = snob
 Excuse me? I’m the least insecure person ever.
~currentSpeaker = you
 Sounds like something someone very insecure would say.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 I’m just saying I don’t trust you. I’m fine with you selling books to her, but don’t delude yourself into thinking you’re anything more.
 I’m her best friend.
 I’ve always been there.
 You are nothing.
~characters += kent
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
~currentSpeaker = you
 Can I employ you here as a bodyguard?
~currentSpeaker = you
 An anti-Lavender charm. 
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 I take that as the highest compliment.
 {allbooks ? sentinel_105: -> the_sentinel->} 
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
 Anyway I better be nice to her, her father is my boss’s boss’s boss. He’s basically the chief of the arse lickers.
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
 I guess don’t have a lot of self preservation.
 {ChangeSprite("Kent", "kent_side_serious")}
 I’m just sick of having to keep quiet and take it at work.
 {ChangeSprite("Kent", "kent_upset")}
 And then I have to be polite to that little creep too.
~currentSpeaker = android
 {ChangeSprite("Pandora", "pandora_pensive")}
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
 Managed to get away with just a raunchy cartoon of an IOI nurse in a very revealing uniform sticking a needle in the health secretary's buttocks.
{ChangeSprite("Kent", "kent_side_normal")}
 I don’t know what kind of vaccinations my boss has been getting.
{ChangeSprite("Kent", "kent_side_serious")}
 I’m a little concerned to be honest.
{ChangeSprite("Kent", "kent_happy")}
 Sorry, I never asked about your day.
~currentSpeaker = you
 I think it’s better like that.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Why, what happened?
~currentSpeaker = you
 Nothing much to be at least.
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
 ~characters += pandora
->day_3_inventory
==day_3_inventory==
->goto_shop->
->read_check->
->end_day_3
==end_day_3==
->go_to_day_4
==go_to_day_4==
~currentSpeaker = you 
See you tomorrow, bye!
+[Go home]
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_03_F->|->night_03->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
16th December, Thursday
~scene= "GenericScene"
¬
~day+=1
->day_4