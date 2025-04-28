==day_4==
~characters+=pandora
~currentSpeaker = android 
I'll sign you in.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker = android
 Hey Cas!
->tea_or_coffee->day_4_cont
==day_4_cont==
{ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = you
 Why are you smiling like that?
~currentSpeaker = android
 I have a favour to ask you?
 An idea.
 That might help this business as well.
~currentSpeaker = you
 Spit it out already.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
 I want to host a creative writing session on Saturday evening.
~currentSpeaker = you
 Uh what? Why?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 It will be fun.
 And we can get to know our customers better.
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
 Thanks.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 I’ve already created leaflets.
 We have to give them to everyone who enters.
 Kent and Tali and even Lavender.
~currentSpeaker = you
 So you’ve created three leaflets.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Of course I have extras.
 You never know who else might arrive. 
~currentSpeaker = you
 Yes, you never know.
 ~characters += kent
~currentSpeaker = you
{ChangeSprite("Pandora", "pandora_excited")}
 Hey how are you?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 Good good.
{allbooks ? wildfyre_678: -> wildfyre->} 
~currentSpeaker = you
 You’re in a good mood.
~currentSpeaker = comic
 Well not really. 
 I’ve just dissociated myself from reality.
 How are you?
~currentSpeaker = you
 Not bad.
~currentSpeaker = you
 How’s the Calamity?
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
~currentSpeaker = comic
 I have no idea. I think he's going senile.
 Also he wants me to give the skeletons large...breasts
 I’m trying to figure out how skeletons can even have breasts.
 I posed this question and he claimed he knew more about breasts worked than I ever would.
 I had to weigh up whether it was worth losing my job over a response to that.
~currentSpeaker = you
 I assume you still have your job?
~currentSpeaker = comic
 What kind of spineless corporate worm would I be if I didn't know how to suck up to my boss once in a while?
 Look Cas I really don’t know what to say. Why is Pandora looking at me like that?
~currentSpeaker = you
 Like what?
~currentSpeaker = comic
 Like a sad lost puppy.
~currentSpeaker = comic
 She knows I’m not interested, right?
~currentSpeaker = you
 This is about something else I totally forgot. Pandora you can give Kent your leaflet, don’t be shy.
~currentSpeaker = comic
 I’m not joining your cult.
~currentSpeaker = you
{ChangeSprite("Pandora", "pandora_sad")}
 It’s not a cult, it’s a creative writing session.
~currentSpeaker = comic
 Oh is that what we’re calling them now?
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
~currentSpeaker = comic
 I don’t know. I’d keep a safe distance if I were you.
~currentSpeaker = you
 I can’t do my job and keep a safe distance from Pandora.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 I won’t explode I promise. 
~characters += tali
~currentSpeaker=webdev
{ChangeSprite("Tali", "tali_happy")}
Hey!
{allbooks ? black_goat: -> blackgoat->} 
~currentSpeaker = you
You look better.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 I promise I’m not.
~currentSpeaker = you
 I keep getting it wrong.
~currentSpeaker = comic
 I tell you it’s always better to assume the worst. You’ll never be disappointed. 
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 My boss is trying to cover for me now.
~currentSpeaker = you
 That’s good right.
~currentSpeaker = webdev
 He can’t keep this undercover forever.
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
~currentSpeaker = webdev
 Well I’m trying not to think about it.
 {ChangeSprite("Tali", "tali_smirk")}
 Distract me.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 OK, there’s a new issue of Zebra man coming out tomorrow.
 He died in the last issue, but that's probably just temporary.
 {ChangeSprite("Kent", "kent_amused")}
 He's 'died' about 11 times now.
~currentSpeaker = webdev
 {ChangeSprite("Tali", "tali_awe")}
 You read Zebra man?
~currentSpeaker = comic
 Uh huh.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_talking_side")}
 I used to read it. I haven’t caught up yet.
 {ChangeSprite("Tali", "tali_talking_forward")}
 I preferred Giraffe Woman.
 {ChangeSprite("Tali", "tali_talking_side")}
I never caught up with that either though.
 But she’s cool.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 She is pretty cool.
~currentSpeaker = you
 I don’t know what’s going on, but what’s so cool about a Giraffe Woman?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 You just need to read the comic.
 She’s really cool.
 I think Zebra man has a better story though.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_exasperated")}
 I wouldn’t know. I find it so hard to keep up with comics. That’s why I hardly ever read them.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
 I get it. So many issues. And they’re all so expensive.
 But I think they’re worth it.
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
 I know. 
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
 What’s Lavender got to do with this?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 She hasn’t been bothering you, has she?
~currentSpeaker = webdev
 {ChangeSprite("Tali", "tali_happy")}
 Oh, she’s a real bother isn’t she?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 I would agree with that statement. Except you seem to be saying that sarcastically which means I think you don’t really mean it.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_happy_closed")}
 Haha. Have a good day guys.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
 Wait. Tali. Take this.
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_smirk")}
 Will it help me on my quest?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 My creative writing session. Saturday evening. Want to come?
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 Uh sure why not?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 Thank you!
~currentSpeaker = webdev
{ChangeSprite("Tali", "tali_normal")}
 OK, I’m going now.
~currentSpeaker = webdev
 Bye.
 ~characters -= tali
~currentSpeaker = comic
 I have to go too.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Adios ladies.
~characters -= kent
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
 Yes, another person I can invite.
~currentSpeaker = you
 You really want to invite her.
~currentSpeaker = android
 {ChangeSprite("Pandora", "pandora_mean")}
 Of course, she is our most loyal customer.
~currentSpeaker = you
 A loyal pain in the arse.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_suggestive")}
 I would like as many people at my session as possible.
~currentSpeaker = you
 Why?
~currentSpeaker = android
 The more the merrier.
~currentSpeaker = you
 Not sure that counts when Lavender is around.
 ~characters += lavender
~currentSpeaker = snob
{allbooks ? togue_1076: -> togue_winter->} 
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
{ChangeSprite("Pandora", "pandora_pensive")}
 Dorky?
~currentSpeaker = snob
 Wow, I’m so happy.
 Thanks Pandora.
 Anyway I have to go.
 See you around. 
 ~characters-=lavender
~currentSpeaker = you
 Pan are you crying?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 My first event. I organised myself. And three people are coming. Four, if you include yourself. Five, if you include me.
~currentSpeaker = android
 It’s going to be... 
 {ChangeSprite("Pandora", "pandora_excited")}
 Sublime.
 {ChangeSprite("Pandora", "pandora_excited")}
 I don’t use that word often you know. I save it for a special occasion. Such as this one.
~currentSpeaker = you
 What a wonderful occasion.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Let’s do the inventory. I’m so excited.
->day_4_inventory
==day_4_inventory==
->goto_shop->
->read_check->
->end_day_4
==end_day_4==
->go_to_day_5
==go_to_day_5==
~characters+=pandora
~currentSpeaker = android 
I'll sign you out for the day.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker = you 
See you tomorrow, bye!
~currentSpeaker = ""
~scene = "Night"
¬
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_04_F->|->night_04->}
~scene= "ShopFront"
¬
~music = ""
~sfx = "rain"
17th December, Friday
~scene= "GenericScene"
¬
~day+=1
->day_5