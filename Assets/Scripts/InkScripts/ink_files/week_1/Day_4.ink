==day_4==

~characters += pandora
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
 He has an idea for this sketch with these two skeleton sisters who tell jokes.
 He thinks people will like that. Honestly I think he’s going senile.
~currentSpeaker = you
 Why skeletons though?
~currentSpeaker = comic
 I think the idea is that they’re nuclear event survivors.
 Really resonates with our younger audience I’m sure.
 Also he wants me to give the skeletons large...breasts
 I’m trying to figure out how skeletons can even have breasts.
 I was just trying to understand the logic behind it, so I thought I would express my doubts to my boss.
 Big mistake.
~currentSpeaker = comic
He said that: 'Both my wife, and my mistress have a pair so I think I know how they work better than a gay man'
I had to weigh up whether it was worth losing my job over a response.
~currentSpeaker = you
 …
~currentSpeaker = comic
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
 Oh is that what we’re calling them now.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 I promise no cult activity will be tolerated.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 Sure I’d love to come, Saturday evening is fine. I love writing. 
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_excited")}
<i>\*bursts with excitement\*</i>
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
 At least they’re trying to protect you.
 If I stepped even a foot out of line my arse would be straight out the door.
 Faster than you can say disciplinary action.
 They wouldn’t even bother with Carol from HR.
 I do wonder sometimes what happened to her.
~currentSpeaker = webdev
 Well I’m trying not to think about it.
 Distract me.
~currentSpeaker = comic
 OK, there’s a new issue of Zebra man coming out tomorrow.
 He died in the last issue, but everyone’s sure it was a fake out. He’ll be back soon.
~currentSpeaker = webdev
 You read Zebra man.
~currentSpeaker = comic
 Uh huh.
~currentSpeaker = webdev
 I used to read it. I haven’t caught up yet.
 I preferred Giraffe Woman.
 I used to have a crush on her. I never caught up with that either though.
 But she’s cool.
~currentSpeaker = comic
 She is pretty hot.
~currentSpeaker = you
 I don’t know what’s going on, but what’s so hot about a Giraffe Woman?
~currentSpeaker = comic
 You just need to read the comic.
 She’s really cool.
 I think Zebra man has a better story though.
~currentSpeaker = webdev
 I wouldn’t know. I find it so hard to keep up with comics. That’s why I hardly ever read them.
~currentSpeaker = comic
 I get it. So many issues. And they’re all so expensive.
 But I think they’re worth it.
~currentSpeaker = webdev
 Yeah, I barely have time anymore to read everything. I have to be more selective.
 That’s why I like this place.
 They have a small selection of books, but they always have something good. And I like the vibes too.
 It really feels like a dark old vintage bookstore.
~currentSpeaker = comic
 Dark academia vibes.
~currentSpeaker = you
 I can put on more lights if you like?
~currentSpeaker = webdev
 Don’t you dare.
~currentSpeaker = comic
 Don’t you fucking dare.
~currentSpeaker = you
 Got it. You like hurting your eyes.
~currentSpeaker = webdev
 These days everywhere I go all they have are these awful fluorescent lights. It’s disgusting.
~currentSpeaker = comic
 Gives me a headache.
 When I go back to my parent’s house they always have the lights so bright and they take the piss out of me when I hide in my room.
~currentSpeaker = webdev
 Parents suck.
~currentSpeaker = comic
 I mean, my parents are OK, they’re just a bit mean sometimes.
~currentSpeaker = webdev
 I don’t really speak to my parents.
~currentSpeaker = comic
 Oh.
~currentSpeaker = webdev
 Sorry, I made things awkward.
 Just been having a hard time lately.
 Thinking that all my friends can just move back with their parents.
 If anything happens to me.
 Mine will never want to even know.
~currentSpeaker = you
 I get it.
~currentSpeaker = webdev
 I know. 
~currentSpeaker = webdev
 At least you’ve got Ada though.
~currentSpeaker = you
 Ada is my boss.
~currentSpeaker = webdev
 She cares about you.
~currentSpeaker = you
 And it seems Lavender cares about you too.
~currentSpeaker = comic
 What’s Lavender got to do with this?
~currentSpeaker = comic
 She hasn’t been bothering you, has she?
~currentSpeaker = webdev
 Oh, she’s a real bother isn’t she?
~currentSpeaker = comic
 I would agree with that statement. Except you seem to be saying that sarcastically which means I think you don’t really mean it.
~currentSpeaker = webdev
 Haha. Have a good day guys.
~currentSpeaker = android
 Wait. Tali. Take this.
~currentSpeaker = webdev
 Will it help me on my quest?
~currentSpeaker = android
 My creative writing session. Saturday evening. Want to come?
~currentSpeaker = webdev
 Uh sure why not?
~currentSpeaker = android
 Thank you!
~currentSpeaker = webdev
 OK, I’m going now.
~currentSpeaker = webdev
 Bye.
 ~characters -= tali
~currentSpeaker = comic
 I have to go too.
~currentSpeaker = comic
 Adieu ladies.
~characters -= kent
~currentSpeaker = android
 Yes. Two people at my session.
~currentSpeaker = android
 Three including you.
~currentSpeaker = android
 Four, including me.
~currentSpeaker = android
 Success. 
~currentSpeaker = you
 I wonder if Lavender will turn up today.
~currentSpeaker = android
 Yes, another person I can invite.
~currentSpeaker = you
 You really want to invite her.
~currentSpeaker = android
 Of course, she is our most loyal customer.
~currentSpeaker = you
 A loyal pain in the arse.
~currentSpeaker = android
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
So why are you talking about me behind my back?
~currentSpeaker = you
 Didn’t even see you come in.
~currentSpeaker = snob
 Tell me why?
~currentSpeaker = you
 We were saying mean things about you.
~currentSpeaker = snob
 Why?
~currentSpeaker = you
 Because you’re rude and obnoxious.
~currentSpeaker = android
 No, we never said that.
~currentSpeaker = snob
 I’m going to cry.
~currentSpeaker = snob
 You hurt my feelings.
~currentSpeaker = android
 Please don’t cry.
~currentSpeaker = snob
 Wah wah wah!
~currentSpeaker = android
 No Lavender.
~currentSpeaker = android
 I just made you a Rose tea.
 If you cry the tears will go into the tea and make it salty. And then you won’t want to drink it and you’ll hate me.
~currentSpeaker = snob
 I already hate you.
~currentSpeaker = android
 But you haven’t heard.
~currentSpeaker = android
 About the super special party you’re invited to.
~currentSpeaker = snob
 P-party?
~currentSpeaker = android
 A creative writing party on Saturday evening.
~currentSpeaker = snob
 I love creative writing and parties. 
 This has cheered me up infinitely.
 But wait a minute. What if I’m the only one there? What if this is a ploy to humiliate me further?
~currentSpeaker = you
 Tali’s coming.
~currentSpeaker = snob
 You could be lying.
~currentSpeaker = you
 Message her now. Or even tonight. Ask her. 
~currentSpeaker = snob
 I just did. She said she’s going to Pandora’s dorky writing meetup.
~currentSpeaker = android
 Dorky. I’m offended now.
~currentSpeaker = snob
 Wow, I’m so happy.
~currentSpeaker = snob
 Thanks Pandora.
~currentSpeaker = snob
 Anyway I have to go.
 See you around. 
 ~characters-=lavender
~currentSpeaker = you
 Pan are you crying?
~currentSpeaker = android
 My first event. I organised myself. And three people are coming. Four, if you include yourself. Five, if you include me.
~currentSpeaker = android
 It’s going to be... 
 Fabulous.
 I don’t use that word often you know. I save it for a special occasion. Such as this one.
~currentSpeaker = you
 What a wonderful occasion.
~currentSpeaker = android
 Let’s do the inventory. I’m so excited.
->day_4_inventory
==day_4_inventory==
->goto_shop->
->read_check->
->end_day_4
==end_day_4==
->go_to_day_5
==go_to_day_5==
~currentSpeaker = you 
See you tomorrow, bye!
~day+=1
+[Go home]
->day_5