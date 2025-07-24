==day_5==
~newsPicture = "headline5"
~newsCaption = "A show to remember"
~newsAnnouncement = "Musical sensation Cobalt Dragons concert tickets sell out in first hour of release."
¬
~music="Rise and shine"
~newsAnnouncement = ""
~characters+=pandora
~currentSpeaker = android 
I'll sign you in.
*[Yes (save)]
~currentSpeaker = you 
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
~currentSpeaker = you
-Hey Pandora
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
{PlayAnimation("Pandora", "sway")}
 Hey! What are you up to?
~currentSpeaker = you
 Stacking books.
~currentSpeaker = android
 You’re doing such a good job.
~currentSpeaker = you
 You think so.
{ChangeSprite("Pandora", "pandora_happy")}
{PlayAnimation("Pandora", "sway")}
 Of course I do.
->tea_or_coffee->day_5_cont
==day_5_cont==
~currentSpeaker = you
 Looking forward to tomorrow?
 {ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
Yes.
Also kind of nervous.
~currentSpeaker = you
Why?
{ChangeSprite("Pandora", "pandora_normal")}
Well, the whole concept of sharing one's writing is frankly, quite daunting.
Wouldn't you say?
~currentSpeaker = you
 I wouldn't know really.
 Don't worry, I'm sure they're not worried about it. And they won't deliberately fuck it up.
 Kent practically is a writer.
 Tali is pretty well read so I'm sure she'll be a good addition.
 I've got to admit Lavender is a bit of a wild card.
 In more ways than one. 
 But who cares, if their writing is bad we can laugh about it afterwards.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 Erm that's not what I mean.
 {ChangeSprite("Pandora", "pandora_pensive")}
 Never mind.
~currentSpeaker = you
 Imagine what Ada would think if she knew what we're doing here?
 I kind of miss her. Is that weird to say?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Oh me too. Everyday. I wish she could see what I’m doing now. Do you think she would be proud?
~currentSpeaker = you
 Definitely. I mean, she’d be disappointed it isn’t making money from it. But I think she’d be happy begrudgingly.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 It’s a shame the dome blocks phone transmission signals outside of London.
~currentSpeaker = you
I got a secure email. She arrived in Madrid safely.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 I wish we could call her though.
~currentSpeaker = you
 You're just worried about her.
~currentSpeaker = android
Is that what this feeling is?
~currentSpeaker = you
Can I ask you something?
Do you think I’m doing OK?
~currentSpeaker = android
 I don’t know, what do you mean?
~currentSpeaker = you
 I mean with the shop.
~currentSpeaker = android
{funds >100:  I think you’re doing great. If we keep this up Ada will be happy when she comes back. | Uh I don't know, I'm sure Ada won't be upset.} 
~currentSpeaker = you
{funds >100:  Thanks | I should probably sell some more books.} 
~characters += kent
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_normal")}
Hey guys.
 ~currentSpeaker = you
{allbooks ? hypnos_55: -> hypnos->} 
 
 ~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
 Really would love to chat, but I have something I need to do.
 ~currentSpeaker=you
 What’s wrong?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 Nothing really. I’m just really fucking behind on a lot of work. Please can I sit in the corner there?
~currentSpeaker = android
 Of course you can. Sit down. No one will disturb you. 
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_happy")}
 Brilliant, I owe you.
~currentSpeaker = android
 Can I make you a coffee?
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 No thanks.
~characters -= kent
~currentSpeaker = you
 So are we a library now?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Well I don’t see why we shouldn’t let him stay here for a bit. He’s a good customer. And it might help business a bit if we looked busy.
~currentSpeaker = you
 Really? Very business minded, aren’t you.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_mean")}
 I’m learning.
~currentSpeaker = you
 Maybe we should turn this into a coffee and bookshop. Might have better luck with that.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
I’ve been nagging Ada about that for a while, but she hates it. She keeps saying she only wants to sell books. 
{ChangeSprite("Pandora", "pandora_pensive")}
I’m starting to think she wants this place to fail.
~characters += lavender
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 One rose tea.
 Ahem.
 ~characters -=pandora
 ...
  {allbooks ? LUX_666: -> LUX_3->} 
 ~characters += pandora
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Here you go.
 ~characters -= pandora
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 What’s he doing over there?
~currentSpeaker = you
 Working, you can’t disturb him.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I have no desire to go anywhere near him.
{ChangeSprite("Lavender", "lavender_normal")}
 I was going to meet Tali here, but she cancelled at the last minute. Something to do with work.
~currentSpeaker = you
 Well, that happens sometimes.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 It didn’t use to be like this, you know we used to go out together all the time. Now she’s all busy.
~currentSpeaker = you
 That’s what it’s like having a job I guess.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 It’s just annoying, I have all this free time and she’s always slaving away. It makes no sense.
~currentSpeaker = you
 What do you do?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I design clothes of course. I have my own fashion company.
~currentSpeaker = you
 Do you make all the clothes?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 Of course not, I have professionals to do that.
 Every three months I release new designs to my clothing store.
{ChangeSprite("Lavender", "lavender_thinking")}
 Although I have been thinking of having a go again.
{ChangeSprite("Lavender", "lavender_serious")}
 I used to sew for fun. And then I did a lot of sewing for my fashion design course. But I stopped doing it after I started my company.
~currentSpeaker = you
 Uh, how does that work? If you don’t sew, how do you like prototype clothing designs?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Well, I have people who also do that. I kind of just sketch things out, and my good colleague takes the sketch and turns it into a garment. I approve the design and she sends it out to the machinists.
{ChangeSprite("Lavender", "lavender_thinking")}
 Except sometimes, when I can’t think of anything, she sketches out the design for me as well.
~currentSpeaker = you
 Uh huh. 
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I would like to start sewing again. It was so much fun. 
{ChangeSprite("Lavender", "lavender_thinking")}
 I just never feel like there’s a need to do it when someone else is doing it for me.
~currentSpeaker = you
 Maybe I could order some books on sewing?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Oh why not.
 {ChangeSprite("Lavender", "lavender_happy")}
 This is cheering me up a bit.
~currentSpeaker = you
 So you and Tali met at school?
~currentSpeaker = snob
 Yes, we were the bestest friends.
~currentSpeaker = you
 Really? What was she like?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_serious")}
 Pretty elusive.
 {ChangeSprite("Lavender", "lavender_thinking")}
 Most people were OK with her, but no one went out of their way to be nice. It made me so angry.
 She’s so nice, how could no one like her?
~currentSpeaker = you
 That’s just how kids are.
 I didn't have an easy time either.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_mean")}
 I can imagine. You don't seem like the most likeable person.
~currentSpeaker = you
 Well...uh thanks.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
<i>huff</i> you’re so unbelievably dull.
~currentSpeaker = snob
 {ChangeSprite("Lavender", "lavender_thinking")}
 Well anyway, I tried to be super nice to Tali, but it was difficult getting her to trust me.
 {ChangeSprite("Lavender", "lavender_happy")}
 She thought I was like the others.  
 I kind of understand. It must have been strange. I mean really we have little in common, other than being awesome. So it must have been strange to her that I was talking to her.
 {ChangeSprite("Lavender", "lavender_thinking")}
 Honestly it was so hard, trying to find ways to earn her trust.
 {ChangeSprite("Lavender", "lavender_mean")}
 But I’m a very determined person.
~currentSpeaker = you
 I can see that.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 Anyway, we became best friends. And I always take her on holiday because I hate being alone.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 I mean I have four siblings but I’m not so close with them. 
~currentSpeaker = you
That's really nice of you.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
I'm not too sure.
~currentSpeaker = you
What makes you say that?
~currentSpeaker = snob
I feel like I make her uncomfortable sometimes.
~currentSpeaker = you
How so?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 She disagrees with the way I do things.
 She isn't afraid to tell me, but honestly I'm not that great at taking advice.
~currentSpeaker = you
 Hmm, something to work on maybe.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 Also maybe she feels like she owes me a lot.
 It's been pretty difficult for her. Her family doesn’t talk to her much. And she must feel so lonely. 
 {ChangeSprite("Lavender", "lavender_normal")}
 After she graduated she had trouble finding a job. 
 I asked my Dad and he managed to find her a role.
 ~currentSpeaker = you
 Oh really?
 ~currentSpeaker = snob
 She just needed a little help. She’s really clever.
~currentSpeaker = you
 I don’t doubt that.
 So she’s got the job, what’s wrong?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 Well her boss is working her very hard.
 She barely has any time to do anything she enjoys.
~currentSpeaker = you
 And?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 That’s not good! She’s doing her best.
~currentSpeaker = you
 I agree, what would you do?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
Well...
{ChangeSprite("Lavender", "lavender_angry")}
If I were her I would give her a piece of my mind. 
{ChangeSprite("Lavender", "lavender_sad")}
But apparently you can’t shout at your boss.
~currentSpeaker = you
 Wise words indeed.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 I don’t get it. I don’t get any of it. And don’t say it’s because I have money.
~currentSpeaker = you
 Hey, I've got nothing against you having money.
 You're doing this business a big favour.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 Well I do like to support small businesses. 
 Being a small business myself and all.
~currentSpeaker = you
 Uh sure. Good on you.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 Dad says this country is failing because people aren’t working hard enough. But then I see Tali working so hard, and…
~currentSpeaker = you
 It makes you think that's not true?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
{PlayAnimation("Lavender", "shake")}
No, of course not.
{ChangeSprite("Lavender", "lavender_happy")}
 It makes me think that if everyone worked as hard as Tali, our world would be a much better place.
~currentSpeaker = you
 That's certainly an...interesting way to frame that.
~characters+=pandora
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_happy")}
 What is it? Did something happen?
~currentSpeaker = you
 No. I'm just glad you're back.
 Also, where were you?
~currentSpeaker = android
 I was reading at the back, sorry.
~currentSpeaker = snob
{PlayAnimation("Lavender", "shake")}
{ChangeSprite("Lavender", "lavender_angry")}
 Shouldn't you be working?
 {ChangeSprite("Pandora", "pandora_sad")}
~currentSpeaker = you
 It's ok to take a break sometimes.
 {ChangeSprite("Lavender", "lavender_thinking")}
~currentSpeaker = snob
 I didn't realise IOIs needed to take breaks.
 ~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Well, I do use a lot of electricity.
 ~currentSpeaker = snob
 You’re a lot more talkative than the IOIs I know.
 {ChangeSprite("Pandora", "pandora_happy")}
~currentSpeaker = android
 I'll take that as a compliment.
~currentSpeaker = snob
 You seem to have a high level of sentience.
 {you} why is Pandora working here?
 Seems like a waste for such an advanced model.
 {ChangeSprite("Pandora", "pandora_suggestive")}
 ~currentSpeaker = android
 Oh stop it.
 {ChangeSprite("Lavender", "lavender_angry")}
~currentSpeaker = snob
 Stop looking at me like that. That wasn't intended to be a compliment. Just an observation.
 {ChangeSprite("Pandora", "pandora_mean")}
~currentSpeaker = you
 I think Ada got her from her brother who died. 
 He was in the field of IOI development and he sort of ended up getting Pandora as part of his work.
 Is that right?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 Actually I’d rather not talk about this.
~currentSpeaker = you
 Oh, sorry.
~currentSpeaker = android
 My father used to tell me stories. 
 I was reading one of his favourite books just now.
 It always makes me think of him...
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_sad")}
 Sorry for your loss.
~currentSpeaker = snob
...
~currentSpeaker = you
...
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_normal")}
 My parents have an IOI maid who cleans up. She doesn’t really say very much. But she’s very good at picking up socks.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 I suppose I’m better for conversation then.
~currentSpeaker = snob
 You are somewhat better.
 May I ask, what were you developed for?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Developed for?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 Every IOI is developed with a purpose, right?
~currentSpeaker = android
 What were you developed for?
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 I'm a human. I wasn't created for anything. I just happen to be a fashion genius. But none of that is by design.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 I was a therapy IOI.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_thinking")}
 That explains the intelligence. Anything medical is on the highest level of intelligence. 
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 That would make sense.
~currentSpeaker = you
 I think that’s enough questions for now.
 {ChangeSprite("Pandora", "pandora_normal")}
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_mean")}
 Hmm, I haven’t really been satisfied. 
~currentSpeaker = you
 Remember to come to the creative writing session tomorrow. Bring Tali too.
~currentSpeaker = you
 You too Kent.
~currentSpeaker = you
 I haven’t forgotten about you.
~currentSpeaker = comic
 Ugh.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_happy")}
 Well bye then.
~currentSpeaker = you
 Bye Lavender.
~currentSpeaker = comic
 Bye Lavender. See you tomorrow.
~currentSpeaker = snob
{ChangeSprite("Lavender", "lavender_angry")}
 ...
~characters -= lavender
~currentSpeaker = you
 Hey Pan, are you OK?
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_pensive")}
 Of course, why wouldn’t I be OK?
~currentSpeaker = you
 Well…no worries. I’m just glad you’re alright. 
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Sometimes we must talk about difficult things.
~characters += kent
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_normal")}
 Hey girls. You sure were chatting a lot with our local sweet lolita serial killer.
~currentSpeaker = you
 I think maybe she’s growing on me.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_amused")}
 Stockholm syndrome really is kicking in.
~currentSpeaker = you
 I don’t really know what to make of her anymore.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_side_serious")}
 Goodnight, I have to go home before my boyfriend dies of loneliness. 
 Or whatever disaster is going around the city today.
~currentSpeaker = you
 I heard it’s the pollution. Beware of the pollution.
~currentSpeaker = comic
{ChangeSprite("Kent", "kent_sad")}
 What are you talking about? The pollution is EVERYWHERE.
~characters -= kent
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_sad")}
 He didn’t share his comic with us.
~currentSpeaker = you
 That sucks. Wait, he was working on a comic? Aw I would have liked to see that.
~currentSpeaker = android
{ChangeSprite("Pandora", "pandora_normal")}
 Oh well.
~currentSpeaker = android
 Let’s do inventory.
->day_5_inventory
==day_5_inventory==
~music = "shop"
->goto_shop->
->read_check->
->end_day_5
==end_day_5==
->go_to_day_6
==go_to_day_6==
~currentSpeaker = you 
~characters+=pandora
~currentSpeaker = android 
I'll sign you out for the day.
~currentSpeaker = you 
*[Yes (save)]
{SaveStory()}
Thanks {android}!
*[No (don't save)] 
I can do it myself
-See you tomorrow, bye!
¬
~scene = "Night"
~music = "night theme"
~sfx = "rain"
{snappedOut=="no": ->night_05_F->|->night_05->}
¬
~scene= "ShopFront"
~music="An average day"
~sfx = "rain"
18th December, Saturday
~scene= "GenericScene"
~day+=1
->day_6