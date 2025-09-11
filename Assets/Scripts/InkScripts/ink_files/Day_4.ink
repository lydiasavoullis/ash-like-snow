==day_4==
¬
~newsPicture = "headline4"
~newsCaption = "Humans vs IOIs - Illustration by Kent Herring"
~newsAnnouncement = "Should IOIs have more rights? According to Blue that would be 'utterly irresponsible'."
¬
~music="Rise and shine"
~newsAnnouncement = ""
~characters+=pandora
¬
~currentSpeaker = android 
Hey Cas!
I'll sign you in.
*[Yes (save)]
~currentSpeaker = you 
{SaveStory()}
Thanks!
*[No (don't save)] 
I can do it myself
~currentSpeaker = android
-Awesome.
->tea_or_coffee->day_4_cont
==day_4_cont==
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = you
 Why are you smiling like that?
 {ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = android
 I have a favour to ask you?
 I came up with this idea last night.
 {ChangeSprite("Pandora", "pandora_sad")}
 And I just can't get it out of my head, however hard I try.
 {ChangeSprite("Pandora", "pandora_mean")}
 Before you say anything, I'd like to stress. I think this would also help the business.
~currentSpeaker = you
 Spit it out already.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
 I want to host a creative writing session on Saturday evening.
~currentSpeaker = you
 Uh what? Why?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 It will be fun.
 And we can get to know our customers better.
 I mean foster a beneficial relationship with our clients.
 {ChangeSprite("Pandora", "pandora_mean")}
 I'm learning business talk now. 
 {ChangeSprite("Pandora", "pandora_sad")}
 So what do you think?
~currentSpeaker = you
 OK.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
 Really?
~currentSpeaker = you
 I’ll be working.
 And it’s not like I have anything better to do.
 We’re never really busy anyway.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Awesome! I guess those business talk lessons really paid off.
{ChangeSprite("Pandora", "pandora_mean")}
 I’ve already created leaflets.
 We have to give them to everyone who enters.
 Kent, Tali and even Lavender.
~currentSpeaker = you
 So you’ve created three leaflets?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Of course I have some extras.
 {ChangeSprite("Pandora", "pandora_mean")}
 You never know who else might arrive. 
~currentSpeaker = you
 Yes, you never know.
 ~sfx = "open door"
 ~characters += kent
 ¬
~currentSpeaker = you
{ChangeSprite("Pandora", "pandora_excited")}
 Hey how are you?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 Good! Good.
 {ChangeSprite("Pandora", "pandora_normal")}
//{allbooks ? wildfyre_678: -> wildfyre->} 
->kent_book_check->
~currentSpeaker = you
 You’re in a good mood.
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 Well not really. 
 {ChangeSprite("Kent", "kent_happy")}
 I’ve just dissociated myself from reality.
 {ChangeSprite("Kent", "kent_amused")}
 How are you?
~currentSpeaker = you
 Not bad. 
 How’s the Distant Outlook?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
 Usual stuff y’know.
 My boss is trying to figure out how to appeal to the younger audience.
 He wants me to start drawing skeletons.
~currentSpeaker = you
 Skeletons?
~currentSpeaker = comic
 He has an idea for this sketch with these two skeletons who tell jokes.
~currentSpeaker = you
 Why skeletons though?
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 I have no idea. I think he's going senile.
 {ChangeSprite("Kent", "kent_side_normal")}
 Also he wants me to give the skeletons large...breasts
 I’m trying to figure out how skeletons can even have breasts.
 I posed this question, and he claimed to know more about how breasts worked than I ever would.
 {ChangeSprite("Kent", "kent_side_serious")}
 I had to weigh up whether it was worth losing my job over a response to that.
~currentSpeaker = you
 I assume you still have your job?
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 What kind of spineless corporate worm would I be if I didn't know how to suck up to my boss once in a while?
 {ChangeSprite("Kent", "kent_normal")}
 Look Cas I really don’t know what to say. Why is Pandora looking at me like that?
~currentSpeaker = you
 Like what?
 {ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
 Like a sad lost puppy.
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 She knows I’m not interested, right?
~currentSpeaker = you
 This is about something else I totally forgot. Pandora you can give Kent your leaflet, don’t be shy.
 {ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
 Just to make things clear: I’m not joining your cult, and I know who Jesus is.
~currentSpeaker = you
{ChangeSprite("Pandora", "pandora_sad")}
 It’s not a cult, it’s a creative writing session.
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 Oh, is that what we’re calling them now?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 I promise no cult activity will be tolerated.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 Sure I’d love to come, Saturday evening is fine. I love writing. 
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
<i>\*YAAAY\*</i>
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 She looks like she’s going to explode. 
~currentSpeaker = you
 Can IOIs explode?
 {ChangeSprite("Kent", "kent_side_normal")}
~currentSpeaker = comic
 I don’t know. I’d keep a safe distance from her if I were you.
~currentSpeaker = you
 I can’t do my job and keep a safe distance from Pandora.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 I won’t explode I promise. 
 ~sfx = "open door"
~characters += tali
¬
~currentSpeaker=webdev
{ChangeSprite("Tali", "tali_happy")}
Hey!
//{allbooks ? black_goat: -> blackgoat->} 
->tali_book_check->
~currentSpeaker = you
You look better.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 I promise I’m not.
~currentSpeaker = you
 I keep getting it wrong.
 {ChangeSprite("Kent", "kent_amused")}
~currentSpeaker = comic
 I tell you it’s always better to assume the worst. You’ll never be disappointed. 
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 My boss is trying to cover for me now.
~currentSpeaker = you
 That’s good right.
 {ChangeSprite("Tali", "tali_exasperated")}
~currentSpeaker = webdev
 He can’t keep this under wraps forever.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
 They might move me to a different department now.
 At least I won’t have to manage the server anymore.
~currentSpeaker = you
 That also sounds good.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 At least they’re trying to protect you.
 {ChangeSprite("Kent", "kent_side_serious")}
 If I stepped even a foot out of line my arse would be straight out the door.
 Faster than you can say disciplinary action.
 {ChangeSprite("Kent", "kent_normal")}
  {ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
 Well I’m trying not to think about it.
 {ChangeSprite("Tali", "tali_smirk")}
 Distract me.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 OK, there’s a new issue of Night Thunder coming out tomorrow.
 {ChangeSprite("Kent", "kent_side_normal")}
 He died in the last issue, but that's probably just temporary.
 {ChangeSprite("Kent", "kent_amused")}
 He's 'died' about 11 times now.
~currentSpeaker = webdev
 {ChangeSprite("Tali", "tali_awe")}
 You read Night Thunder?
~currentSpeaker = comic
 Uh huh.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_sad")}
 I used to read it. I haven’t caught up yet.
 {ChangeSprite("Tali", "tali_talking_side")}
 I think I preferred Satin Rain though.
 {ChangeSprite("Tali", "tali_sad")}
I never caught up with that either though.
{ChangeSprite("Tali", "tali_smirk")}
 But she’s cool.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 She is pretty cool.
~currentSpeaker = you
 I don’t know what’s going on, but what’s so cool about Satin Rain?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 You just need to read the comic.
 She’s really cool.
 I think Night Thunder has a better story though.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 I wouldn’t know. I find it so hard to keep up with comics. That’s why I hardly ever read them.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
 I get it. So many issues. And they’re all so expensive.
 {ChangeSprite("Kent", "kent_happy")}
 But I think they’re worth it.
 {ChangeSprite("Tali", "tali_sad")}
~currentSpeaker = webdev
 Yeah, I barely have time anymore to read everything. I have to be more selective.
  {ChangeSprite("Tali", "tali_happy")}
 That’s why I like this place.
 They have a small selection of books, but they always have something good. And I like the vibes too.
 {ChangeSprite("Tali", "tali_awe")}
 It really feels like a dark old vintage bookstore.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Dark academia vibes.
~currentSpeaker = you
 I can put on more lights if you like?
~currentSpeaker = webdev
 {ChangeSprite("Tali", "tali_serious")}
 Don’t you dare.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_upset")}
 Don’t you fucking dare.
~currentSpeaker = you
 Got it. You like hurting your eyes.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 These days everywhere I go all they have are these awful fluorescent lights. It’s disgusting.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 Gives me a headache.
 When I go back to my parent’s house they always have the lights so bright and I just hide in my room.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_upset")}
 Parents suck.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 I mean, my parents are OK, they’re just a bit mean sometimes. In a lighthearted way I suppose.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_serious")}
 Ah I don’t really speak to my parents.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
 Oh.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 Sorry, I'm being awkward.
 Just been having a hard time lately.
 Thinking that all my friends can just move back with their parents.
 If anything happens to me.
 {ChangeSprite("Tali", "tali_serious")}
 Mine will never want to even know.
~currentSpeaker = you
 I get it.
~currentSpeaker = webdev
 I know you do. 
 {ChangeSprite("Tali", "tali_happy")}
 At least you’ve got Ada though.
~currentSpeaker = you
 Ada is my boss.
~currentSpeaker = webdev
 She cares about you.
~currentSpeaker = you
 And it seems Lavender cares about you too.
~currentSpeaker = webdev
 {ChangeSprite("Tali", "tali_normal")}
 Yeah I guess she does.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 She hasn’t been bothering you, has she?
~currentSpeaker = webdev
 {ChangeSprite("Tali", "tali_talking_side")}
 You know Lavender?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 Yeah, she really bit my head off the other day. I believe {you} is thinking of employing me to ward her off.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy")}
 Haha. But that won't work.
 {ChangeSprite("Tali", "tali_serious")}
 That girl is persistant.
 {ChangeSprite("Tali", "tali_happy")}
 Anyway, have a good day people.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
 Wait. Tali. Take this.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 Aww thanks, but I'm not interested in joining a cult at the moment.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 No. It's for a creative writing session that's being hosted here. 
 {ChangeSprite("Pandora", "pandora_happy")}
 Saturday evening. Want to come?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 Sure, why not?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Thank you!
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 OK, I’m going now.
~currentSpeaker = webdev
 Bye.
 ~characters -= tali
 ~sfx = "close door"
~currentSpeaker = comic
 I have to go too.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Adios ladies.
~characters -= kent
~sfx = "close door"
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
 Yes. Two people at my session.
 Three including you.
 Four, including me.
 {ChangeSprite("Pandora", "pandora_happy")}
 Success. 
~currentSpeaker = you
 I wonder if Lavender will turn up today.
~currentSpeaker = android
 {ChangeSprite("Pandora", "pandora_excited")}
 Yes! Another person I can invite.
~currentSpeaker = you
 You really want to invite her?
~currentSpeaker = android
 {ChangeSprite("Pandora", "pandora_mean")}
 Of course, she is our most loyal customer.
~currentSpeaker = you
 A loyal pain in the arse.
~currentSpeaker = android
 I would like as many people at my session as possible.
~currentSpeaker = you
 Why?
 {ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
 The more the merrier.
~currentSpeaker = you
 Not sure that applies when Lavender is around.
 ~sfx = "open door"
~characters += lavender
¬
~currentSpeaker = snob
//{allbooks ? LUX_1076: -> LUX_winter->} 
->lavender_book_check->
{ChangeSprite("Lavender", "lavender_angry")}
So why are you talking about me behind my back?
~currentSpeaker = you
Trust me, it wasn't very interesting.
~currentSpeaker = snob
 I demand that you tell me!
~currentSpeaker = you
 No!
{ChangeSprite("Lavender", "lavender_crying")}
Why are you shouting at me?
~currentSpeaker = android
 Please don’t cry.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_tears_crying")}
 It's too late.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 No Lavender.
 I just made you a Rose tea.
 If you cry the tears will go into the tea and make it salty. And then you won’t want to drink it and you’ll hate me.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I already hate you.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 But you haven’t heard.
 About the super special party you’re invited to.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 P-party?
~currentSpeaker = android
 A creative writing party on Saturday evening.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I love creative writing and parties. 
 This has cheered me up infinitely.
 {ChangeSprite("Lavender", "lavender_thinking")}
 But wait a minute. What if I’m the only one there? What if this is a ploy to humiliate me further?
~currentSpeaker = you
 Tali’s coming.
~currentSpeaker = snob
 {ChangeSprite("Lavender", "lavender_angry")}
 You could be lying.
~currentSpeaker = you
 Message her now. Or even tonight. Ask her. 
~currentSpeaker = snob
 {ChangeSprite("Lavender", "lavender_happy")}
 I just did. She said she’s going to Pandora’s dorky writing meetup.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_annoyed")}
 Dorky!?
 {ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = snob
 Wow, I’m so happy.
 Thanks Pandora.
 Anyway I have to go.
 See you around. 
 ~characters-=lavender
 ~sfx = "close door"
~currentSpeaker = you
 Pan are you crying?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 My first event. I organised myself. And three people are coming. Four, if you include yourself. Five, if you include me.
{ChangeSprite("Pandora", "pandora_excited")}
~currentSpeaker = android
 It’s going to be such a wonderful day.
~currentSpeaker = you
Well done.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Let’s do the inventory. I’m so excited.
->day_4_inventory
==day_4_inventory==
~music = "shop"
->goto_shop->
->read_check->
->end_day_4
==end_day_4==
->go_to_day_5
==go_to_day_5==
~characters+=pandora
¬
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
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_04_F->|->night_04->}
¬
~scene= "ShopFront"
~music="An average day"
~sfx = "rain"
17th December, Friday
~scene= "GenericScene"
~day+=1
->day_5